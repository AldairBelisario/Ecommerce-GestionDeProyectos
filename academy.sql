-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2026 a las 04:16:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `rol_admin` text DEFAULT NULL,
  `permissions_admin` text DEFAULT NULL,
  `email_admin` text DEFAULT NULL,
  `password_admin` text DEFAULT NULL,
  `token_admin` text DEFAULT NULL,
  `token_exp_admin` text DEFAULT NULL,
  `status_admin` int(11) DEFAULT 1,
  `title_admin` text DEFAULT NULL,
  `symbol_admin` text DEFAULT NULL,
  `font_admin` text DEFAULT NULL,
  `color_admin` text DEFAULT NULL,
  `back_admin` text DEFAULT NULL,
  `scode_admin` text DEFAULT NULL,
  `chatgpt_admin` text DEFAULT NULL,
  `date_created_admin` date DEFAULT NULL,
  `date_updated_admin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `rol_admin`, `permissions_admin`, `email_admin`, `password_admin`, `token_admin`, `token_exp_admin`, `status_admin`, `title_admin`, `symbol_admin`, `font_admin`, `color_admin`, `back_admin`, `scode_admin`, `chatgpt_admin`, `date_created_admin`, `date_updated_admin`) VALUES
(1, 'superadmin', '{\"todo\":\"on\"}', 'superadmin@academy.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NzA5OTQ3ODUsImV4cCI6MTc3MTA4MTE4NSwiZGF0YSI6eyJpZCI6MSwiZW1haWwiOiJzdXBlcmFkbWluQGFjYWRlbXkuY29tIn19.UJx-0zLJvmULuNMXncbmAhri5ItJb8u3N1trRW9iwkQ', '1771081185', 1, 'Academy', '<i class=\"bi bi-mortarboard-fill\"></i>', '', '#00704f', 'http://localhost/academia/cms/views/assets/files/696fa9413fb0745.jpg', NULL, NULL, '2026-01-20', '2026-02-13 14:59:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attachments`
--

CREATE TABLE `attachments` (
  `id_attachment` int(11) NOT NULL,
  `title_attachment` text DEFAULT NULL,
  `id_lection_attachment` int(11) DEFAULT 0,
  `id_course_attachment` int(11) DEFAULT 0,
  `file_attachment` text DEFAULT NULL,
  `link_attachment` text DEFAULT NULL,
  `id_instructor_attachment` int(11) DEFAULT 0,
  `status_attachment` int(11) DEFAULT 1,
  `date_created_attachment` date DEFAULT NULL,
  `date_updated_attachment` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `attachments`
--

INSERT INTO `attachments` (`id_attachment`, `title_attachment`, `id_lection_attachment`, `id_course_attachment`, `file_attachment`, `link_attachment`, `id_instructor_attachment`, `status_attachment`, `date_created_attachment`, `date_updated_attachment`) VALUES
(1, 'Material+de+Apoyo', 1, 1, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F6971460ea0a182.zip', '', 1, 1, '2026-01-21', '2026-01-21 21:33:28'),
(2, 'Link+de+Apoyo', 1, 1, '', 'https%3A%2F%2Ftutorialesatualcance.com%2Fhosting%2Fsiteground', 1, 1, '2026-01-21', '2026-01-21 21:34:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `title_category` text DEFAULT NULL,
  `url_category` text DEFAULT NULL,
  `img_category` text DEFAULT NULL,
  `icon_category` longtext DEFAULT NULL,
  `status_category` int(11) DEFAULT 1,
  `date_created_category` date DEFAULT NULL,
  `date_updated_category` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `title_category`, `url_category`, `img_category`, `icon_category`, `status_category`, `date_created_category`, `date_updated_category`) VALUES
(1, 'Web+Design', 'web-design', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F6971003f5e0bd11.jpg', '%3Ci+class%3D%22fas+fa-desktop%22%3E%3C%2Fi%3E', 1, '2026-01-21', '2026-01-21 16:35:35'),
(2, 'Graphic Design', 'graphic-design', 'http://localhost/academia/cms/views/assets/files/697100876e66023.jpg', '<i class=\"fas fa-pencil-alt\"></i>', 1, '2026-01-21', '2026-01-21 16:36:26'),
(3, 'User+Experience', 'user-experience', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697100a356fb851.jpg', '%3Ci+class%3D%22fas+fa-male%22%3E%3C%2Fi%3E', 1, '2026-01-21', '2026-01-21 16:37:01'),
(4, 'Interior+Design', 'interior-design', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697100c6f1e6626.jpg', '%3Ci+class%3D%22fas+fa-magic%22%3E%3C%2Fi%3E', 1, '2026-01-21', '2026-01-21 16:37:36'),
(5, '3D+and+Animation', '3d-and-animation', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697100e8727370.jpg', '%3Ci+class%3D%22fas+fa-cube%22%3E%3C%2Fi%3E', 1, '2026-01-21', '2026-01-21 16:38:10'),
(6, 'Fashion', 'fashion', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F69710109686c233.jpg', '%3Ci+class%3D%22fas+fa-user-secret%22%3E%3C%2Fi%3E', 1, '2026-01-21', '2026-01-21 16:38:43'),
(7, 'Frontend+Development', 'frontend-development', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F6971012a225d76.jpg', '%3Ci+class%3D%22fab+fa-500px%22%3E%3C%2Fi%3E', 1, '2026-01-21', '2026-01-21 16:39:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `columns`
--

CREATE TABLE `columns` (
  `id_column` int(11) NOT NULL,
  `id_module_column` int(11) DEFAULT 0,
  `title_column` text DEFAULT NULL,
  `alias_column` text DEFAULT NULL,
  `type_column` text DEFAULT NULL,
  `matrix_column` text DEFAULT NULL,
  `visible_column` int(11) DEFAULT 1,
  `order_column` int(11) NOT NULL DEFAULT 0,
  `date_created_column` date DEFAULT NULL,
  `date_updated_column` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `columns`
--

INSERT INTO `columns` (`id_column`, `id_module_column`, `title_column`, `alias_column`, `type_column`, `matrix_column`, `visible_column`, `order_column`, `date_created_column`, `date_updated_column`) VALUES
(1, 2, 'rol_admin', 'rol', 'select', 'superadmin,admin,editor', 1, 0, '2026-01-20', '2026-01-20 15:33:18'),
(2, 2, 'permissions_admin', 'permisos', 'object', '', 1, 0, '2026-01-20', '2026-01-20 15:33:18'),
(3, 2, 'email_admin', 'email', 'email', '', 1, 0, '2026-01-20', '2026-01-20 15:33:18'),
(4, 2, 'password_admin', 'pass', 'password', '', 0, 0, '2026-01-20', '2026-01-20 15:33:18'),
(5, 2, 'token_admin', 'token', 'text', '', 0, 0, '2026-01-20', '2026-01-20 15:33:18'),
(6, 2, 'token_exp_admin', 'expiración', 'text', '', 0, 0, '2026-01-20', '2026-01-20 15:33:18'),
(7, 2, 'status_admin', 'estado', 'boolean', '', 1, 0, '2026-01-20', '2026-01-20 15:33:18'),
(8, 2, 'title_admin', 'título', 'text', '', 0, 0, '2026-01-20', '2026-01-20 15:33:18'),
(9, 2, 'symbol_admin', 'simbolo', 'text', '', 0, 0, '2026-01-20', '2026-01-20 15:33:19'),
(10, 2, 'font_admin', 'tipografía', 'text', '', 0, 0, '2026-01-20', '2026-01-20 15:33:19'),
(11, 2, 'color_admin', 'color', 'text', '', 0, 0, '2026-01-20', '2026-01-20 15:33:19'),
(12, 2, 'back_admin', 'fondo', 'text', '', 0, 0, '2026-01-20', '2026-01-20 15:33:19'),
(32, 7, 'name_instructor', 'Nombre', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 16:05:31'),
(33, 7, 'email_instructor', 'Email', 'email', NULL, 1, 0, '2026-01-21', '2026-01-21 16:05:31'),
(34, 7, 'picture_instructor', 'Foto', 'image', NULL, 1, 0, '2026-01-21', '2026-01-21 16:05:32'),
(35, 7, 'description_instructor', 'Descripción', 'code', NULL, 0, 0, '2026-01-21', '2026-01-21 16:11:39'),
(36, 7, 'status_instructor', 'Estado', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 16:05:32'),
(37, 9, 'title_category', 'Categoría', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 16:34:28'),
(38, 9, 'url_category', 'Url', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 16:34:28'),
(39, 9, 'img_category', 'Imagen', 'image', NULL, 1, 0, '2026-01-21', '2026-01-21 16:34:28'),
(40, 9, 'icon_category', 'Icono', 'code', NULL, 1, 0, '2026-01-21', '2026-01-21 16:34:28'),
(41, 9, 'status_category', 'Estado', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 16:34:29'),
(42, 11, 'title_subcategory', 'Subcategoría', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 16:48:58'),
(43, 11, 'id_category_subcategory', 'Categoría', 'relations', 'categories', 1, 0, '2026-01-21', '2026-01-21 16:49:32'),
(44, 11, 'url_subcategory', 'Url', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 16:48:59'),
(45, 11, 'status_subcategory', 'Estado', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 16:48:59'),
(46, 14, 'title_course', 'Curso', 'text', NULL, 1, 1, '2026-01-21', '2026-01-30 15:26:13'),
(47, 14, 'subtitle_course', 'Subtítulo', 'textarea', NULL, 1, 2, '2026-01-21', '2026-01-30 15:26:15'),
(48, 14, 'id_subcategory_course', 'Subcategoría', 'relations', 'subcategories', 1, 5, '2026-01-21', '2026-01-30 15:26:38'),
(49, 14, 'img_course', 'Portada', 'image', NULL, 1, 6, '2026-01-21', '2026-01-30 15:26:40'),
(50, 14, 'video_course', 'Video', 'video', NULL, 1, 7, '2026-01-21', '2026-01-30 15:26:42'),
(51, 14, 'outcomes_course', 'Resultados', 'object', NULL, 0, 8, '2026-01-21', '2026-01-30 15:26:44'),
(52, 14, 'requirements_course', 'Requerimientos', 'array', NULL, 0, 9, '2026-01-21', '2026-01-30 15:26:46'),
(53, 14, 'description_course', 'Descripción', 'code', NULL, 0, 10, '2026-01-21', '2026-01-30 15:26:49'),
(54, 14, 'price_course', 'Precio', 'money', NULL, 1, 11, '2026-01-21', '2026-01-30 15:26:52'),
(55, 14, 'reviews_course', 'Reseñas', 'json', NULL, 0, 12, '2026-01-21', '2026-01-30 15:26:55'),
(56, 14, 'url_course', 'Url', 'text', NULL, 1, 3, '2026-01-21', '2026-01-30 15:26:31'),
(57, 14, 'status_course', 'Estado', 'boolean', NULL, 1, 16, '2026-01-21', '2026-01-30 18:32:06'),
(58, 14, 'id_instructor_course', 'Instructor', 'relations', 'instructors', 1, 13, '2026-01-21', '2026-01-30 15:28:34'),
(59, 16, 'title_section', 'Sección', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 20:51:32'),
(60, 16, 'id_course_section', 'Curso', 'relations', 'courses', 1, 0, '2026-01-21', '2026-01-21 20:52:01'),
(61, 16, 'id_instructor_section', 'Instructor', 'relations', 'instructors', 1, 0, '2026-01-21', '2026-01-21 20:52:07'),
(62, 16, 'status_section', 'Estado', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 20:51:32'),
(63, 16, 'order_section', 'Orden', 'int', NULL, 1, 0, '2026-01-21', '2026-01-21 20:52:53'),
(64, 18, 'title_lection', 'Lección', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 21:08:09'),
(65, 18, 'id_section_lection', 'Sección', 'relations', 'sections', 1, 0, '2026-01-21', '2026-01-21 21:08:31'),
(66, 18, 'id_course_lection', 'Curso', 'relations', 'courses', 1, 0, '2026-01-21', '2026-01-21 21:08:39'),
(67, 18, 'video_lection', 'Video', 'video', NULL, 1, 0, '2026-01-21', '2026-01-21 21:08:10'),
(68, 18, 'html_lection', 'Html', 'code', NULL, 1, 0, '2026-01-21', '2026-01-21 21:08:10'),
(69, 18, 'duration_lection', 'Duración', 'time', NULL, 1, 0, '2026-01-21', '2026-01-21 21:08:10'),
(70, 18, 'paid_lection', 'Lección Paga', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 21:08:11'),
(71, 18, 'id_instructor_lection', 'Instructor', 'relations', 'instructors', 1, 0, '2026-01-21', '2026-01-21 21:13:38'),
(72, 18, 'status_lection', 'Estado', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 21:08:11'),
(73, 20, 'title_attachment', 'Adjunto', 'text', NULL, 1, 0, '2026-01-21', '2026-02-14 00:32:19'),
(74, 20, 'id_lection_attachment', 'Lección', 'relations', 'lections', 1, 0, '2026-01-21', '2026-01-21 21:32:23'),
(75, 20, 'id_course_attachment', 'Curso', 'relations', 'courses', 1, 0, '2026-01-21', '2026-01-21 21:32:29'),
(76, 20, 'file_attachment', 'Archivo', 'file', NULL, 1, 0, '2026-01-21', '2026-01-21 21:32:03'),
(77, 20, 'link_attachment', 'Link', 'link', NULL, 1, 0, '2026-01-21', '2026-01-21 21:32:04'),
(78, 20, 'id_instructor_attachment', 'Instructor', 'relations', 'instructors', 1, 0, '2026-01-21', '2026-01-21 21:33:18'),
(79, 20, 'status_attachment', 'Estado', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 21:32:04'),
(80, 22, 'name_student', 'Nombre', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 21:43:40'),
(81, 22, 'email_student', 'Email', 'email', NULL, 1, 0, '2026-01-21', '2026-01-21 21:43:41'),
(82, 22, 'password_student', 'Contraseña', 'password', NULL, 1, 0, '2026-01-21', '2026-01-21 21:43:41'),
(83, 22, 'platform_student', 'Plataforma', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 21:43:41'),
(84, 22, 'lectures_student', 'Lecturas', 'json', NULL, 1, 0, '2026-01-21', '2026-01-21 21:43:41'),
(85, 22, 'status_student', 'Estado', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 21:43:42'),
(86, 24, 'title_question', 'Pregunta', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 21:45:54'),
(87, 24, 'content_question', 'Contenido', 'code', NULL, 1, 0, '2026-01-21', '2026-01-21 21:45:54'),
(88, 24, 'answer_question', 'Respuesta', 'code', NULL, 1, 0, '2026-01-21', '2026-01-21 21:45:55'),
(89, 24, 'id_course_question', 'Curso', 'relations', NULL, 1, 0, '2026-01-21', '2026-01-21 21:45:55'),
(90, 24, 'id_lection_question', 'Lección', 'relations', NULL, 1, 0, '2026-01-21', '2026-01-21 21:45:55'),
(91, 24, 'id_student_question', 'Estudiante', 'relations', NULL, 1, 0, '2026-01-21', '2026-01-21 21:45:55'),
(92, 24, 'id_instructor_question', 'Instructor', 'relations', NULL, 1, 0, '2026-01-21', '2026-01-21 21:45:56'),
(93, 24, 'status_question', 'Estado', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 21:45:56'),
(94, 26, 'title_coupon', 'Cupón', 'text', NULL, 1, 0, '2026-01-21', '2026-01-21 21:48:45'),
(96, 26, 'discount_coupon', 'Descuento', 'double', NULL, 1, 0, '2026-01-21', '2026-01-21 21:48:46'),
(97, 26, 'from_coupon', 'Inicio', 'date', NULL, 1, 0, '2026-01-21', '2026-01-30 15:31:15'),
(98, 26, 'until_coupon', 'Final', 'date', NULL, 1, 0, '2026-01-21', '2026-01-30 15:31:16'),
(100, 26, 'status_coupon', 'Estado', 'boolean', NULL, 1, 0, '2026-01-21', '2026-01-21 21:48:47'),
(101, 28, 'price_sale', 'Precio', 'money', NULL, 1, 0, '2026-01-21', '2026-01-21 21:50:52'),
(102, 28, 'id_student_sale', 'Estudiante', 'relations', 'students', 1, 0, '2026-01-21', '2026-02-13 20:23:39'),
(103, 28, 'id_course_sale', 'Curso', 'relations', 'courses', 1, 0, '2026-01-21', '2026-02-13 20:23:43'),
(104, 28, 'id_instructor_sale', 'Instructor', 'relations', 'instructors', 1, 0, '2026-01-21', '2026-02-13 20:23:47'),
(105, 14, 'id_category_course', 'Categoría', 'relations', 'categories', 1, 4, '2026-01-30', '2026-01-30 15:26:34'),
(106, 14, 'id_coupon_course', 'Cupón', 'relations', 'coupons', 1, 14, '2026-01-30', '2026-01-30 15:33:05'),
(107, 14, 'score_course', 'Calificación', 'int', NULL, 1, 15, '2026-01-30', '2026-01-30 18:32:01'),
(108, 22, 'token_student', 'Token', 'text', NULL, 0, 0, '2026-02-12', '2026-02-13 22:06:47'),
(109, 22, 'token_exp_student', 'Expiración', 'text', NULL, 0, 0, '2026-02-12', '2026-02-13 22:06:48'),
(110, 28, 'status_sale', 'Estado', 'select', 'PAID,PENDING', 1, 0, '2026-02-12', '2026-02-13 20:23:52'),
(111, 28, 'id_order_sale', 'Orden', 'relations', 'orders', 1, 0, '2026-02-12', '2026-02-13 20:23:58'),
(112, 30, 'reference_order', 'Referencia', 'text', NULL, 1, 0, '2026-02-12', '2026-02-12 20:28:39'),
(113, 30, 'id_student_order', 'Estudiante', 'relations', 'students', 1, 0, '2026-02-12', '2026-02-13 20:23:14'),
(114, 30, 'total_order', 'Total', 'money', NULL, 1, 0, '2026-02-12', '2026-02-12 20:28:39'),
(115, 30, 'id_pay_order', 'Id Pago', 'text', NULL, 1, 0, '2026-02-12', '2026-02-12 20:28:40'),
(116, 30, 'status_order', 'Estado', 'select', 'PAID,PENDING', 1, 0, '2026-02-12', '2026-02-13 20:23:06'),
(117, 30, 'date_order', 'Fecha', 'datetime', NULL, 1, 0, '2026-02-12', '2026-02-12 20:28:40'),
(118, 22, 'picture_student', 'Foto', 'image', NULL, 1, 0, '2026-02-13', '2026-02-13 22:06:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupons`
--

CREATE TABLE `coupons` (
  `id_coupon` int(11) NOT NULL,
  `title_coupon` text DEFAULT NULL,
  `discount_coupon` double DEFAULT 0,
  `from_coupon` date DEFAULT NULL,
  `until_coupon` date DEFAULT NULL,
  `status_coupon` int(11) DEFAULT 1,
  `date_created_coupon` date DEFAULT NULL,
  `date_updated_coupon` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coupons`
--

INSERT INTO `coupons` (`id_coupon`, `title_coupon`, `discount_coupon`, `from_coupon`, `until_coupon`, `status_coupon`, `date_created_coupon`, `date_updated_coupon`) VALUES
(1, '2026', 9.99, '2026-01-01', '2026-12-31', 1, '2026-01-30', '2026-01-30 15:31:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id_course` int(11) NOT NULL,
  `title_course` text DEFAULT NULL,
  `subtitle_course` text DEFAULT NULL,
  `id_subcategory_course` int(11) DEFAULT 0,
  `img_course` text DEFAULT NULL,
  `video_course` text DEFAULT NULL,
  `outcomes_course` text DEFAULT '{}',
  `requirements_course` text DEFAULT NULL,
  `description_course` longtext DEFAULT NULL,
  `price_course` double DEFAULT 0,
  `reviews_course` text DEFAULT '[]',
  `url_course` text DEFAULT NULL,
  `status_course` int(11) DEFAULT 1,
  `score_course` int(11) DEFAULT 0,
  `id_coupon_course` int(11) DEFAULT 0,
  `id_instructor_course` int(11) DEFAULT 0,
  `id_category_course` int(11) DEFAULT 0,
  `date_created_course` date DEFAULT NULL,
  `date_updated_course` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id_course`, `title_course`, `subtitle_course`, `id_subcategory_course`, `img_course`, `video_course`, `outcomes_course`, `requirements_course`, `description_course`, `price_course`, `reviews_course`, `url_course`, `status_course`, `score_course`, `id_coupon_course`, `id_instructor_course`, `id_category_course`, `date_created_course`, `date_updated_course`) VALUES
(1, 'Build Websites from Scratch with HTML & CSS', 'Learn Web Development Essentials and Become a Web Developer From Scratch in this Complete HTML & CSS Beginner\'s Course', 4, 'http://localhost/academia/cms/views/assets/files/6971303d656e757.jpg', 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '{\"1\":\"By the end of this course, you will have a basic & thorough understanding of HTML & CSS\",\"2\":\"Upon completion, you will have coded a handful of useful HTML & CSS examples\",\"3\":\"In the last section of this course, you focus on building a beautiful, semantic, HTML & CSS web page\",\"4\":\"By the end of this course, you will have impressed yourself, and will be able to hit the ground running with your newly acquired skillset\",\"5\":\"Start building beautiful websites\",\"6\":\"Build a portfolio website, so you can highlight your best web work\"}', 'Internet Connection,Willingness to Learn,A Text Editor (Free Resources Provided)', '<p>HTML and CSS are the two most important languages for a new web developer to learn. They are also the easiest. If you’ve always wanted to build webpages, but were intimidated by the code, this course will help you learn your first two languages quickly and easily.</p>\r\n\r\n  <p>Taking a step-by-step approach, this course will have you learning by doing, building several mini-websites from scratch.</p>\r\n\r\n\r\n<h4>Learn the Two Most Important Languages to Web Design Quickly and Easily.</h4>\r\n\r\n\r\n  <ul>\r\n    <li>HTML Foundations</li>\r\n    <li>Parent/Child Structure</li>\r\n    <li>CSS Foundations</li>\r\n    <li>ID Selectors</li>\r\n    <li>Coding and Styling</li>\r\n    <li>What Web Pages are Built Of</li>\r\n  </ul>\r\n\r\n  <p>\r\n    Every webpage that you see on the net is built using a language or code. There are many different programming languages that can make your website do various things, but the two most important to learn are HTML and CSS. In fact, even people who plan on allowing someone else to build their website should have a basic grasp of both languages. This way you can tweak things behind the scenes, or change some of your formatting without having to always rely on others.\r\n  </p>\r\n\r\n\r\n<h4>Contents and Overview</h4>\r\n\r\n\r\n  <p>\r\n    This course of more than 77 lectures and 8 hours of content gives you a basic, yet thorough understanding of both HTML and CSS. The course focuses on having you begin writing code right away so you can learn through doing, and build your own completely functional HTML and CSS webpage at the end.\r\n  </p>\r\n\r\n  <p>\r\n    You’ll begin by learning what HTML and CSS are, so you can get an understanding of what it is that they do. During the course you’ll build several mini-websites that take what it is that you’ve learned and apply it to real world exercises to help cement the skills.\r\n  </p>\r\n\r\n  <p>\r\n    Everyone from aspiring web designers to bloggers, programmers to business owners can benefit from learning some HTML and CSS. Learn to begin building your own dynamic webpages or manage the page that you already have. If you plan on becoming a web programmer or a web designer yourself, HTML and CSS are the first two languages you’ll need to succeed. In fact HTML is required for anyone that wants to get into web development from any angle. Learning it simultaneously with CSS allows you to hit the ground running with page design.\r\n  </p>', 19.99, '[{\"name\":\"Signe Thompson\",\"image\":\"http://localhost/academia/cms/views/assets/files/697132cd0197253.jpg\",\"starts\":\"5\",\"review\":\"From the outset, the course structure impressed me with its thoughtful organization. Each module builds seamlessly upon the last, creating a logical and comprehensive learning journey. The content is delivered in a way that is both engaging and accessible, making complex concepts easy to grasp.\",\"date\":\"26-Nov-2025\"}]', 'build-websites-from-scratch-with-html-and-css', 1, 5, 1, 1, 1, '2026-01-21', '2026-01-30 18:32:30'),
(2, 'WordPress Theme Development with Bootstrap', 'Learn how to confidently develop custom & profitable Responsive WordPress Themes and Websites with no prior experience.', 1, 'http://localhost/academia/cms/views/assets/files/697cdbe197bc913.jpg', 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '{\"1\":\"By the end of this course, you will have a basic & thorough understanding of HTML & CSS\",\"2\":\"Upon completion, you will have coded a handful of useful HTML & CSS examples\",\"3\":\"In the last section of this course, you focus on building a beautiful, semantic, HTML & CSS web page\",\"4\":\"By the end of this course, you will have impressed yourself, and will be able to hit the ground running with your newly acquired skillset\",\"5\":\"Start building beautiful websites\",\"6\":\"Build a portfolio website, so you can highlight your best web work\"}', 'Internet Connection,Willingness to Learn,A Text Editor (Free Resources Provided)', '<p>HTML and CSS are the two most important languages for a new web developer to learn. They are also the easiest. If you’ve always wanted to build webpages, but were intimidated by the code, this course will help you learn your first two languages quickly and easily.</p>\r\n\r\n  <p>Taking a step-by-step approach, this course will have you learning by doing, building several mini-websites from scratch.</p>\r\n\r\n\r\n<h4>Learn the Two Most Important Languages to Web Design Quickly and Easily.</h4>\r\n\r\n\r\n  <ul>\r\n    <li>HTML Foundations</li>\r\n    <li>Parent/Child Structure</li>\r\n    <li>CSS Foundations</li>\r\n    <li>ID Selectors</li>\r\n    <li>Coding and Styling</li>\r\n    <li>What Web Pages are Built Of</li>\r\n  </ul>\r\n\r\n  <p>\r\n    Every webpage that you see on the net is built using a language or code. There are many different programming languages that can make your website do various things, but the two most important to learn are HTML and CSS. In fact, even people who plan on allowing someone else to build their website should have a basic grasp of both languages. This way you can tweak things behind the scenes, or change some of your formatting without having to always rely on others.\r\n  </p>\r\n\r\n\r\n<h4>Contents and Overview</h4>\r\n\r\n\r\n  <p>\r\n    This course of more than 77 lectures and 8 hours of content gives you a basic, yet thorough understanding of both HTML and CSS. The course focuses on having you begin writing code right away so you can learn through doing, and build your own completely functional HTML and CSS webpage at the end.\r\n  </p>\r\n\r\n  <p>\r\n    You’ll begin by learning what HTML and CSS are, so you can get an understanding of what it is that they do. During the course you’ll build several mini-websites that take what it is that you’ve learned and apply it to real world exercises to help cement the skills.\r\n  </p>\r\n\r\n  <p>\r\n    Everyone from aspiring web designers to bloggers, programmers to business owners can benefit from learning some HTML and CSS. Learn to begin building your own dynamic webpages or manage the page that you already have. If you plan on becoming a web programmer or a web designer yourself, HTML and CSS are the first two languages you’ll need to succeed. In fact HTML is required for anyone that wants to get into web development from any angle. Learning it simultaneously with CSS allows you to hit the ground running with page design.\r\n  </p>', 19.99, '[{\"name\":\"Signe Thompson\",\"image\":\"http://localhost/academia/cms/views/assets/files/697132cd0197253.jpg\",\"starts\":\"5\",\"review\":\"From the outset, the course structure impressed me with its thoughtful organization. Each module builds seamlessly upon the last, creating a logical and comprehensive learning journey. The content is delivered in a way that is both engaging and accessible, making complex concepts easy to grasp.\",\"date\":\"26-Nov-2025\"}]', 'wordpress-theme-development-with-bootstrap', 1, 5, 1, 1, 1, '2026-01-30', '2026-01-30 18:32:32'),
(3, 'Adobe Illustrator CC - Essentials Training Course', 'Learn Adobe Illustrator CC graphic design, logo design, and more with this in-depth, practical, easy-to-follow course!', 2, 'http://localhost/academia/cms/views/assets/files/697cdcccb245a8.jpg', 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '{\"1\":\"By the end of this course, you will have a basic & thorough understanding of HTML & CSS\",\"2\":\"Upon completion, you will have coded a handful of useful HTML & CSS examples\",\"3\":\"In the last section of this course, you focus on building a beautiful, semantic, HTML & CSS web page\",\"4\":\"By the end of this course, you will have impressed yourself, and will be able to hit the ground running with your newly acquired skillset\",\"5\":\"Start building beautiful websites\",\"6\":\"Build a portfolio website, so you can highlight your best web work\"}', 'Internet Connection,Willingness to Learn,A Text Editor (Free Resources Provided)', '<p>HTML and CSS are the two most important languages for a new web developer to learn. They are also the easiest. If you’ve always wanted to build webpages, but were intimidated by the code, this course will help you learn your first two languages quickly and easily.</p>\r\n\r\n  <p>Taking a step-by-step approach, this course will have you learning by doing, building several mini-websites from scratch.</p>\r\n\r\n\r\n<h4>Learn the Two Most Important Languages to Web Design Quickly and Easily.</h4>\r\n\r\n\r\n  <ul>\r\n    <li>HTML Foundations</li>\r\n    <li>Parent/Child Structure</li>\r\n    <li>CSS Foundations</li>\r\n    <li>ID Selectors</li>\r\n    <li>Coding and Styling</li>\r\n    <li>What Web Pages are Built Of</li>\r\n  </ul>\r\n\r\n  <p>\r\n    Every webpage that you see on the net is built using a language or code. There are many different programming languages that can make your website do various things, but the two most important to learn are HTML and CSS. In fact, even people who plan on allowing someone else to build their website should have a basic grasp of both languages. This way you can tweak things behind the scenes, or change some of your formatting without having to always rely on others.\r\n  </p>\r\n\r\n\r\n<h4>Contents and Overview</h4>\r\n\r\n\r\n  <p>\r\n    This course of more than 77 lectures and 8 hours of content gives you a basic, yet thorough understanding of both HTML and CSS. The course focuses on having you begin writing code right away so you can learn through doing, and build your own completely functional HTML and CSS webpage at the end.\r\n  </p>\r\n\r\n  <p>\r\n    You’ll begin by learning what HTML and CSS are, so you can get an understanding of what it is that they do. During the course you’ll build several mini-websites that take what it is that you’ve learned and apply it to real world exercises to help cement the skills.\r\n  </p>\r\n\r\n  <p>\r\n    Everyone from aspiring web designers to bloggers, programmers to business owners can benefit from learning some HTML and CSS. Learn to begin building your own dynamic webpages or manage the page that you already have. If you plan on becoming a web programmer or a web designer yourself, HTML and CSS are the first two languages you’ll need to succeed. In fact HTML is required for anyone that wants to get into web development from any angle. Learning it simultaneously with CSS allows you to hit the ground running with page design.\r\n  </p>', 0, '[{\"name\":\"Signe Thompson\",\"image\":\"http://localhost/academia/cms/views/assets/files/697132cd0197253.jpg\",\"starts\":\"5\",\"review\":\"From the outset, the course structure impressed me with its thoughtful organization. Each module builds seamlessly upon the last, creating a logical and comprehensive learning journey. The content is delivered in a way that is both engaging and accessible, making complex concepts easy to grasp.\",\"date\":\"26-Nov-2025\"}]', 'adobe-illustrator-cc-essentials-training-course', 1, 5, 1, 1, 1, '2026-01-30', '2026-01-31 16:56:27'),
(4, 'Scorm drawing course', 'SCORM, which stands for Shareable Content Object Reference Model, is a set of technical standards for eLearning software products.', 3, 'http://localhost/academia/cms/views/assets/files/697cdd257b89837.jpg', 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '{\"1\":\"By the end of this course, you will have a basic & thorough understanding of HTML & CSS\",\"2\":\"Upon completion, you will have coded a handful of useful HTML & CSS examples\",\"3\":\"In the last section of this course, you focus on building a beautiful, semantic, HTML & CSS web page\",\"4\":\"By the end of this course, you will have impressed yourself, and will be able to hit the ground running with your newly acquired skillset\",\"5\":\"Start building beautiful websites\",\"6\":\"Build a portfolio website, so you can highlight your best web work\"}', 'Internet Connection,Willingness to Learn,A Text Editor (Free Resources Provided)', '<p>HTML and CSS are the two most important languages for a new web developer to learn. They are also the easiest. If you’ve always wanted to build webpages, but were intimidated by the code, this course will help you learn your first two languages quickly and easily.</p>\r\n\r\n  <p>Taking a step-by-step approach, this course will have you learning by doing, building several mini-websites from scratch.</p>\r\n\r\n\r\n<h4>Learn the Two Most Important Languages to Web Design Quickly and Easily.</h4>\r\n\r\n\r\n  <ul>\r\n    <li>HTML Foundations</li>\r\n    <li>Parent/Child Structure</li>\r\n    <li>CSS Foundations</li>\r\n    <li>ID Selectors</li>\r\n    <li>Coding and Styling</li>\r\n    <li>What Web Pages are Built Of</li>\r\n  </ul>\r\n\r\n  <p>\r\n    Every webpage that you see on the net is built using a language or code. There are many different programming languages that can make your website do various things, but the two most important to learn are HTML and CSS. In fact, even people who plan on allowing someone else to build their website should have a basic grasp of both languages. This way you can tweak things behind the scenes, or change some of your formatting without having to always rely on others.\r\n  </p>\r\n\r\n\r\n<h4>Contents and Overview</h4>\r\n\r\n\r\n  <p>\r\n    This course of more than 77 lectures and 8 hours of content gives you a basic, yet thorough understanding of both HTML and CSS. The course focuses on having you begin writing code right away so you can learn through doing, and build your own completely functional HTML and CSS webpage at the end.\r\n  </p>\r\n\r\n  <p>\r\n    You’ll begin by learning what HTML and CSS are, so you can get an understanding of what it is that they do. During the course you’ll build several mini-websites that take what it is that you’ve learned and apply it to real world exercises to help cement the skills.\r\n  </p>\r\n\r\n  <p>\r\n    Everyone from aspiring web designers to bloggers, programmers to business owners can benefit from learning some HTML and CSS. Learn to begin building your own dynamic webpages or manage the page that you already have. If you plan on becoming a web programmer or a web designer yourself, HTML and CSS are the first two languages you’ll need to succeed. In fact HTML is required for anyone that wants to get into web development from any angle. Learning it simultaneously with CSS allows you to hit the ground running with page design.\r\n  </p>', 19.99, '[{\"name\":\"Signe Thompson\",\"image\":\"http://localhost/academia/cms/views/assets/files/697132cd0197253.jpg\",\"starts\":\"5\",\"review\":\"From the outset, the course structure impressed me with its thoughtful organization. Each module builds seamlessly upon the last, creating a logical and comprehensive learning journey. The content is delivered in a way that is both engaging and accessible, making complex concepts easy to grasp.\",\"date\":\"26-Nov-2025\"}]', 'scorm-drawing-course', 1, 4, 1, 1, 1, '2026-01-30', '2026-01-30 18:32:36'),
(5, 'Complete+Guitar+Lessons+System', 'Interior+Design+Color+Schemes+Made+Easy', 5, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697cdde9bc93753.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'complete-guitar-lessons-system', 1, 5, 1, 1, 2, '2026-01-30', '2026-01-30 18:32:39'),
(6, 'Complete+Blender+Creator%3A+Learn+3D+Modelling', 'Use+Blender+to+create+beautiful+3D+models+for+video+games%2C+3D+printing%2C+house+design+etc.+No+prior+knowledge+required.', 6, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697cde397b33313.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 0, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'complete-blender-creator-learn-3d-modelling', 1, 4, 1, 1, 2, '2026-01-30', '2026-01-31 16:56:31'),
(7, 'Basic+to+advanced+sewing+course+for+beginners', 'Building+A+Strong+Sewing+Foundation.+It+is+a+long-established+fact+that+a+reader+will+be+distracted+by+the+readable', 7, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697cde8620a2230.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'basic-to-advanced-sewing-course-for-beginners', 1, 4, 1, 1, 2, '2026-01-30', '2026-01-30 18:32:55'),
(8, 'After+Effects+CC+2024%3A+Complete+Course', 'Create+stunning+Motion+Graphics%2C+VFX+Visual+Effects+%26+VFX+Compositing+with+hands-on+tutorials+%26+50%2B+practice+projects.', 8, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697cdf293109a13.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'after-effects-cc-2024-complete-course', 1, 5, 1, 1, 2, '2026-01-30', '2026-01-30 18:32:57'),
(9, 'How to Use Lighting Design to Transform your Home', 'Learn How to Use Lighting in your Interior Design Like a Pro', 9, 'http://localhost/academia/cms/views/assets/files/697cdf9cd83338.jpg', 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '{\"1\":\"By the end of this course, you will have a basic & thorough understanding of HTML & CSS\",\"2\":\"Upon completion, you will have coded a handful of useful HTML & CSS examples\",\"3\":\"In the last section of this course, you focus on building a beautiful, semantic, HTML & CSS web page\",\"4\":\"By the end of this course, you will have impressed yourself, and will be able to hit the ground running with your newly acquired skillset\",\"5\":\"Start building beautiful websites\",\"6\":\"Build a portfolio website, so you can highlight your best web work\"}', 'Internet Connection,Willingness to Learn,A Text Editor (Free Resources Provided)', '<p>HTML and CSS are the two most important languages for a new web developer to learn. They are also the easiest. If you’ve always wanted to build webpages, but were intimidated by the code, this course will help you learn your first two languages quickly and easily.</p>\r\n\r\n  <p>Taking a step-by-step approach, this course will have you learning by doing, building several mini-websites from scratch.</p>\r\n\r\n\r\n<h4>Learn the Two Most Important Languages to Web Design Quickly and Easily.</h4>\r\n\r\n\r\n  <ul>\r\n    <li>HTML Foundations</li>\r\n    <li>Parent/Child Structure</li>\r\n    <li>CSS Foundations</li>\r\n    <li>ID Selectors</li>\r\n    <li>Coding and Styling</li>\r\n    <li>What Web Pages are Built Of</li>\r\n  </ul>\r\n\r\n  <p>\r\n    Every webpage that you see on the net is built using a language or code. There are many different programming languages that can make your website do various things, but the two most important to learn are HTML and CSS. In fact, even people who plan on allowing someone else to build their website should have a basic grasp of both languages. This way you can tweak things behind the scenes, or change some of your formatting without having to always rely on others.\r\n  </p>\r\n\r\n\r\n<h4>Contents and Overview</h4>\r\n\r\n\r\n  <p>\r\n    This course of more than 77 lectures and 8 hours of content gives you a basic, yet thorough understanding of both HTML and CSS. The course focuses on having you begin writing code right away so you can learn through doing, and build your own completely functional HTML and CSS webpage at the end.\r\n  </p>\r\n\r\n  <p>\r\n    You’ll begin by learning what HTML and CSS are, so you can get an understanding of what it is that they do. During the course you’ll build several mini-websites that take what it is that you’ve learned and apply it to real world exercises to help cement the skills.\r\n  </p>\r\n\r\n  <p>\r\n    Everyone from aspiring web designers to bloggers, programmers to business owners can benefit from learning some HTML and CSS. Learn to begin building your own dynamic webpages or manage the page that you already have. If you plan on becoming a web programmer or a web designer yourself, HTML and CSS are the first two languages you’ll need to succeed. In fact HTML is required for anyone that wants to get into web development from any angle. Learning it simultaneously with CSS allows you to hit the ground running with page design.\r\n  </p>', 0, '[{\"name\":\"Signe Thompson\",\"image\":\"http://localhost/academia/cms/views/assets/files/697132cd0197253.jpg\",\"starts\":\"5\",\"review\":\"From the outset, the course structure impressed me with its thoughtful organization. Each module builds seamlessly upon the last, creating a logical and comprehensive learning journey. The content is delivered in a way that is both engaging and accessible, making complex concepts easy to grasp.\",\"date\":\"26-Nov-2025\"}]', 'how-to-use-lighting-design-to-transform-your-home', 1, 5, 1, 1, 2, '2026-01-30', '2026-01-31 16:56:35'),
(10, 'The+Complete+Graphic+Design+Theory', 'Today+I+am+starting+part+1+of+an+ongoing+series+I+am+going+to+call+%27Step+Up+Your+Filmammaking%27.+Today%27s+topic+is+the+importance+of+B-Roll.', 10, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce0165df4910.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'the-complete-graphic-design-theory', 1, 5, 1, 1, 3, '2026-01-30', '2026-01-30 18:33:01'),
(11, 'Introduction+and+Learn+bootstrap', 'Vue+%28pronounced+%2Fvju%CB%90%2F%2C+like+view%29+is+a+progressive+framework+for+building+user+interfaces.', 11, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce074c7b0c44.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'introduction-and-learn-bootstrap', 1, 4, 1, 1, 3, '2026-01-30', '2026-01-30 18:33:03');
INSERT INTO `courses` (`id_course`, `title_course`, `subtitle_course`, `id_subcategory_course`, `img_course`, `video_course`, `outcomes_course`, `requirements_course`, `description_course`, `price_course`, `reviews_course`, `url_course`, `status_course`, `score_course`, `id_coupon_course`, `id_instructor_course`, `id_category_course`, `date_created_course`, `date_updated_course`) VALUES
(12, 'Javascript+Understanding+the+Weird+Parts+-+The+First+3.5+Hours', 'This+is+an+advanced+Javascript+course+for+everyone%2C+giving+a+deep+understanding+of+the+language+by+understanding+how+it+works+under+the+hood.', 12, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce0cd16d2b13.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'javascript-understanding-the-weird-parts-the-first-3-5-hours', 1, 5, 1, 1, 3, '2026-01-30', '2026-01-30 18:33:06'),
(13, 'How+to+shoot+cinematic+tech+videos+like+Apple', 'In+this+video+tutorial+learn+how+to+shoot+cinematic+product+videos+shots+like+you+see+in+all+the+big+budget+commercials.', 13, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce3662f49318.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'how-to-shoot-cinematic-tech-videos-like-apple', 1, 5, 1, 1, 3, '2026-01-30', '2026-01-30 18:33:07'),
(14, 'The+Complete+Python+Bootcamp+From+Zero+to+Hero', 'Supreme+Photoshop+Training+-+Become+an+expert+in+Photoshop+with+no+experience+or+prior+knowledge+-+Anyone+can+do+it', 14, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce4358bd2445.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'the-complete-python-bootcamp-from-zero-to-hero', 1, 5, 1, 1, 3, '2026-01-30', '2026-01-30 18:33:10'),
(15, 'DESIGN+RULES%3A+Principles+%2B+Practices+for+Great+UI+Design', 'Getting+Started+is+the+perfect+course+for+you.+In+this+course%2C+you%E2%80%99ll+learn+how+to+build+apps+with+Flutter%2C+the+new+mobile+platform+backed+by+Google.', 15, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce4a0652f832.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'design-rules-principles-practices-for-great-ui-design', 1, 4, 1, 1, 3, '2026-01-30', '2026-01-30 18:33:13'),
(16, 'The+Data+Science+Course%3A+Complete+Data+Science', 'The+horse+is+a+large%2C+strong%2C+and+elegant+mammal+with+a+long%2C+flowing+mane+and+tail.+It+is+known+for+its+speed', 15, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce5468218718.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'the-data-science-course-complete-data-science', 1, 5, 1, 1, 3, '2026-01-30', '2026-01-30 19:03:18'),
(17, 'The+Data+Science+Course%3A+Complete+Data+Science', 'The+horse+is+a+large%2C+strong%2C+and+elegant+mammal+with+a+long%2C+flowing+mane+and+tail.+It+is+known+for+its+speed', 1, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce5468218718.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'the-data-science-course-complete-data-science', 1, 5, 1, 1, 1, '2026-01-30', '2026-01-30 19:03:18'),
(18, 'The+Complete+Graphic+Design+Theory', 'Today+I+am+starting+part+1+of+an+ongoing+series+I+am+going+to+call+%27Step+Up+Your+Filmammaking%27.+Today%27s+topic+is+the+importance+of+B-Roll.', 1, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce0165df4910.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'the-complete-graphic-design-theory', 1, 5, 1, 1, 1, '2026-01-30', '2026-01-30 18:33:01'),
(19, 'DESIGN+RULES%3A+Principles+%2B+Practices+for+Great+UI+Design', 'Getting+Started+is+the+perfect+course+for+you.+In+this+course%2C+you%E2%80%99ll+learn+how+to+build+apps+with+Flutter%2C+the+new+mobile+platform+backed+by+Google.', 5, 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697ce4a0652f832.jpg', 'http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697131215aa1d45.mp4', '%7B%221%22%3A%22By+the+end+of+this+course%2C+you+will+have+a+basic+%26+thorough+understanding+of+HTML+%26+CSS%22%2C%222%22%3A%22Upon+completion%2C+you+will+have+coded+a+handful+of+useful+HTML+%26+CSS+examples%22%2C%223%22%3A%22In+the+last+section+of+this+course%2C+you+focus+on+building+a+beautiful%2C+semantic%2C+HTML+%26+CSS+web+page%22%2C%224%22%3A%22By+the+end+of+this+course%2C+you+will+have+impressed+yourself%2C+and+will+be+able+to+hit+the+ground+running+with+your+newly+acquired+skillset%22%2C%225%22%3A%22Start+building+beautiful+websites%22%2C%226%22%3A%22Build+a+portfolio+website%2C+so+you+can+highlight+your+best+web+work%22%7D', 'Internet+Connection%2CWillingness+to+Learn%2CA+Text+Editor+%28Free+Resources+Provided%29', '%3Cp%3EHTML+and+CSS+are+the+two+most+important+languages+for+a+new+web+developer+to+learn.+They+are+also+the+easiest.+If+you%E2%80%99ve+always+wanted+to+build+webpages%2C+but+were+intimidated+by+the+code%2C+this+course+will+help+you+learn+your+first+two+languages+quickly+and+easily.%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3ETaking+a+step-by-step+approach%2C+this+course+will+have+you+learning+by+doing%2C+building+several+mini-websites+from+scratch.%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3ELearn+the+Two+Most+Important+Languages+to+Web+Design+Quickly+and+Easily.%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cul%3E%0D%0A++++%3Cli%3EHTML+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EParent%2FChild+Structure%3C%2Fli%3E%0D%0A++++%3Cli%3ECSS+Foundations%3C%2Fli%3E%0D%0A++++%3Cli%3EID+Selectors%3C%2Fli%3E%0D%0A++++%3Cli%3ECoding+and+Styling%3C%2Fli%3E%0D%0A++++%3Cli%3EWhat+Web+Pages+are+Built+Of%3C%2Fli%3E%0D%0A++%3C%2Ful%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Every+webpage+that+you+see+on+the+net+is+built+using+a+language+or+code.+There+are+many+different+programming+languages+that+can+make+your+website+do+various+things%2C+but+the+two+most+important+to+learn+are+HTML+and+CSS.+In+fact%2C+even+people+who+plan+on+allowing+someone+else+to+build+their+website+should+have+a+basic+grasp+of+both+languages.+This+way+you+can+tweak+things+behind+the+scenes%2C+or+change+some+of+your+formatting+without+having+to+always+rely+on+others.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A%0D%0A%3Ch4%3EContents+and+Overview%3C%2Fh4%3E%0D%0A%0D%0A%0D%0A++%3Cp%3E%0D%0A++++This+course+of+more+than+77+lectures+and+8+hours+of+content+gives+you+a+basic%2C+yet+thorough+understanding+of+both+HTML+and+CSS.+The+course+focuses+on+having+you+begin+writing+code+right+away+so+you+can+learn+through+doing%2C+and+build+your+own+completely+functional+HTML+and+CSS+webpage+at+the+end.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++You%E2%80%99ll+begin+by+learning+what+HTML+and+CSS+are%2C+so+you+can+get+an+understanding+of+what+it+is+that+they+do.+During+the+course+you%E2%80%99ll+build+several+mini-websites+that+take+what+it+is+that+you%E2%80%99ve+learned+and+apply+it+to+real+world+exercises+to+help+cement+the+skills.%0D%0A++%3C%2Fp%3E%0D%0A%0D%0A++%3Cp%3E%0D%0A++++Everyone+from+aspiring+web+designers+to+bloggers%2C+programmers+to+business+owners+can+benefit+from+learning+some+HTML+and+CSS.+Learn+to+begin+building+your+own+dynamic+webpages+or+manage+the+page+that+you+already+have.+If+you+plan+on+becoming+a+web+programmer+or+a+web+designer+yourself%2C+HTML+and+CSS+are+the+first+two+languages+you%E2%80%99ll+need+to+succeed.+In+fact+HTML+is+required+for+anyone+that+wants+to+get+into+web+development+from+any+angle.+Learning+it+simultaneously+with+CSS+allows+you+to+hit+the+ground+running+with+page+design.%0D%0A++%3C%2Fp%3E', 19.99, '%5B%7B%22name%22%3A%22Signe+Thompson%22%2C%22image%22%3A%22http%3A%2F%2Flocalhost%2Facademia%2Fcms%2Fviews%2Fassets%2Ffiles%2F697132cd0197253.jpg%22%2C%22starts%22%3A%225%22%2C%22review%22%3A%22From+the+outset%2C+the+course+structure+impressed+me+with+its+thoughtful+organization.+Each+module+builds+seamlessly+upon+the+last%2C+creating+a+logical+and+comprehensive+learning+journey.+The+content+is+delivered+in+a+way+that+is+both+engaging+and+accessible%2C+making+complex+concepts+easy+to+grasp.%22%2C%22date%22%3A%2226-Nov-2025%22%7D%5D', 'design-rules-principles-practices-for-great-ui-design', 1, 4, 1, 1, 2, '2026-01-30', '2026-01-30 18:33:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id_file` int(11) NOT NULL,
  `id_folder_file` int(11) DEFAULT 0,
  `name_file` text DEFAULT NULL,
  `extension_file` text DEFAULT NULL,
  `type_file` text DEFAULT NULL,
  `size_file` double DEFAULT 0,
  `link_file` text DEFAULT NULL,
  `thumbnail_vimeo_file` text DEFAULT NULL,
  `id_mailchimp_file` text DEFAULT NULL,
  `id_admin_file` int(11) DEFAULT 0,
  `date_created_file` date DEFAULT NULL,
  `date_updated_file` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id_file`, `id_folder_file`, `name_file`, `extension_file`, `type_file`, `size_file`, `link_file`, `thumbnail_vimeo_file`, `id_mailchimp_file`, `id_admin_file`, `date_created_file`, `date_updated_file`) VALUES
(1, 1, 'laptop-wallpaper-1920x1080', 'jpg', 'image/jpeg', 261625, 'http://localhost/academia/cms/views/assets/files/696fa9413fb0745.jpg', NULL, NULL, 1, '2026-01-20', '2026-01-20 16:11:45'),
(2, 1, 'instructor1', 'jpg', 'image/jpeg', 231760, 'http://localhost/academia/cms/views/assets/files/6970f97b65c1019.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 16:06:19'),
(3, 1, 'course_thumbnail_default_13', 'jpg', 'image/jpeg', 1025015, 'http://localhost/academia/cms/views/assets/files/6971003f5e0bd11.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 16:35:11'),
(4, 1, 'course_thumbnail_default_12', 'jpg', 'image/jpeg', 852962, 'http://localhost/academia/cms/views/assets/files/697100876e66023.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 16:36:23'),
(5, 1, 'course_thumbnail_default_15', 'jpg', 'image/jpeg', 207712, 'http://localhost/academia/cms/views/assets/files/697100a356fb851.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 16:36:51'),
(6, 1, 'course_thumbnail_default_16', 'jpg', 'image/jpeg', 922474, 'http://localhost/academia/cms/views/assets/files/697100c6f1e6626.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 16:37:27'),
(7, 1, 'course_thumbnail_default_14', 'jpg', 'image/jpeg', 826786, 'http://localhost/academia/cms/views/assets/files/697100e8727370.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 16:38:00'),
(8, 1, 'course_thumbnail_default_18', 'jpg', 'image/jpeg', 918423, 'http://localhost/academia/cms/views/assets/files/69710109686c233.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 16:38:33'),
(9, 1, 'course_thumbnail_default_19', 'jpg', 'image/jpeg', 970865, 'http://localhost/academia/cms/views/assets/files/6971012a225d76.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 16:39:06'),
(10, 1, 'course_thumbnail_default-new_191701070166', 'jpg', 'image/jpeg', 19083, 'http://localhost/academia/cms/views/assets/files/6971303d656e757.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 19:59:57'),
(11, 1, '6967d9d02be6648', 'mp4', 'video/mp4', 148543442, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', NULL, NULL, 1, '2026-01-21', '2026-01-21 20:03:45'),
(12, 1, 'aa6c72f7b21f21498acda57322b2a052', 'jpg', 'image/jpeg', 39101, 'http://localhost/academia/cms/views/assets/files/697132cd0197253.jpg', NULL, NULL, 1, '2026-01-21', '2026-01-21 20:10:53'),
(13, 1, 'wordpress', 'zip', 'application/x-zip-compressed', 18230109, 'http://localhost/academia/cms/views/assets/files/6971460ea0a182.zip', NULL, NULL, 1, '2026-01-21', '2026-01-21 21:33:08'),
(14, 1, 'course_thumbnail_default-new_121741669230', 'jpg', 'image/jpeg', 56788, 'http://localhost/academia/cms/views/assets/files/697cdbe197bc913.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:27:13'),
(15, 1, 'course_thumbnail_default-new_131741669890', 'jpg', 'image/jpeg', 25397, 'http://localhost/academia/cms/views/assets/files/697cdcccb245a8.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:31:08'),
(16, 1, 'course_thumbnail_default-new_141701064819', 'jpg', 'image/jpeg', 21480, 'http://localhost/academia/cms/views/assets/files/697cdd257b89837.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:32:37'),
(17, 1, 'course_thumbnail_default-new_161741669661', 'jpg', 'image/jpeg', 31428, 'http://localhost/academia/cms/views/assets/files/697cdde9bc93753.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:35:53'),
(18, 1, 'course_thumbnail_default-new_171701068402', 'jpg', 'image/jpeg', 9720, 'http://localhost/academia/cms/views/assets/files/697cde397b33313.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:37:13'),
(19, 1, 'course_thumbnail_default-new_181741753038', 'jpg', 'image/jpeg', 31827, 'http://localhost/academia/cms/views/assets/files/697cde8620a2230.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:38:30'),
(20, 1, 'course_thumbnail_default-new_201701069099', 'jpg', 'image/jpeg', 80258, 'http://localhost/academia/cms/views/assets/files/697cdf293109a13.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:41:13'),
(21, 1, 'course_thumbnail_default-new_211741686628', 'jpg', 'image/jpeg', 23015, 'http://localhost/academia/cms/views/assets/files/697cdf9cd83338.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:43:08'),
(22, 1, 'course_thumbnail_default-new_261753785199', 'jpg', 'image/jpeg', 37470, 'http://localhost/academia/cms/views/assets/files/697ce0165df4910.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:45:10'),
(23, 1, 'course_thumbnail_default-new_281741686394', 'jpg', 'image/jpeg', 26561, 'http://localhost/academia/cms/views/assets/files/697ce074c7b0c44.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:46:44'),
(24, 1, 'course_thumbnail_default-new_291741686262', 'jpg', 'image/jpeg', 24599, 'http://localhost/academia/cms/views/assets/files/697ce0cd16d2b13.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:48:13'),
(25, 1, 'course_thumbnail_default-new_301741677046', 'jpg', 'image/jpeg', 28622, 'http://localhost/academia/cms/views/assets/files/697ce3662f49318.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 16:59:18'),
(26, 1, 'course_thumbnail_default-new_311741676857', 'jpg', 'image/jpeg', 31451, 'http://localhost/academia/cms/views/assets/files/697ce4358bd2445.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 17:02:45'),
(27, 1, 'course_thumbnail_default-new_321741676608', 'jpg', 'image/jpeg', 30391, 'http://localhost/academia/cms/views/assets/files/697ce4a0652f832.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 17:04:32'),
(28, 1, 'course_thumbnail_default-new_361741676411', 'jpg', 'image/jpeg', 35054, 'http://localhost/academia/cms/views/assets/files/697ce5468218718.jpg', NULL, NULL, 1, '2026-01-30', '2026-01-30 17:07:18'),
(29, 1, '6967239b0c4d623', 'mp4', 'video/mp4', 18230095, 'http://localhost/academia/cms/views/assets/files/697e44e3dccaa31.mp4', NULL, NULL, 1, '2026-01-31', '2026-01-31 18:07:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE `folders` (
  `id_folder` int(11) NOT NULL,
  `name_folder` text DEFAULT NULL,
  `size_folder` text DEFAULT NULL,
  `total_folder` double DEFAULT 0,
  `max_upload_folder` text DEFAULT NULL,
  `url_folder` text DEFAULT NULL,
  `keys_folder` text DEFAULT NULL,
  `date_created_folder` date DEFAULT NULL,
  `date_updated_folder` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `folders`
--

INSERT INTO `folders` (`id_folder`, `name_folder`, `size_folder`, `total_folder`, `max_upload_folder`, `url_folder`, `keys_folder`, `date_created_folder`, `date_updated_folder`) VALUES
(1, 'Server', '200000000000', 191773513, '500000000', 'http://localhost/academia/cms', NULL, '2026-01-20', '2026-01-31 18:07:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructors`
--

CREATE TABLE `instructors` (
  `id_instructor` int(11) NOT NULL,
  `name_instructor` text DEFAULT NULL,
  `email_instructor` text DEFAULT NULL,
  `picture_instructor` text DEFAULT NULL,
  `description_instructor` longtext DEFAULT NULL,
  `status_instructor` int(11) DEFAULT 1,
  `date_created_instructor` date DEFAULT NULL,
  `date_updated_instructor` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instructors`
--

INSERT INTO `instructors` (`id_instructor`, `name_instructor`, `email_instructor`, `picture_instructor`, `description_instructor`, `status_instructor`, `date_created_instructor`, `date_updated_instructor`) VALUES
(1, 'Juan Benitez', 'juanbenitez@gmail.com', 'http://localhost/academia/cms/views/assets/files/6970f97b65c1019.jpg', '<p><b>Sharing is who I am</b>, and teaching is where I am at my best, because I\'ve been on both sides of that equation, and getting to deliver useful training is my meaningful way to be a part of the creative community.</p><p><b>I\'ve spent a long time watching others learn</b>, and teach, to refine how I work with you to be efficient, useful and, most importantly, memorable. I want you to carry what I\'ve shown you into a bright future.</p><p><b>I have a wife (a lovely Irish girl) and kids.</b> I have lived and worked in many places (as Kiwis tend to do) – but most of my 14+ years of creating and teaching has had one overriding theme: bringing others along for the ride as we all try to change the world with our stories, our labours of love and our art.</p>', 1, '2026-01-21', '2026-01-31 18:21:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lections`
--

CREATE TABLE `lections` (
  `id_lection` int(11) NOT NULL,
  `title_lection` text DEFAULT NULL,
  `id_section_lection` int(11) DEFAULT 0,
  `id_course_lection` int(11) DEFAULT 0,
  `video_lection` text DEFAULT NULL,
  `html_lection` longtext DEFAULT NULL,
  `duration_lection` time DEFAULT NULL,
  `paid_lection` int(11) DEFAULT 1,
  `id_instructor_lection` int(11) DEFAULT 0,
  `status_lection` int(11) DEFAULT 1,
  `date_created_lection` date DEFAULT NULL,
  `date_updated_lection` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lections`
--

INSERT INTO `lections` (`id_lection`, `title_lection`, `id_section_lection`, `id_course_lection`, `video_lection`, `html_lection`, `duration_lection`, `paid_lection`, `id_instructor_lection`, `status_lection`, `date_created_lection`, `date_updated_lection`) VALUES
(1, 'What Is WordPress?', 1, 1, 'http://localhost/academia/cms/views/assets/files/697e44e3dccaa31.mp4', '', '00:24:18', 0, 1, 1, '2026-01-21', '2026-01-31 18:07:39'),
(2, 'Code The Basic Webpage Layout', 1, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:18:50'),
(3, 'Setting Up Your Project Environment', 1, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:19:24'),
(4, 'Universal Lesson', 1, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:19:42'),
(5, 'HTML+5', 1, 1, '', '%3Ch2+style%3D%22box-sizing%3A+inherit%3B+font-size%3A+32px%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+Arial%2C+sans-serif%3B+margin%3A+10px+0px%3B+color%3A+rgb%280%2C+0%2C+0%29%3B%22%3ELearning+by+Examples%3C%2Fh2%3E%3Cp+style%3D%22box-sizing%3A+inherit%3B+margin-top%3A+1.2em%3B+margin-bottom%3A+1.2em%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+-apple-system%2C+Arial%2C+Verdana%2C+sans-serif%3B%22%3EWith+our+%22Try+it+Yourself%22+editor%2C+you+can+edit+the+HTML+code+and+view+the+result+in+the+browser%3A%3C%2Fp%3E%3Cp+style%3D%22box-sizing%3A+inherit%3B+margin-top%3A+1.2em%3B+margin-bottom%3A+1.2em%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+-apple-system%2C+Arial%2C+Verdana%2C+sans-serif%3B%22%3E%3Cspan+class%3D%22doctypecolor%22+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B+color%3A+slategray%3B%22%3E%26lt%3B%21DOCTYPE+html%26gt%3B%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ehtml%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ehead%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Etitle%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EPage+Title%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Ftitle%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fhead%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ebody%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Eh1%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EThis+is+a+Heading%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fh1%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ep%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EThis+is+a+paragraph.%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fp%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fbody%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fhtml%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3C%2Fp%3E%3Ch2+style%3D%22box-sizing%3A+inherit%3B+font-size%3A+32px%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+Arial%2C+sans-serif%3B+margin%3A+10px+0px%3B+color%3A+rgb%280%2C+0%2C+0%29%3B%22%3ELearning+by+Examples%3C%2Fh2%3E%3Cp+style%3D%22box-sizing%3A+inherit%3B+margin-top%3A+1.2em%3B+margin-bottom%3A+1.2em%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+-apple-system%2C+Arial%2C+Verdana%2C+sans-serif%3B%22%3EWith+our+%22Try+it+Yourself%22+editor%2C+you+can+edit+the+HTML+code+and+view+the+result+in+the+browser%3A%3C%2Fp%3E%3Cp+style%3D%22box-sizing%3A+inherit%3B+margin-top%3A+1.2em%3B+margin-bottom%3A+1.2em%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+-apple-system%2C+Arial%2C+Verdana%2C+sans-serif%3B%22%3E%3Cspan+class%3D%22doctypecolor%22+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B+color%3A+slategray%3B%22%3E%26lt%3B%21DOCTYPE+html%26gt%3B%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ehtml%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ehead%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Etitle%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EPage+Title%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Ftitle%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fhead%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ebody%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Eh1%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EThis+is+a+Heading%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fh1%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ep%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EThis+is+a+paragraph.%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fp%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fbody%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fhtml%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3C%2Fp%3E%3Ch2+style%3D%22box-sizing%3A+inherit%3B+font-size%3A+32px%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+Arial%2C+sans-serif%3B+margin%3A+10px+0px%3B+color%3A+rgb%280%2C+0%2C+0%29%3B%22%3ELearning+by+Examples%3C%2Fh2%3E%3Cp+style%3D%22box-sizing%3A+inherit%3B+margin-top%3A+1.2em%3B+margin-bottom%3A+1.2em%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+-apple-system%2C+Arial%2C+Verdana%2C+sans-serif%3B%22%3EWith+our+%22Try+it+Yourself%22+editor%2C+you+can+edit+the+HTML+code+and+view+the+result+in+the+browser%3A%3C%2Fp%3E%3Cp+style%3D%22box-sizing%3A+inherit%3B+margin-top%3A+1.2em%3B+margin-bottom%3A+1.2em%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+-apple-system%2C+Arial%2C+Verdana%2C+sans-serif%3B%22%3E%3Cspan+class%3D%22doctypecolor%22+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B+color%3A+slategray%3B%22%3E%26lt%3B%21DOCTYPE+html%26gt%3B%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ehtml%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ehead%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Etitle%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EPage+Title%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Ftitle%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fhead%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ebody%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Eh1%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EThis+is+a+Heading%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fh1%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ep%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EThis+is+a+paragraph.%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fp%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fbody%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fhtml%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3C%2Fp%3E', '00:00:00', 1, 1, 1, '2026-01-21', '2026-02-14 00:19:21'),
(6, 'Welcome To The Course! You Made The Right Decision', 1, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '<p><br></p>', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:20:04'),
(7, 'What is Bootstrap? And Why Mastering It Will Save You Hundreds of Hours', 1, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '<p><br></p>', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:20:31'),
(8, 'What is WordPress? And Why You Should Care So Much About It', 1, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '<p><br></p>', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:21:27'),
(9, 'What Is WordPress?', 2, 1, 'http://localhost/academia/cms/views/assets/files/697e44e3dccaa31.mp4', '', '00:24:18', 0, 1, 1, '2026-01-21', '2026-01-31 18:07:39'),
(10, 'Code The Basic Webpage Layout', 2, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:18:50'),
(11, 'Setting Up Your Project Environment', 2, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:19:24'),
(12, 'Universal Lesson', 2, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:19:42'),
(13, 'HTML+5', 2, 1, '', '%3Ch2+style%3D%22box-sizing%3A+inherit%3B+font-size%3A+32px%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+Arial%2C+sans-serif%3B+margin%3A+10px+0px%3B+color%3A+rgb%280%2C+0%2C+0%29%3B%22%3ELearning+by+Examples%3C%2Fh2%3E%3Cp+style%3D%22box-sizing%3A+inherit%3B+margin-top%3A+1.2em%3B+margin-bottom%3A+1.2em%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+-apple-system%2C+Arial%2C+Verdana%2C+sans-serif%3B%22%3EWith+our+%22Try+it+Yourself%22+editor%2C+you+can+edit+the+HTML+code+and+view+the+result+in+the+browser%3A%3C%2Fp%3E%3Cp+style%3D%22box-sizing%3A+inherit%3B+margin-top%3A+1.2em%3B+margin-bottom%3A+1.2em%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%26quot%3BSegoe+UI%26quot%3B%2C+-apple-system%2C+Arial%2C+Verdana%2C+sans-serif%3B%22%3E%3Cspan+class%3D%22doctypecolor%22+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B+color%3A+slategray%3B%22%3E%26lt%3B%21DOCTYPE+html%26gt%3B%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ehtml%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ehead%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Etitle%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EPage+Title%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Ftitle%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fhead%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ebody%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Eh1%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EThis+is+a+Heading%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fh1%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3Ep%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cspan+style%3D%22font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3EThis+is+a+paragraph.%3C%2Fspan%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fp%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fbody%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3Cbr+style%3D%22box-sizing%3A+inherit%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagnamecolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+0%2C+85%29%3B+font-family%3A+Consolas%2C+Menlo%2C+%26quot%3Bcourier+new%26quot%3B%2C+monospace%3B+font-size%3A+15px%3B%22%3E%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26lt%3B%3C%2Fspan%3E%2Fhtml%3Cspan+class%3D%22tagcolor%22+style%3D%22box-sizing%3A+inherit%3B+color%3A+rgb%28153%2C+153%2C+153%29%3B%22%3E%26gt%3B%3C%2Fspan%3E%3C%2Fspan%3E%3C%2Fp%3E', '00:00:00', 1, 1, 1, '2026-01-21', '2026-01-21 21:16:19'),
(14, 'Welcome To The Course! You Made The Right Decision', 2, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '<p><br></p>', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:20:04'),
(15, 'What is Bootstrap? And Why Mastering It Will Save You Hundreds of Hours', 2, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '<p><br></p>', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:20:31'),
(16, 'What is WordPress? And Why You Should Care So Much About It', 2, 1, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '<p><br></p>', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:21:27'),
(17, 'What Is WordPress?', 7, 2, 'http://localhost/academia/cms/views/assets/files/697e44e3dccaa31.mp4', '', '00:24:18', 0, 1, 1, '2026-01-21', '2026-01-31 18:07:39'),
(18, 'Code The Basic Webpage Layout', 7, 2, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:18:50'),
(19, 'Setting Up Your Project Environment', 7, 2, 'http://localhost/academia/cms/views/assets/files/697131215aa1d45.mp4', '', '00:24:18', 1, 1, 1, '2026-01-21', '2026-01-21 21:19:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id_module` int(11) NOT NULL,
  `id_page_module` int(11) DEFAULT 0,
  `type_module` text DEFAULT NULL,
  `title_module` text DEFAULT NULL,
  `suffix_module` text DEFAULT NULL,
  `content_module` text DEFAULT NULL,
  `width_module` int(11) DEFAULT 100,
  `editable_module` int(11) DEFAULT 1,
  `date_created_module` date DEFAULT NULL,
  `date_updated_module` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id_module`, `id_page_module`, `type_module`, `title_module`, `suffix_module`, `content_module`, `width_module`, `editable_module`, `date_created_module`, `date_updated_module`) VALUES
(1, 2, 'breadcrumbs', 'Administradores', NULL, NULL, 100, 1, '2026-01-20', '2026-01-20 15:33:17'),
(2, 2, 'tables', 'admins', 'admin', NULL, 100, 0, '2026-01-20', '2026-01-20 15:33:17'),
(6, 4, 'breadcrumbs', 'instructores', '', '', 100, 1, '2026-01-21', '2026-01-21 16:03:13'),
(7, 4, 'tables', 'instructors', 'instructor', '', 100, 1, '2026-01-21', '2026-01-21 16:05:30'),
(8, 5, 'breadcrumbs', 'categorías', '', '', 100, 1, '2026-01-21', '2026-01-21 16:32:41'),
(9, 5, 'tables', 'categories', 'category', '', 100, 0, '2026-01-21', '2026-01-21 16:34:27'),
(10, 6, 'breadcrumbs', 'subcategorías', '', '', 100, 1, '2026-01-21', '2026-01-21 16:47:07'),
(11, 6, 'tables', 'subcategories', 'subcategory', '', 100, 0, '2026-01-21', '2026-01-21 16:48:58'),
(12, 7, 'breadcrumbs', 'cursos', '', '', 100, 1, '2026-01-21', '2026-01-21 19:48:54'),
(14, 7, 'tables', 'courses', 'course', '', 100, 1, '2026-01-21', '2026-01-21 19:57:57'),
(15, 8, 'breadcrumbs', 'secciones', '', '', 100, 1, '2026-01-21', '2026-01-21 20:50:04'),
(16, 8, 'tables', 'sections', 'section', '', 100, 1, '2026-01-21', '2026-01-21 20:51:31'),
(17, 9, 'breadcrumbs', 'lecciones', '', '', 100, 1, '2026-01-21', '2026-01-21 21:05:29'),
(18, 9, 'tables', 'lections', 'lection', '', 100, 1, '2026-01-21', '2026-01-21 21:08:09'),
(19, 10, 'breadcrumbs', 'adjuntos', '', '', 100, 1, '2026-01-21', '2026-01-21 21:29:56'),
(20, 10, 'tables', 'attachments', 'attachment', '', 100, 1, '2026-01-21', '2026-01-21 21:32:02'),
(21, 11, 'breadcrumbs', 'estudiantes', '', '', 100, 1, '2026-01-21', '2026-01-21 21:41:48'),
(22, 11, 'tables', 'students', 'student', '', 100, 1, '2026-01-21', '2026-01-21 21:43:40'),
(23, 12, 'breadcrumbs', 'preguntas', '', '', 100, 1, '2026-01-21', '2026-01-21 21:44:03'),
(24, 12, 'tables', 'questions', 'question', '', 100, 1, '2026-01-21', '2026-01-21 21:45:54'),
(25, 13, 'breadcrumbs', 'cupones', '', '', 100, 1, '2026-01-21', '2026-01-21 21:46:17'),
(26, 13, 'tables', 'coupons', 'coupon', '', 100, 1, '2026-01-21', '2026-01-21 21:48:45'),
(27, 14, 'breadcrumbs', 'ventas', '', '', 100, 1, '2026-01-21', '2026-01-21 21:49:43'),
(28, 14, 'tables', 'sales', 'sale', '', 100, 1, '2026-01-21', '2026-01-21 21:50:51'),
(29, 16, 'breadcrumbs', 'Órdenes', '', '', 100, 1, '2026-02-12', '2026-02-12 20:26:58'),
(30, 16, 'tables', 'orders', 'order', '', 100, 1, '2026-02-12', '2026-02-12 20:28:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `reference_order` text DEFAULT NULL,
  `id_student_order` int(11) DEFAULT 0,
  `total_order` double DEFAULT 0,
  `id_pay_order` text DEFAULT NULL,
  `status_order` text DEFAULT NULL,
  `date_order` datetime DEFAULT NULL,
  `date_created_order` date DEFAULT NULL,
  `date_updated_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id_order`, `reference_order`, `id_student_order`, `total_order`, `id_pay_order`, `status_order`, `date_order`, `date_created_order`, `date_updated_order`) VALUES
(1, '4812906573', 1, 19.98, '01854938VW2002238', 'PAID', '2026-02-13 17:05:23', '2026-02-13', '2026-02-13 20:45:19'),
(2, '3075692184', 1, 0, NULL, 'PAID', '2026-02-13 22:25:39', '2026-02-13', '2026-02-13 21:25:39'),
(3, '1037984265', 1, 9.99, '29D529663M481002N', 'PAID', '2026-02-13 22:55:47', '2026-02-13', '2026-02-13 21:56:12'),
(4, '5841360297', 1, 9.99, '38M45572X4052323F', 'PENDING', '2026-02-13 22:55:51', '2026-02-13', '2026-02-13 21:55:54'),
(5, '7138492065', 1, 9.99, '96X53676R2764311B', 'PAID', '2026-02-14 03:33:42', '2026-02-14', '2026-02-14 02:34:04'),
(6, '8154270639', 1, 9.99, '7L379429LE164893L', 'PENDING', '2026-02-14 03:33:46', '2026-02-14', '2026-02-14 02:33:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id_page` int(11) NOT NULL,
  `title_page` text DEFAULT NULL,
  `url_page` text DEFAULT NULL,
  `icon_page` text DEFAULT NULL,
  `type_page` text DEFAULT NULL,
  `order_page` int(11) DEFAULT 1,
  `menu_type_page` int(11) DEFAULT 0,
  `parent_id_page` int(11) DEFAULT 0,
  `date_created_page` date DEFAULT NULL,
  `date_updated_page` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id_page`, `title_page`, `url_page`, `icon_page`, `type_page`, `order_page`, `menu_type_page`, `parent_id_page`, `date_created_page`, `date_updated_page`) VALUES
(1, 'Inicio', 'inicio', 'bi bi-house-door-fill', 'modules', 1, 0, 0, '2026-01-20', '2026-01-20 15:33:17'),
(2, 'Admins', 'admins', 'bi bi-person-fill-gear', 'modules', 2, 0, 0, '2026-01-20', '2026-01-20 15:33:17'),
(3, 'Archivos', 'archivos', 'bi bi-file-earmark-image', 'custom', 3, 0, 0, '2026-01-20', '2026-01-21 16:02:56'),
(4, 'Instructores', 'instructores', 'bi bi-person-fill-gear', 'modules', 4, 0, 0, '2026-01-21', '2026-01-21 16:02:57'),
(5, 'Categorías', 'categorias', 'bi bi-list-ul', 'modules', 5, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(6, 'Subcategorías', 'subcategorias', 'bi bi-card-list', 'modules', 6, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(7, 'Cursos', 'cursos', 'fa-solid fa-book', 'modules', 7, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(8, 'Secciones', 'secciones', 'fa-solid fa-puzzle-piece', 'modules', 8, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(9, 'Lecciones', 'lecciones', 'fa-solid fa-chalkboard', 'modules', 9, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(10, 'Adjuntos', 'adjuntos', 'fa-solid fa-link', 'modules', 10, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(11, 'Estudiantes', 'estudiantes', 'bi bi-person-circle', 'modules', 11, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(12, 'Preguntas', 'preguntas', 'bi bi-question-circle-fill', 'modules', 12, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(13, 'Cupones', 'cupones', 'bi bi-tags-fill', 'modules', 13, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(14, 'Ventas', 'ventas', 'bi bi-cash-coin', 'modules', 15, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(15, 'Academia', 'http%3A%2F%2Flocalhost%2Facademia%2Fweb', 'bi bi-mortarboard-fill', 'external_link', 16, 0, 0, '2026-01-21', '2026-02-12 20:26:44'),
(16, 'Órdenes', 'ordenes', 'fas fa-file-invoice', 'modules', 14, 0, 0, '2026-02-12', '2026-02-12 20:26:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id_question` int(11) NOT NULL,
  `title_question` text DEFAULT NULL,
  `content_question` longtext DEFAULT NULL,
  `answer_question` longtext DEFAULT NULL,
  `id_course_question` int(11) DEFAULT 0,
  `id_lection_question` int(11) DEFAULT 0,
  `id_student_question` int(11) DEFAULT 0,
  `id_instructor_question` int(11) DEFAULT 0,
  `status_question` int(11) DEFAULT 1,
  `date_created_question` date DEFAULT NULL,
  `date_updated_question` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id_sale` int(11) NOT NULL,
  `price_sale` double DEFAULT 0,
  `id_student_sale` int(11) DEFAULT 0,
  `id_course_sale` int(11) DEFAULT 0,
  `id_instructor_sale` int(11) DEFAULT 0,
  `status_sale` text DEFAULT NULL,
  `id_order_sale` int(11) DEFAULT 0,
  `date_created_sale` date DEFAULT NULL,
  `date_updated_sale` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id_sale`, `price_sale`, `id_student_sale`, `id_course_sale`, `id_instructor_sale`, `status_sale`, `id_order_sale`, `date_created_sale`, `date_updated_sale`) VALUES
(1, 9.99, 1, 10, 1, 'PAID', 1, '2026-02-13', '2026-02-13 20:45:19'),
(2, 9.99, 1, 1, 1, 'PAID', 1, '2026-02-13', '2026-02-13 20:45:19'),
(3, 0, 1, 3, 1, 'PAID', 2, '2026-02-13', '2026-02-13 21:25:40'),
(4, 0, 1, 9, 1, 'PAID', 2, '2026-02-13', '2026-02-13 21:25:40'),
(5, 0, 1, 6, 1, 'PAID', 2, '2026-02-13', '2026-02-13 21:25:40'),
(6, 9.99, 1, 14, 1, 'PAID', 3, '2026-02-13', '2026-02-13 21:56:12'),
(7, 9.99, 1, 14, 1, 'PENDING', 4, '2026-02-13', '2026-02-13 21:55:54'),
(8, 9.99, 1, 2, 1, 'PAID', 5, '2026-02-14', '2026-02-14 02:34:05'),
(9, 9.99, 1, 2, 1, 'PENDING', 6, '2026-02-14', '2026-02-14 02:33:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

CREATE TABLE `sections` (
  `id_section` int(11) NOT NULL,
  `title_section` text DEFAULT NULL,
  `id_course_section` int(11) DEFAULT 0,
  `id_instructor_section` int(11) DEFAULT 0,
  `status_section` int(11) DEFAULT 1,
  `order_section` int(11) DEFAULT 0,
  `date_created_section` date DEFAULT NULL,
  `date_updated_section` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id_section`, `title_section`, `id_course_section`, `id_instructor_section`, `status_section`, `order_section`, `date_created_section`, `date_updated_section`) VALUES
(1, 'Getting Started With This Course', 1, 1, 1, 1, '2026-01-21', '2026-01-21 20:53:01'),
(2, 'Iframe Section', 1, 1, 1, 2, '2026-01-21', '2026-01-21 20:53:08'),
(3, 'Environment+Setup%3A+Get+Your+Project+Started', 1, 1, 1, 3, '2026-01-21', '2026-01-21 20:53:33'),
(4, 'Bootstrap+Templates%3A+Your+Home+Page', 1, 1, 1, 4, '2026-01-21', '2026-01-21 20:53:45'),
(5, 'WordPress+Theme%3A+Setup', 1, 1, 1, 5, '2026-01-21', '2026-01-21 20:53:57'),
(6, 'The+Final+Details', 1, 1, 1, 6, '2026-01-21', '2026-01-21 20:54:07'),
(7, 'Getting Started With This Course', 2, 1, 1, 1, '2026-01-21', '2026-01-21 20:53:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id_student` int(11) NOT NULL,
  `name_student` text DEFAULT NULL,
  `email_student` text DEFAULT NULL,
  `password_student` text DEFAULT NULL,
  `platform_student` text DEFAULT NULL,
  `lectures_student` text DEFAULT '[]',
  `status_student` int(11) DEFAULT 1,
  `token_student` text DEFAULT NULL,
  `token_exp_student` text DEFAULT NULL,
  `picture_student` text DEFAULT NULL,
  `date_created_student` date DEFAULT NULL,
  `date_updated_student` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id_student`, `name_student`, `email_student`, `password_student`, `platform_student`, `lectures_student`, `status_student`, `token_student`, `token_exp_student`, `picture_student`, `date_created_student`, `date_updated_student`) VALUES
(1, 'Juan Fernando Urrego', 'juanurrego@correo.com', '', 'web', '[{\"1\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\"],\"2\":[\"17\"]}]', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NzEwMjk1NTksImV4cCI6MTc3MTExNTk1OSwiZGF0YSI6eyJpZCI6MSwiZW1haWwiOiJqdWFudXJyZWdvQGNvcnJlby5jb20ifX0.f2mqCB2JjQCJV3iH-43LAJa4jowdAxQ662XtSw8Fns8', '1771115959', 'http://localhost/academia/web/views/assets/img/students/1_juanurrego.jpeg', '2026-02-12', '2026-02-14 03:13:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id_subcategory` int(11) NOT NULL,
  `title_subcategory` text DEFAULT NULL,
  `id_category_subcategory` int(11) DEFAULT 0,
  `url_subcategory` text DEFAULT NULL,
  `status_subcategory` int(11) DEFAULT 1,
  `date_created_subcategory` date DEFAULT NULL,
  `date_updated_subcategory` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id_subcategory`, `title_subcategory`, `id_category_subcategory`, `url_subcategory`, `status_subcategory`, `date_created_subcategory`, `date_updated_subcategory`) VALUES
(1, 'Responsive+Design', 1, 'responsive-design', 1, '2026-01-21', '2026-01-21 16:49:43'),
(2, 'WordPress+Theme', 1, 'wordpress-theme', 1, '2026-01-21', '2026-01-21 16:50:40'),
(3, 'Bootstrap', 1, 'bootstrap', 1, '2026-01-21', '2026-01-21 17:13:35'),
(4, 'HTML & CSS', 1, 'html-css', 1, '2026-01-21', '2026-01-21 17:13:35'),
(5, 'Photoshop', 2, 'photoshop', 1, '2026-01-21', '2026-01-21 17:13:35'),
(6, 'Adobe Illustrator', 2, 'adobe-iIllustrator', 1, '2026-01-21', '2026-01-21 17:13:35'),
(7, 'Drawing', 2, 'drawing', 1, '2026-01-21', '2026-01-21 17:13:35'),
(8, 'Logo Design', 2, 'logo-design', 1, '2026-01-21', '2026-01-21 17:13:35'),
(9, 'Digital Art', 2, 'digital-art', 1, '2026-01-21', '2026-01-21 17:13:36'),
(10, 'User Experience Design', 3, 'user-experience-design', 1, '2026-01-21', '2026-01-21 17:13:36'),
(11, 'Mobile App Design', 3, 'mobile-app-design', 1, '2026-01-21', '2026-01-21 17:13:36'),
(12, 'User Interface', 3, 'user-interface', 1, '2026-01-21', '2026-01-21 17:13:36'),
(13, 'Design Thinking', 3, 'design-thinking', 1, '2026-01-21', '2026-01-21 17:13:36'),
(14, 'Figma', 3, 'figma', 1, '2026-01-21', '2026-01-21 17:13:36'),
(15, 'Prototyping', 3, 'prototyping', 1, '2026-01-21', '2026-01-21 17:13:36'),
(16, 'Color Theory', 4, 'color-theory', 1, '2026-01-21', '2026-01-21 17:13:36'),
(17, 'Lighting Design', 4, 'lighting-design', 1, '2026-01-21', '2026-01-21 17:13:37'),
(18, 'SketchUp', 4, 'sketchup', 1, '2026-01-21', '2026-01-21 17:13:37'),
(19, 'Home Improvement', 4, 'home-improvement', 1, '2026-01-21', '2026-01-21 17:13:37'),
(20, '3D Lighting', 4, '3d-lighting', 1, '2026-01-21', '2026-01-21 17:13:37'),
(21, 'Blender', 5, 'blender', 1, '2026-01-21', '2026-01-21 17:13:37'),
(22, 'Motion Graphics', 5, 'motion-graphics', 1, '2026-01-21', '2026-01-21 17:13:37'),
(23, 'After Effects', 5, 'after-effects', 1, '2026-01-21', '2026-01-21 17:13:37'),
(24, 'Maya', 5, 'maya', 1, '2026-01-21', '2026-01-21 17:13:37'),
(25, 'zBrush', 5, 'zbrush', 1, '2026-01-21', '2026-01-21 17:13:37'),
(26, 'Character Modeling', 5, 'character-modeling', 1, '2026-01-21', '2026-01-21 17:13:37'),
(27, 'Fashion Design', 6, 'fashion-design', 1, '2026-01-21', '2026-01-21 17:13:38'),
(28, 'Sewing', 6, 'sewing', 1, '2026-01-21', '2026-01-21 17:13:38'),
(29, 'T-shirt Design', 6, 't-shirt-design', 1, '2026-01-21', '2026-01-21 17:13:38'),
(30, 'Jewelry Design', 6, 'jewelry-design', 1, '2026-01-21', '2026-01-21 17:13:38'),
(31, 'VueJS', 7, 'Vuejs', 1, '2026-01-21', '2026-01-21 17:13:38'),
(32, 'Angular', 7, 'angular', 1, '2026-01-21', '2026-01-21 17:13:38'),
(33, 'React', 7, 'react', 1, '2026-01-21', '2026-01-21 17:13:38');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id_attachment`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `columns`
--
ALTER TABLE `columns`
  ADD PRIMARY KEY (`id_column`);

--
-- Indices de la tabla `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id_coupon`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id_course`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`);

--
-- Indices de la tabla `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indices de la tabla `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id_instructor`);

--
-- Indices de la tabla `lections`
--
ALTER TABLE `lections`
  ADD PRIMARY KEY (`id_lection`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id_module`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id_page`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_question`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sale`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id_section`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id_student`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id_subcategory`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id_attachment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `columns`
--
ALTER TABLE `columns`
  MODIFY `id_column` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id_coupon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id_instructor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lections`
--
ALTER TABLE `lections`
  MODIFY `id_lection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id_sale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
  MODIFY `id_section` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id_subcategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
