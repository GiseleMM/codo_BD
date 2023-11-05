-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2023 a las 03:46:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `tema` varchar(50) NOT NULL,
  `fecha_alta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Trude', 'Paddingdon', 'tpaddingdon0@examiner.com', 'Duis aliquam convallis nunc.', '2022-12-04'),
(2, 'Beck', 'Spadelli', 'bspadelli1@liveinternet.ru', 'Morbi non quam nec dui luctus rutrum.', '2023-05-04'),
(3, 'Clair', 'Dressell', 'cdressell2@berkeley.edu', 'Nulla mollis molestie lorem. Quisque ut erat.', '2023-04-23'),
(4, 'Chaim', 'McPake', 'cmcpake3@jimdo.com', 'Nulla mollis molestie lorem.', '2023-04-14'),
(5, 'Jeffrey', 'Swales', 'jswales4@un.org', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugi', '2023-10-01'),
(6, 'Kristofor', 'Satford', 'ksatford5@smh.com.au', 'Quisque ut erat.', '2023-07-17'),
(7, 'Aundrea', 'Moreby', 'amoreby6@cornell.edu', 'Fusce lacus purus, aliquet at, feugiat non, pretiu', '2023-03-15'),
(8, 'Alessandra', 'Pescod', 'apescod7@bizjournals.com', 'Duis at velit eu est congue elementum.', '2022-12-01'),
(9, 'Karee', 'Ringe', 'kringe8@umich.edu', 'Donec diam neque, vestibulum eget, vulputate ut, u', '2023-05-07'),
(10, 'Gail', 'Spilling', 'gspilling9@icio.us', 'Nulla tempus. Vivamus in felis eu sapien cursus ve', '2023-05-21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
