-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 00:19:13
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `enfermeria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientepersona`
--

CREATE TABLE `pacientepersona` (
  `pac_id` smallint(6) NOT NULL,
  `pac_Dni` int(11) NOT NULL,
  `pac_Apellido` varchar(60) NOT NULL,
  `pac_Nombre` varchar(60) NOT NULL,
  `pac_Domicilio` varchar(60) NOT NULL,
  `pac_Telefono` varchar(60) DEFAULT NULL,
  `pac_email` varchar(60) NOT NULL,
  `pac_Edad` tinyint(4) NOT NULL,
  `pac_Fech_nac` date NOT NULL,
  `pac_Sexo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabla datos personales paciente';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pract_enfermero`
--

CREATE TABLE `pract_enfermero` (
  `prac_id` smallint(6) NOT NULL,
  `pract_dni` int(11) NOT NULL,
  `pract_Cuil` smallint(60) NOT NULL,
  `pract_Nombre` varchar(60) NOT NULL,
  `pract_Apellido` varchar(60) NOT NULL,
  `pract_domicilio` varchar(60) NOT NULL,
  `pract_telefono` varchar(60) DEFAULT NULL,
  `pract_sexo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabla datos practicantes enfermeria';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pacientepersona`
--
ALTER TABLE `pacientepersona`
  ADD PRIMARY KEY (`pac_id`),
  ADD KEY `index` (`pac_Dni`);

--
-- Indices de la tabla `pract_enfermero`
--
ALTER TABLE `pract_enfermero`
  ADD PRIMARY KEY (`prac_id`),
  ADD KEY `dni` (`pract_dni`),
  ADD KEY `cuil` (`pract_Cuil`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pacientepersona`
--
ALTER TABLE `pacientepersona`
  MODIFY `pac_id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pract_enfermero`
--
ALTER TABLE `pract_enfermero`
  MODIFY `prac_id` smallint(6) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
