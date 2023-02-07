-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-02-2023 a las 17:59:05
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuariosfunval`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacionesm`
--

DROP TABLE IF EXISTS `calificacionesm`;
CREATE TABLE IF NOT EXISTS `calificacionesm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profesor` varchar(50) NOT NULL,
  `alumno` varchar(50) NOT NULL,
  `calificacion` double NOT NULL,
  `comentarios` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `calificacionesm`
--

INSERT INTO `calificacionesm` (`id`, `profesor`, `alumno`, `calificacion`, `comentarios`) VALUES
(1, 'Manuel', 'Jared', 9, 'Bien hecho, recuerda la chicharronera.'),
(2, 'Manuel', 'Felix', 7, 'Debes repasar mas ecuaciones diferenciales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacionesp`
--

DROP TABLE IF EXISTS `calificacionesp`;
CREATE TABLE IF NOT EXISTS `calificacionesp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profesor` varchar(50) NOT NULL,
  `alumno` varchar(50) NOT NULL,
  `calificacion` double NOT NULL,
  `comentarios` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `calificacionesp`
--

INSERT INTO `calificacionesp` (`id`, `profesor`, `alumno`, `calificacion`, `comentarios`) VALUES
(1, 'Jared', 'Jared', 9, 'Bien hecho, recuerda tus bases de POO.'),
(2, 'Jared', 'Ivan', 6.5, 'Repasa tus notas sobre POO, deja de jugar en clase. Puedes mejorar.'),
(3, 'Jared', 'Juan', 8.5, 'Esfuerzate un poco mas en los arreglos. '),
(4, 'Jared', 'Pedro', 7.7, 'Se puede mejorar tu optimizacion de codigo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaionesq`
--

DROP TABLE IF EXISTS `calificaionesq`;
CREATE TABLE IF NOT EXISTS `calificaionesq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profesor` varchar(50) NOT NULL,
  `alumno` varchar(50) NOT NULL,
  `calificacion` double NOT NULL,
  `comentarios` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `calificaionesq`
--

INSERT INTO `calificaionesq` (`id`, `profesor`, `alumno`, `calificacion`, `comentarios`) VALUES
(1, 'Pedro', 'Jared', 6.5, 'Falta a clase regularmente, no entrega practicas de laboratorio, falta repasar ciclo de Krebs.'),
(2, 'Pedro', 'Felix', 8.3, 'No lleva bata de laboratorio, falta por entrenamientos de futbol americano.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `descripcion`) VALUES
(1, 'cliente'),
(2, 'maestro'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

DROP TABLE IF EXISTS `datos`;
CREATE TABLE IF NOT EXISTS `datos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contraseña` varchar(300) NOT NULL,
  `id_cargo` int NOT NULL,
  `id_materia` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cargo` (`id_cargo`),
  KEY `id_materia` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `name`, `lastname`, `email`, `contraseña`, `id_cargo`, `id_materia`) VALUES
(1, 'Jared', 'Castillo', 'jared@gmail.com', 'Jinchuriki21', 1, 0),
(2, 'Jose', 'Talavera', 'felix@gmail.com', 'Jared123', 1, 0),
(3, 'Pedro', 'Olvera', 'pedroquimica@gmail.com', 'pedro123', 2, 1),
(4, 'Manuel', 'Reguera', 'manuelmate@gmail.com', 'manuel123', 2, 2),
(5, 'Jared', 'Castillo', 'jared123@gmail.com', '123jared', 2, 3),
(7, 'El Hechizero', 'Lucas', 'elhechizero@gmail.com', 'hechizero123', 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

DROP TABLE IF EXISTS `materias`;
CREATE TABLE IF NOT EXISTS `materias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `materia` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `materia`) VALUES
(0, 'alumno'),
(1, 'Quimica'),
(2, 'Matematicas'),
(3, 'Programacion'),
(4, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

DROP TABLE IF EXISTS `profesores`;
CREATE TABLE IF NOT EXISTS `profesores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `materia` varchar(50) NOT NULL,
  `desempeno` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `apellido`, `materia`, `desempeno`) VALUES
(1, 'Pedro', 'Olvera', 'Quimica', 'Excelente profesor, llega temprano y cumple con su funcion de docente.'),
(2, 'Manuel', 'Reguera', 'Matematicas', 'Llega tarde siempre, no tiene buena presentacion y hemos recibido quejas de comprtamiento indebido en la instalacion (fuma dentro del aula).'),
(3, 'Alberto', 'Villegas', 'Programacion', 'Se le ha visto en horarios de clase en la cafeteria y jugando pokemon.');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos`
--
ALTER TABLE `datos`
  ADD CONSTRAINT `datos_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`),
  ADD CONSTRAINT `datos_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
