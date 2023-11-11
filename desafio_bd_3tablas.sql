-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2023 a las 23:07:13
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
-- Base de datos: `desafio_bd_3tablas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`dni`, `nombre`, `apellido`) VALUES
('30078484', 'Sutherlan', 'Matysik'),
('30685118', 'Bucky', 'Ablott'),
('31258962', 'Giraldo', 'Sunnucks'),
('31578179', 'Amye', 'Pandya'),
('36023102', 'Jens', 'Finnan'),
('36722132', 'Odelinda', 'Southcott'),
('38658878', 'Korie', 'Denidge'),
('39485365', 'Gwyneth', 'Karppi'),
('43623811', 'Nollie', 'Crotty'),
('49775518', 'Stefanie', 'Vauter'),
('49864483', 'Billy', 'Askey'),
('52549951', 'Derrick', 'Dog'),
('56661588', 'Reuben', 'McPhee'),
('59563138', 'Dallas', 'Dwane');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `concepto` varchar(20) NOT NULL,
  `clientes_dni` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `concepto`, `clientes_dni`) VALUES
(1, 'concepto', '43623811'),
(2, 'consumidor', '49864483'),
(3, 'consumidor', '31578179'),
(4, 'consumidor', '36023102'),
(5, 'consumidor', '36722132'),
(6, 'consumidor', '56661588'),
(7, 'consumidor', '49775518'),
(8, 'consumidor', '52549951'),
(9, 'consumidor', '38658878'),
(10, 'consumidor', '31258962'),
(11, 'consumidor', '59563138'),
(12, 'consumidor', '30685118'),
(13, 'consumidor', '39485365'),
(14, 'consumidor', '30078484');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineascompra`
--

CREATE TABLE `lineascompra` (
  `numero` int(11) NOT NULL,
  `compras_id` int(11) UNSIGNED NOT NULL,
  `producto` varchar(20) NOT NULL,
  `importe` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lineascompra`
--

INSERT INTO `lineascompra` (`numero`, `compras_id`, `producto`, `importe`) VALUES
(1, 6, 'Nacho Chips', 6529.85),
(2, 4, 'Soup - Campbells Chi', 89143.5),
(3, 11, 'Lamb - Leg, Boneless', 57745.2),
(4, 9, 'Plate Pie Foil', 59870),
(5, 8, 'Muffin Mix - Raisin ', 52121.1),
(6, 13, 'Chicken - Base, Ulti', 34030.4),
(7, 12, 'Sherbet - Raspberry', 15468.3),
(8, 3, 'Soup - Campbells Bea', 96527.2),
(9, 9, 'Soup - Campbells, Le', 46733.1),
(10, 2, 'Bread Crumbs - Panko', 74131.6),
(11, 7, 'Beef - Tenderlion, C', 63144.5),
(12, 9, 'Peas - Pigeon, Dry', 18018),
(13, 6, 'Wine - Riesling Dr. ', 82241.5),
(14, 8, 'Compound - Rum', 9536.83);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`clientes_dni`);

--
-- Indices de la tabla `lineascompra`
--
ALTER TABLE `lineascompra`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `fk_compras` (`compras_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk` FOREIGN KEY (`clientes_dni`) REFERENCES `clientes` (`dni`);

--
-- Filtros para la tabla `lineascompra`
--
ALTER TABLE `lineascompra`
  ADD CONSTRAINT `fk_compras` FOREIGN KEY (`compras_id`) REFERENCES `compras` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;