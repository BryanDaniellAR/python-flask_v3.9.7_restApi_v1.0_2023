-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-04-2023 a las 15:53:57
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bryanarr_fiisuni`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history`
--

CREATE TABLE `history` (
  `idHistory` int(10) NOT NULL,
  `idUser` int(10) NOT NULL,
  `idRecognition` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `history`
--

INSERT INTO `history` (`idHistory`, `idUser`, `idRecognition`, `created_at`) VALUES
(1, 3, 1, '2023-04-06 19:26:55'),
(2, 3, 1, '2023-04-06 21:24:23'),
(3, 3, 1, '2023-04-06 22:31:21'),
(4, 4, 1, '2023-04-06 22:31:38'),
(5, 3, 1, '2023-04-06 22:34:02'),
(6, 3, 1, '2023-04-06 22:34:43'),
(7, 3, 1, '2023-04-06 22:37:10'),
(8, 3, 1, '2023-04-06 22:40:34'),
(9, 3, 1, '2023-04-06 22:41:36'),
(10, 3, 1, '2023-04-06 22:44:25'),
(11, 3, 1, '2023-04-06 22:46:06'),
(12, 3, 1, '2023-04-06 22:48:15'),
(13, 3, 1, '2023-04-06 22:49:45'),
(14, 3, 1, '2023-04-06 22:51:21'),
(15, 3, 1, '2023-04-06 22:52:12'),
(16, 4, 1, '2023-04-06 22:52:29'),
(17, 3, 1, '2023-04-06 22:54:27'),
(18, 3, 1, '2023-04-06 22:57:01'),
(19, 4, 1, '2023-04-06 22:59:22'),
(20, 3, 1, '2023-04-06 23:08:31'),
(21, 3, 1, '2023-04-06 23:10:48'),
(22, 3, 1, '2023-04-06 23:12:07'),
(23, 3, 1, '2023-04-06 23:12:27'),
(24, 3, 1, '2023-04-06 23:14:08'),
(25, 3, 1, '2023-04-06 23:15:14'),
(26, 4, 1, '2023-04-06 23:22:06'),
(27, 4, 1, '2023-04-06 23:23:48'),
(28, 4, 1, '2023-04-06 23:26:32'),
(29, 3, 1, '2023-04-06 23:28:22'),
(30, 4, 1, '2023-04-06 23:31:55'),
(31, 3, 1, '2023-04-06 23:32:20'),
(32, 3, 1, '2023-04-06 23:35:04'),
(33, 3, 1, '2023-04-06 23:35:56'),
(34, 3, 1, '2023-04-06 23:36:42'),
(35, 3, 1, '2023-04-06 23:38:53'),
(36, 3, 1, '2023-04-06 23:41:12'),
(37, 3, 1, '2023-04-06 23:42:38'),
(38, 3, 1, '2023-04-06 23:44:54'),
(39, 3, 1, '2023-04-06 23:46:11'),
(40, 3, 1, '2023-04-06 23:48:21'),
(41, 3, 1, '2023-04-06 23:49:55'),
(42, 3, 1, '2023-04-07 00:10:53'),
(43, 3, 1, '2023-04-07 00:17:33'),
(44, 3, 1, '2023-04-07 00:19:12'),
(45, 4, 1, '2023-04-07 00:19:27'),
(46, 3, 1, '2023-04-07 00:29:57'),
(47, 3, 1, '2023-04-07 00:30:21'),
(48, 3, 1, '2023-04-07 00:59:39'),
(49, 3, 1, '2023-04-07 01:03:24'),
(50, 3, 1, '2023-04-07 01:09:37'),
(51, 3, 1, '2023-04-07 01:11:55'),
(52, 3, 1, '2023-04-07 01:18:56'),
(53, 3, 1, '2023-04-07 01:27:42'),
(54, 3, 1, '2023-04-07 01:31:59'),
(55, 3, 1, '2023-04-07 01:33:00'),
(56, 3, 1, '2023-04-07 01:44:44'),
(57, 3, 1, '2023-04-07 01:45:34'),
(58, 3, 1, '2023-04-07 01:47:48'),
(59, 3, 1, '2023-04-07 01:54:59'),
(60, 3, 1, '2023-04-07 02:00:53'),
(61, 3, 1, '2023-04-07 02:07:10'),
(62, 3, 1, '2023-04-07 02:08:26'),
(63, 3, 1, '2023-04-07 02:12:33'),
(64, 3, 1, '2023-04-07 02:25:12'),
(65, 3, 1, '2023-04-07 02:27:38'),
(66, 3, 1, '2023-04-07 02:31:35'),
(67, 3, 1, '2023-04-07 02:35:52'),
(68, 3, 1, '2023-04-07 02:37:33'),
(69, 3, 1, '2023-04-07 02:44:18'),
(70, 4, 1, '2023-04-07 02:47:33'),
(71, 3, 1, '2023-04-07 02:56:45'),
(72, 3, 1, '2023-04-07 03:39:14'),
(73, 4, 1, '2023-04-07 03:39:53'),
(74, 3, 1, '2023-04-07 03:42:08'),
(75, 3, 1, '2023-04-07 03:44:11'),
(76, 3, 1, '2023-04-07 03:45:32'),
(77, 3, 1, '2023-04-07 03:49:21'),
(78, 3, 1, '2023-04-07 03:53:17'),
(79, 3, 1, '2023-04-07 03:55:09'),
(80, 3, 1, '2023-04-07 04:03:00'),
(81, 3, 1, '2023-04-07 04:03:59'),
(82, 3, 1, '2023-04-07 04:06:34'),
(83, 4, 1, '2023-04-07 04:12:09'),
(84, 3, 1, '2023-04-07 04:17:01'),
(85, 4, 1, '2023-04-07 04:17:19'),
(86, 3, 1, '2023-04-07 04:21:44'),
(87, 3, 1, '2023-04-07 04:26:18'),
(88, 4, 1, '2023-04-07 04:26:36'),
(89, 3, 1, '2023-04-07 04:42:51'),
(90, 3, 1, '2023-04-07 05:04:07'),
(91, 3, 1, '2023-04-07 05:06:10'),
(92, 3, 1, '2023-04-07 05:07:39'),
(93, 3, 1, '2023-04-07 05:14:28'),
(94, 3, 1, '2023-04-07 05:17:20'),
(95, 3, 1, '2023-04-07 05:23:10'),
(96, 3, 1, '2023-04-07 05:25:44'),
(97, 3, 1, '2023-04-07 05:29:57'),
(98, 3, 1, '2023-04-07 05:30:58'),
(99, 3, 1, '2023-04-07 05:34:05'),
(100, 3, 1, '2023-04-07 06:05:27'),
(101, 3, 1, '2023-04-07 06:10:59'),
(102, 3, 1, '2023-04-07 06:12:02'),
(103, 3, 1, '2023-04-07 06:13:43'),
(104, 3, 1, '2023-04-07 06:15:00'),
(105, 3, 1, '2023-04-07 06:33:26'),
(106, 3, 1, '2023-04-07 06:34:43'),
(107, 3, 1, '2023-04-07 06:37:03'),
(108, 3, 1, '2023-04-07 06:38:36'),
(109, 3, 1, '2023-04-07 06:44:52'),
(110, 3, 1, '2023-04-07 06:46:04'),
(111, 3, 1, '2023-04-07 06:46:48'),
(112, 3, 1, '2023-04-07 07:10:59'),
(113, 3, 1, '2023-04-07 07:37:07'),
(114, 3, 1, '2023-04-07 07:38:15'),
(115, 3, 1, '2023-04-07 07:48:30'),
(116, 3, 1, '2023-04-07 08:32:12'),
(117, 4, 1, '2023-04-07 08:32:53'),
(118, 3, 1, '2023-04-07 08:33:10'),
(119, 3, 1, '2023-04-07 09:05:12'),
(120, 3, 1, '2023-04-07 09:12:33'),
(126, 3, 1, '2023-04-07 17:22:36'),
(134, 3, 1, '2023-04-07 17:41:21'),
(135, 3, 1, '2023-04-07 18:34:55'),
(136, 3, 2, '2023-04-07 18:40:02'),
(137, 3, 1, '2023-04-07 20:25:13'),
(138, 3, 1, '2023-04-07 20:28:14'),
(141, 3, 2, '2023-04-07 20:40:13'),
(142, 3, 3, '2023-04-07 21:51:31'),
(143, 3, 3, '2023-04-07 21:52:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model`
--

CREATE TABLE `model` (
  `idModel` int(10) NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `model`
--

INSERT INTO `model` (`idModel`, `url`, `status`) VALUES
(1, 'https://jerssonarrivasplata.com/modeloLBPHFace.xml', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profile`
--

CREATE TABLE `profile` (
  `idProfile` int(10) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` datetime NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `securityResponse` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `profile`
--

INSERT INTO `profile` (`idProfile`, `name`, `lastName`, `number`, `birthday`, `email`, `securityResponse`, `status`) VALUES
(1, 'Bryan Daniell', 'Arrivasplata Rojas', '997767771', '1999-02-15 11:02:39', 'barrivasplatar@uni.pe', 'Cajamarca', 0),
(2, 'Jersson Giomar', 'Arrivasplata Rojas', '997767771', '1996-07-11 11:02:39', 'jarrivasplatar@uni.pe', 'Cajamarca', 0),
(14, 'Ketty', 'Rojas Mayta', '980501414', '1999-02-15 00:00:00', 'krojasm@uni.edu.pe', 'Lima', 0),
(15, 'Pepe', 'De la Mar', '98051425', '1999-02-15 00:00:00', 'pmard@uni.pe', 'Lima', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recognition`
--

CREATE TABLE `recognition` (
  `idRecognition` int(10) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `recognition`
--

INSERT INTO `recognition` (`idRecognition`, `name`, `status`) VALUES
(1, 'login', 0),
(2, 'qr', 0),
(3, 'face', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `idRole` int(10) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`idRole`, `name`) VALUES
(1, 'Administrador'),
(3, 'Docente'),
(2, 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `idUser` int(10) NOT NULL,
  `code` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idRole` int(10) NOT NULL DEFAULT '2',
  `idProfile` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`idUser`, `code`, `password`, `created_at`, `updated_at`, `idRole`, `idProfile`) VALUES
(3, '20172657B', '123456789', '2023-04-06 16:10:21', '0000-00-00 00:00:00', 1, 1),
(4, '20172657C', '123456789', '2023-04-06 16:10:21', '0000-00-00 00:00:00', 2, 2),
(7, '20172657D', '123456789', '2023-04-06 21:10:23', '0000-00-00 00:00:00', 3, 14),
(8, '20172657E', '123456789', '2023-04-07 07:11:11', '0000-00-00 00:00:00', 3, 15);

--
-- Disparadores `user`
--
DELIMITER $$
CREATE TRIGGER `user_recognition` AFTER INSERT ON `user` FOR EACH ROW BEGIN
   INSERT INTO user_recognition (idUser,idRecognition) VALUES (new.idUser,1),(new.idUser,2);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_recognition`
--

CREATE TABLE `user_recognition` (
  `idUserRecognition` int(20) NOT NULL,
  `idUser` int(10) NOT NULL,
  `idRecognition` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_recognition`
--

INSERT INTO `user_recognition` (`idUserRecognition`, `idUser`, `idRecognition`, `status`) VALUES
(3, 3, 1, 0),
(4, 3, 2, 0),
(5, 4, 1, 0),
(6, 4, 2, 0),
(9, 7, 1, 0),
(10, 7, 2, 0),
(11, 8, 1, 0),
(12, 8, 2, 0),
(13, 3, 3, 0),
(14, 7, 3, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`idHistory`),
  ADD KEY `history_recognition` (`idRecognition`),
  ADD KEY `history_user` (`idUser`);

--
-- Indices de la tabla `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`idModel`);

--
-- Indices de la tabla `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`idProfile`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `recognition`
--
ALTER TABLE `recognition`
  ADD PRIMARY KEY (`idRecognition`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `user_profile` (`idProfile`),
  ADD KEY `user_role` (`idRole`);

--
-- Indices de la tabla `user_recognition`
--
ALTER TABLE `user_recognition`
  ADD PRIMARY KEY (`idUserRecognition`),
  ADD KEY `user_recognition_recognition` (`idRecognition`),
  ADD KEY `user_recognition_user` (`idUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `history`
--
ALTER TABLE `history`
  MODIFY `idHistory` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de la tabla `model`
--
ALTER TABLE `model`
  MODIFY `idModel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `profile`
--
ALTER TABLE `profile`
  MODIFY `idProfile` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `recognition`
--
ALTER TABLE `recognition`
  MODIFY `idRecognition` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `idRole` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `user_recognition`
--
ALTER TABLE `user_recognition`
  MODIFY `idUserRecognition` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_recognition` FOREIGN KEY (`idRecognition`) REFERENCES `recognition` (`idRecognition`),
  ADD CONSTRAINT `history_user` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_profile` FOREIGN KEY (`idProfile`) REFERENCES `profile` (`idProfile`),
  ADD CONSTRAINT `user_role` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`);

--
-- Filtros para la tabla `user_recognition`
--
ALTER TABLE `user_recognition`
  ADD CONSTRAINT `user_recognition_recognition` FOREIGN KEY (`idRecognition`) REFERENCES `recognition` (`idRecognition`),
  ADD CONSTRAINT `user_recognition_user` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
