-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2021 a las 01:15:40
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `id` int(10) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `operacion` varchar(200) NOT NULL,
  `propiedad` varchar(200) NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `precio` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`id`, `categoria`, `operacion`, `propiedad`, `imagen`, `descripcion`, `precio`) VALUES
(3, 'casa', 'alquiler temporario', 'Casa en Pinamar', 'imagenes/2.jpg', 'casa en pinamar cerca de la playa, equipada para 6 personas, amplia y luminosa, con pileta', 'consultar'),
(4, 'venta', 'Venta', 'Casa amplia y luminosa', 'imagenes/casa1.jpg', 'Hermosa casa en zona residencial.200m2. ', '150.000'),
(5, 'Terreno', 'Venta', 'Terreno arbolado esquina', 'imagenes/campo2.jpg', 'Espectacular lote en zona residencial.900m2. Acceso a servicios. Gas natural. Luz eléctrica', '50.000'),
(6, 'Campo', 'Alquiler', 'Campo producción agrícola', 'imagenes/campo3.jpg', '550has. de campo alto, excelente producción, apto diversos cultivos', 'Consultar precio');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
