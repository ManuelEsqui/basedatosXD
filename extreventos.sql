-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2024 a las 12:49:47
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
-- Base de datos: `extreventos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `localidad_id` int(11) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `nombre`, `descripcion`, `fecha`, `localidad_id`, `ubicacion`) VALUES
(1, 'Feria de Artesanía', 'Exposición de artesanías locales', '2024-05-20', 2, 'Parque'),
(3, 'Quedada de rap', 'Concurso de rap joven', '2024-03-14', 1, 'Plaza de las Mercedes'),
(6, 'Petanca', 'Quedada para jugar a la petanca', '2024-03-21', 2, 'Plaza España'),
(14, 'Womad', 'Fiestaaa', '2024-05-11', 11, 'Plaza del centro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventosdepago`
--

CREATE TABLE `eventosdepago` (
  `id` int(11) NOT NULL,
  `precio` float DEFAULT NULL,
  `venta_entrada` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventosgratis`
--

CREATE TABLE `eventosgratis` (
  `id` int(4) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `descripcionAdicional` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `imagen` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id`, `nombre`, `provincia`, `imagen`) VALUES
(1, 'Azuaga', 'Badajoz', NULL),
(2, 'Don Benito', 'Badajoz', NULL),
(4, 'Miajadas', 'Caceres', NULL),
(5, 'Quintana', 'Badajoz', NULL),
(6, 'Desconocida', NULL, NULL),
(7, 'Badajoz', 'Badajoz', NULL),
(8, 'Merida', 'Badajoz', NULL),
(9, 'Almendralejo', 'Badajoz', NULL),
(10, 'Zafra', 'Badajoz', NULL),
(11, 'Caceres', 'Caceres', NULL),
(12, 'Plasencia', 'Caceres', NULL),
(13, 'Navalmoral de la Mata', 'Caceres', NULL),
(14, 'Villanueva de la Serena', 'Badajoz', NULL),
(15, 'Montijo', 'Badajoz', NULL),
(16, 'Olivenza', 'Badajoz', NULL),
(17, 'Fregenal de la Sierra', 'Badajoz', NULL),
(18, 'Fuente de Cantos', 'Badajoz', NULL),
(19, 'Fuente del Maestre', 'Badajoz', NULL),
(20, 'Herrera del Duque', 'Badajoz', NULL),
(21, 'Trujillo', 'Caceres', NULL),
(22, 'Jaraiz de la Vera', 'Caceres', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `estadoCivil` varchar(20) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `passwrd` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `localidad_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellidos`, `sexo`, `estadoCivil`, `user`, `passwrd`, `edad`, `admin`, `localidad_id`) VALUES
(1, 'Manuel', 'Esquivel', 'Hombre', 'Casado', 'admin', 'admin', 19, 1, 1),
(5, 'Rodolfo', 'Perez', 'Hombre trans', 'Soltero', 'rodolfo', '12345', 23, 0, 2),
(9, 'Diego', 'Martinez Soria', 'Hombre', 'sin comentario', 'diego33', 'jesulin', 33, 0, 4),
(10, 'Kevin', 'Tavares', 'Hombre', 'Casado', 'kevin01', '123', 23, 0, 2),
(12, 'Cusumusu', 'Gavilanes', 'Apache de combate', 'Viudo', 'cucu_01', '123456', 56, 0, 6),
(21, 'prueba', 'prueba', 'Otro', 'si', 'pruebaa', '123', 13, 0, 1),
(24, 'Samuel', 'Gonzalez Pereira', 'Hombre', 'Soltero', 'vegeta', '777', 31, 0, 2),
(25, '.', '.', 'Hombre', '.', '.', '........', 3, 0, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_evento`
--

CREATE TABLE `persona_evento` (
  `id_Persona` int(11) NOT NULL,
  `id_Evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona_evento`
--

INSERT INTO `persona_evento` (`id_Persona`, `id_Evento`) VALUES
(5, 1),
(5, 3),
(21, 14),
(24, 1),
(24, 3),
(24, 6),
(24, 14),
(25, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localidad_id` (`localidad_id`);

--
-- Indices de la tabla `eventosdepago`
--
ALTER TABLE `eventosdepago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventosgratis`
--
ALTER TABLE `eventosgratis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localidad_id` (`localidad_id`);

--
-- Indices de la tabla `persona_evento`
--
ALTER TABLE `persona_evento`
  ADD PRIMARY KEY (`id_Persona`,`id_Evento`),
  ADD KEY `id_Evento` (`id_Evento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`localidad_id`) REFERENCES `localidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventosdepago`
--
ALTER TABLE `eventosdepago`
  ADD CONSTRAINT `fk_eventosDePago_eventos` FOREIGN KEY (`id`) REFERENCES `eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventosgratis`
--
ALTER TABLE `eventosgratis`
  ADD CONSTRAINT `fk_eventosGratis_eventos` FOREIGN KEY (`id`) REFERENCES `eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`localidad_id`) REFERENCES `localidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona_evento`
--
ALTER TABLE `persona_evento`
  ADD CONSTRAINT `persona_evento_ibfk_1` FOREIGN KEY (`id_Persona`) REFERENCES `personas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_evento_ibfk_2` FOREIGN KEY (`id_Evento`) REFERENCES `eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
