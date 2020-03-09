-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2020 a las 18:34:20
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprende`
--
CREATE DATABASE IF NOT EXISTS `Pokemon` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `Pokemon`;

CREATE TABLE `aprende` (
  `Pokemon_idPokemon` int(11) NOT NULL,
  `Movimientos_idMovimientos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aprende`
--

INSERT INTO `aprende` (`Pokemon_idPokemon`, `Movimientos_idMovimientos`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 1),
(2, 2),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 4),
(3, 7),
(3, 10),
(3, 16),
(3, 17),
(3, 19),
(4, 5),
(4, 6),
(4, 7),
(4, 10),
(4, 11),
(4, 14),
(4, 15),
(5, 9),
(5, 12),
(5, 13),
(5, 17),
(5, 18),
(5, 20),
(6, 7),
(6, 10),
(6, 12),
(6, 18),
(6, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `idHabilidad` int(11) NOT NULL,
  `NomHab` varchar(45) NOT NULL,
  `Descripcion` varchar(120) NOT NULL,
  `Pokemon_idPokemon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habilidad`
--

INSERT INTO `habilidad` (`idHabilidad`, `NomHab`, `Descripcion`, `Pokemon_idPokemon`) VALUES
(1, 'Cuerpo Puro', 'Evita que bajen las caracteristicas del usuario', 1),
(2, 'Allanamiento', 'El usuario ignora las pantallas y los sustitutos enemigos', 1),
(3, 'Cuerpo Maldito', 'Anula el ultimo movimiento usado por el rival', 1),
(4, 'Mar Llamas ', 'Potencia los ataques de tipo fuego en un apuro', 2),
(5, 'Poder Solar', 'Aumenta el ataque especial cuando el sol esta activo', 2),
(6, 'Mal Sueño', 'Si un enemigo esta dormido, este pierde puntos de salud en cada turno', 3),
(7, 'Afortunado', 'Aumenta la probabilidad de asestar golpes criticos', 4),
(8, 'Entusiasmo', 'Aumenta el poder de todos los ataques, pero disminuye la precision de estos', 4),
(9, 'Dicha', 'Dobla la probabilidad de que se active el efecto secundario de un ataque', 4),
(10, 'Justiciero', 'Sube el ataque del usuario si este es dañado por un movimiento de tipo siniestro', 5),
(11, 'Foco Interno', 'El usuario no puede retroceder', 5),
(12, 'Pies Veloces', 'Dobla la velocidad del usuario si este esta quemado', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `idMovimientos` int(11) NOT NULL,
  `NomMov` varchar(45) NOT NULL,
  `Categoria` varchar(45) NOT NULL,
  `Daño` int(11) DEFAULT NULL,
  `Precision` int(11) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`idMovimientos`, `NomMov`, `Categoria`, `Daño`, `Precision`, `Tipo`) VALUES
(1, 'Danza Dragon', 'Estado', NULL, 100, 'Dragon'),
(2, 'Garra Dragon', 'Fisico', 80, 100, 'Dragon'),
(3, 'Ala de Acero', 'Fisico', 70, 90, 'Acero'),
(4, 'Golpe Fantasma', 'Fisico', 90, 100, 'Fantasma'),
(5, 'Lanzallamas', 'Especial', 90, 100, 'Fuego'),
(6, 'Hidrobomba', 'Especial', 110, 80, 'Agua'),
(7, 'Protecion', 'Estado', NULL, 100, 'Normal'),
(8, 'Acrobata', 'Fisico', 65, 100, 'Volador'),
(9, 'Terremoto', 'Fisico', 100, 100, 'Tierra'),
(10, 'Pulso Dragon', 'Especial', 85, 100, 'Dragon'),
(11, 'Vendaval', 'Especial', 110, 70, 'Volador'),
(12, 'Puño Trueno', 'Fisico', 75, 100, 'Electrico'),
(13, 'Danza Espada', 'Estado', NULL, 100, 'Normal'),
(14, 'Respiro', 'Estado', NULL, 100, 'Volador'),
(15, 'Tajo Aereo', 'Especial', 75, 100, 'Volador'),
(16, 'Pulso Umbrio', 'Especial', 80, 100, 'Siniestro'),
(17, 'Puño Drenaje', 'Fisico', 75, 100, 'Lucha'),
(18, 'Ataque Rapido', 'Fisico', 40, 100, 'Normal'),
(19, 'Toxico', 'Estado', NULL, 100, 'Veneno'),
(20, 'Cola Ferrea', 'Fisico', 100, 75, 'Acero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `idPokemon` int(11) NOT NULL,
  `NomPok` varchar(45) NOT NULL,
  `Objeto` varchar(45) DEFAULT NULL,
  `Genero` varchar(9) DEFAULT NULL,
  `Shiny` varchar(2) NOT NULL,
  `Tipos` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`idPokemon`, `NomPok`, `Objeto`, `Genero`, `Shiny`, `Tipos`) VALUES
(1, 'Dragapult', 'Vidaesfera', 'Masculino', 'Si', 'Dragon y Fantasma'),
(2, 'Charizard', 'Carbon', 'Femenino', 'Si', 'Fuego y Volador'),
(3, 'Darkrai', NULL, NULL, 'Si', 'Siniestro'),
(4, 'Togekiss', NULL, NULL, 'No', 'Volador y Hada'),
(5, 'Lucario', NULL, NULL, 'No', 'Acero y Lucha'),
(6, 'Jolteon', NULL, NULL, 'No', 'Electrico');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprende`
--
ALTER TABLE `aprende`
  ADD PRIMARY KEY (`Pokemon_idPokemon`,`Movimientos_idMovimientos`),
  ADD KEY `fk_Aprende_Pokemon_idx` (`Pokemon_idPokemon`),
  ADD KEY `fk_Aprende_Movimientos1_idx` (`Movimientos_idMovimientos`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`idHabilidad`),
  ADD KEY `fk_Habilidad_Pokemon1_idx` (`Pokemon_idPokemon`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`idMovimientos`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`idPokemon`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aprende`
--
ALTER TABLE `aprende`
  ADD CONSTRAINT `fk_Aprende_Movimientos1` FOREIGN KEY (`Movimientos_idMovimientos`) REFERENCES `movimientos` (`idMovimientos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Aprende_Pokemon` FOREIGN KEY (`Pokemon_idPokemon`) REFERENCES `pokemon` (`idPokemon`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD CONSTRAINT `fk_Habilidad_Pokemon1` FOREIGN KEY (`Pokemon_idPokemon`) REFERENCES `pokemon` (`idPokemon`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
