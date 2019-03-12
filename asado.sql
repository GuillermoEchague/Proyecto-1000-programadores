-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2019 a las 06:26:19
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `copas`
--

CREATE TABLE `copas` (
  `vino_blanco` varchar(34) DEFAULT NULL,
  `Espumoso` varchar(37) DEFAULT NULL,
  `vino_tinto` varchar(36) DEFAULT NULL,
  `vino_dulce` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `copas`
--

INSERT INTO `copas` (`vino_blanco`, `Espumoso`, `vino_tinto`, `vino_dulce`) VALUES
('Tazon en forma de letra U  ', 'copa de forma de flauta. ', 'Tazon en forma de letra U  ', ''),
('Mas recto que una de tinto.', 'Es larga y estrecha de tallo largo', 'Mas grande que una de blanco.', ''),
('tamano un poco menor a la de tinto', 'forma de cuerpo mucho mas estilizada.', 'Es algo mas alta que la copa Borgona', ''),
('Apertura algo mas abierta.', '', 'Figura mas estilizada.', ''),
('largo del tallo algo mayor', '', 'El corte recto de su apertura', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cortes_vacuno`
--

CREATE TABLE `cortes_vacuno` (
  `numero` int(2) DEFAULT NULL,
  `Cortes` varchar(14) DEFAULT NULL,
  `Horno` int(1) DEFAULT NULL,
  `Cacerola` int(1) DEFAULT NULL,
  `Parrilla` int(1) DEFAULT NULL,
  `Sarten` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cortes_vacuno`
--

INSERT INTO `cortes_vacuno` (`numero`, `Cortes`, `Horno`, `Cacerola`, `Parrilla`, `Sarten`) VALUES
(1, 'Abastero', 2, 0, 1, 0),
(2, 'Asado de tira', 2, 0, 1, 0),
(3, 'Asiento', 1, 0, 0, 2),
(4, 'Carnicero', 2, 0, 1, 0),
(5, 'Choclillo', 2, 1, 0, 0),
(6, 'Cola de vacuno', 0, 1, 0, 0),
(7, 'Coluda', 2, 1, 0, 0),
(8, 'Entrana', 0, 0, 1, 2),
(9, 'Filete', 1, 0, 0, 2),
(10, 'Ganso', 0, 1, 0, 2),
(11, 'Huachalomo', 0, 2, 1, 0),
(12, 'Lomo Liso', 0, 0, 1, 2),
(13, 'Lomo Vetado', 0, 0, 1, 2),
(14, 'Malaya', 0, 1, 0, 0),
(15, 'Osobuco', 0, 1, 0, 0),
(16, 'Palanca', 0, 2, 1, 0),
(17, 'Plateada', 1, 2, 0, 0),
(18, 'Pollo Barriga', 0, 1, 2, 0),
(19, 'Pollo Ganso', 0, 1, 0, 2),
(20, 'Posta Negra', 0, 1, 0, 2),
(21, 'Posta Paleta', 0, 1, 0, 2),
(22, 'Pota Rosada', 0, 1, 0, 2),
(23, 'Punta Ganso', 1, 2, 0, 0),
(24, 'Punta Paleta', 0, 0, 1, 2),
(25, 'Punta Picana', 1, 0, 2, 0),
(26, 'Sobrecostilla', 0, 2, 1, 0),
(27, 'Tapabarriga', 0, 2, 1, 0),
(28, 'Tapapecho', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_vacuno`
--

CREATE TABLE `datos_vacuno` (
  `Cortes` varchar(21) DEFAULT NULL,
  `Peso_corte_mayor_kg` varchar(3) DEFAULT NULL,
  `Peso_corte_menor_kg` varchar(3) DEFAULT NULL,
  `Rendimiento_mayor_Personas` varchar(3) DEFAULT NULL,
  `Rendimiento_menor_Personas` varchar(3) DEFAULT NULL,
  `Tiempo_mayor_hr` varchar(3) DEFAULT NULL,
  `Tiempo_menor_hr` varchar(3) DEFAULT NULL,
  `Temperatura` varchar(13) DEFAULT NULL,
  `Combustible_kgcarbon-kgcarne` varchar(3) DEFAULT NULL,
  `precio` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_vacuno`
--

INSERT INTO `datos_vacuno` (`Cortes`, `Peso_corte_mayor_kg`, `Peso_corte_menor_kg`, `Rendimiento_mayor_Personas`, `Rendimiento_menor_Personas`, `Tiempo_mayor_hr`, `Tiempo_menor_hr`, `Temperatura`, `Combustible_kgcarbon-kgcarne`, `precio`) VALUES
('CostillaDerecha', '8', '7', '8', '7', '1.5', '1.5', 'Moderada', '2', 7990),
('AsadodetiraAngosta', '0.3', '0.3', '0.5', '0.5', '0.3', '0.3', 'Fuerte', '1', 6990),
('AsadodetiraAncha', '0.6', '0.6', '1', '1', '1.5', '1.5', 'Moderada-Alta', '1.5', 6990),
('Tapabarriga', '3.5', '3', '9', '7', '2.5', '2.5', 'Moderada', '2', 2990),
('PuntaPicana', '1.6', '1.2', '4', '3', '1.5', '1.5', 'Moderada', '1.5', 7990),
('Malaya', '1.6', '1.2', '4', '3', '0.3', '0.3', 'Alta', '1', 7990),
('Filete', '3.5', '2.5', '9', '6', '1.2', '1.2', 'Moderada', '1', 7990),
('LomoVetado', '3.5', '2.5', '9', '6', '2.5', '2.5', 'Moderada', '2', 8990),
('OjodeLomo', '1.3', '1', '4', '4', '0.5', '0.5', 'Moderada-Alta', '1', 8990),
('LomoVetadoconcostilla', '0.7', '0.7', '1', '1', '0.5', '0.5', 'Moderada-Alta', '1', 8990),
('LomoLiso', '6', '5', '15', '12', '1.8', '1.8', 'Moderada', '1.5', 9990),
('Entrecot', '0.8', '0.8', '1', '1', '0.8', '0.8', 'Moderada-Alta', '1', 8990),
('PuntadeGanso', '2.5', '2', '7', '5', '2', '2', 'Moderada', '1.5', 8990),
('Plateada', '3', '2.5', '8', '6', '2.5', '2.5', 'Moderada', '2', 6990),
('PolloBarriga', '0.6', '0.4', '3', '2', '0.8', '0.8', 'Moderada', '1', 4900),
('Entrana', '0.7', '0.5', '3', '3', '1.5', '0.5', 'Moderada', '1', 12900),
('Palanca', '1', '0.8', '3', '3', '0.7', '0.7', 'Moderada-Alta', '1', 10990),
('Abastero', '1.6', '', '3', '', '0.8', '0.8', 'Moderada', '1', 6990),
('Carnicero', '1.5', '', '3', '', '1', '1', 'Moderada', '1', 4990),
('SobreCostilla', '1', '', '2', '', '2.5', '2.5', 'Moderada', '2', 8190);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_vacuno2`
--

CREATE TABLE `datos_vacuno2` (
  `Cortes` varchar(24) DEFAULT NULL,
  `Peso_corte_mayor_kg` varchar(3) DEFAULT NULL,
  `Peso_corte_menor_kg` varchar(3) DEFAULT NULL,
  `Rendimiento_mayor_Personas` varchar(3) DEFAULT NULL,
  `Rendimiento_menor_Personas` varchar(3) DEFAULT NULL,
  `Tiempo_mayor_hr` varchar(3) DEFAULT NULL,
  `Tiempo_menor_hr` varchar(3) DEFAULT NULL,
  `Temperatura` varchar(15) DEFAULT NULL,
  `Combustible_kgcarbon-kgcarne` varchar(3) DEFAULT NULL,
  `precio` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_vacuno2`
--

INSERT INTO `datos_vacuno2` (`Cortes`, `Peso_corte_mayor_kg`, `Peso_corte_menor_kg`, `Rendimiento_mayor_Personas`, `Rendimiento_menor_Personas`, `Tiempo_mayor_hr`, `Tiempo_menor_hr`, `Temperatura`, `Combustible_kgcarbon-kgcarne`, `precio`) VALUES
('Costilla Derecha', '8', '7', '8', '7', '1,5', '1,5', 'Moderada', '2', 7990),
('Asado de tira Angosta', '0,3', '0,3', '0,5', '0,5', '0,3', '0,3', 'Fuerte', '1', 6990),
('Asado de tira Ancha', '0,6', '0,6', '1', '1', '1,5', '1,5', 'Moderada-Alta', '1,5', 6990),
('Tapabarriga', '3,5', '3', '9', '7', '2,5', '2,5', 'Moderada', '2', 2990),
('Punta Picana', '1,6', '1,2', '4', '3', '1,5', '1,5', 'Moderada', '1,5', 7990),
('Malaya', '1,6', '1,2', '4', '3', '0,3', '0,3', 'Alta', '1', 7990),
('Filete', '3,5', '2,5', '9', '6', '1,2', '1,2', 'Moderada', '1', 7990),
('Lomo Vetado', '3,5', '2,5', '9', '6', '2,5', '2,5', 'Moderada', '2', 8990),
('Ojo de Lomo', '1,3', '1', '4', '4', '0,5', '0,5', 'Moderada - Alta', '1', 8990),
('Lomo Vetado con costilla', '0,7', '0,7', '1', '1', '0,5', '0,5', 'Moderada - Alta', '1', 8990),
('Lomo Liso', '6', '5', '15', '12', '1,8', '1,8', 'Moderada', '1,5', 9990),
('Entrecot', '0,8', '0,8', '1', '1', '0,8', '0,8', 'Moderada - Alta', '1', 8990),
('Punta de Ganso', '2,5', '2', '7', '5', '2', '2', 'Moderada', '1,5', 8990),
('Plateada', '3', '2,5', '8', '6', '2,5', '2,5', 'Moderada', '2', 6990),
('Pollo Barriga', '0,6', '0,4', '3', '2', '0,8', '0,8', 'Moderada', '1', 4900),
('Entrana', '0,7', '0,5', '3', '3', '1,5', '0,5', 'Moderada', '1', 12900),
('Palanca', '1', '0,8', '3', '3', '0,7', '0,7', 'Moderada - Alta', '1', 10990),
('Abastero', '1,6', '', '3', '', '0,8', '0,8', 'Moderada', '1', 6990),
('Carnicero', '1,5', '', '3', '', '1', '1', 'Moderada', '1', 4990),
('SobreCostilla', '1', '', '2', '', '2,5', '2,5', 'Moderada', '2', 8190);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eleccion`
--

CREATE TABLE `eleccion` (
  `Prioridad` int(1) DEFAULT NULL,
  `Eleccion` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eleccion`
--

INSERT INTO `eleccion` (`Prioridad`, `Eleccion`) VALUES
(1, 'Preparacion Principal'),
(2, 'Preparacion Secundaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio_cerdo`
--

CREATE TABLE `precio_cerdo` (
  `numero` int(1) DEFAULT NULL,
  `Cerdo` varchar(15) DEFAULT NULL,
  `precio` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `precio_cerdo`
--

INSERT INTO `precio_cerdo` (`numero`, `Cerdo`, `precio`) VALUES
(1, 'Malaya', 7210),
(2, 'Plateada', 5590),
(3, 'Asado Carnicero', 4590),
(4, 'Abastero', 4690);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio_pollo`
--

CREATE TABLE `precio_pollo` (
  `numero` int(1) DEFAULT NULL,
  `pollo` varchar(14) DEFAULT NULL,
  `precio` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `precio_pollo`
--

INSERT INTO `precio_pollo` (`numero`, `pollo`, `precio`) VALUES
(1, 'pollo entero', 1990),
(2, 'Truto de pollo', 1990);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio_vacuno`
--

CREATE TABLE `precio_vacuno` (
  `numero` int(2) DEFAULT NULL,
  `Cortes` varchar(15) DEFAULT NULL,
  `precio` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `precio_vacuno`
--

INSERT INTO `precio_vacuno` (`numero`, `Cortes`, `precio`) VALUES
(1, 'Abastero', '6990'),
(2, 'Asado de tira', '6990'),
(3, 'Asiento', '7990'),
(4, 'Asado Carnicero', '4990'),
(5, 'Choclillo', '5590'),
(6, 'Cola de vacuno', ''),
(7, 'Coluda', ''),
(8, 'Entrana', '12900'),
(9, 'Filete', '7990'),
(10, 'Ganso', '9990'),
(11, 'Huachalomo', '8190'),
(12, 'Lomo Liso', '9990'),
(13, 'Lomo Vetado', '8990'),
(14, 'Malaya', ''),
(15, 'Osobuco', ''),
(16, 'Palanca', '10990'),
(17, 'Plateada', '6990'),
(18, 'Pollo Barriga', ''),
(19, 'Pollo Ganso', '4900'),
(20, 'Posta Negra', '8190'),
(21, 'Posta Paleta', '5990'),
(22, 'Posta Rosada', '8190'),
(23, 'Punta Ganso', '8990'),
(24, 'Punta Paleta', '5290'),
(25, 'Punta Picana', '7990'),
(26, 'Sobrecostilla', '8190'),
(27, 'Tapabarriga', '2990'),
(28, 'Tapapecho', '3090'),
(29, 'Asado Americano', '6990');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparacion`
--

CREATE TABLE `preparacion` (
  `Preparacion` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `preparacion`
--

INSERT INTO `preparacion` (`Preparacion`) VALUES
('Horno'),
('Cacerola'),
('Parrilla'),
('Sarten');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seleccion_vino`
--

CREATE TABLE `seleccion_vino` (
  `Variedad` varchar(18) DEFAULT NULL,
  `carpaccio` varchar(9) DEFAULT NULL,
  `tartaro` varchar(7) DEFAULT NULL,
  `plancha` varchar(7) DEFAULT NULL,
  `res_parrilla` varchar(16) DEFAULT NULL,
  `Horno` varchar(5) DEFAULT NULL,
  `roast_beef` varchar(10) DEFAULT NULL,
  `cerdo` varchar(5) DEFAULT NULL,
  `cordero` varchar(7) DEFAULT NULL,
  `chivo` varchar(5) DEFAULT NULL,
  `aves` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seleccion_vino`
--

INSERT INTO `seleccion_vino` (`Variedad`, `carpaccio`, `tartaro`, `plancha`, `res_parrilla`, `Horno`, `roast_beef`, `cerdo`, `cordero`, `chivo`, `aves`) VALUES
('Cabernet Sauvignon', '', '', '', 'res parrilla', 'Horno', 'roast beef', '', 'cordero', '', 'aves'),
('Carmener', '', '', 'plancha', 'res parrilla', '', 'roast beef', 'cerdo', 'cordero', '', ''),
('Syrah', '', '', '', 'res parrilla', 'Horno', '', '', 'cordero', 'chivo', 'aves'),
('Merlot', 'carpaccio', '', 'plancha', 'Ternera parrilla', 'Horno', 'roast beef', '', '', 'chivo', 'aves'),
('Rose', '', 'tartaro', '', '', '', '', '', '', '', ''),
('Malbec', '', '', '', 'res parrilla', 'Horno', 'roast beef', '', '', 'chivo', ''),
('Pinot Noir', '', '', '', 'Aves Parrilla', '', '', '', '', '', ''),
('Viognier', '', '', '', '', '', '', 'cerdo', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temperatura`
--

CREATE TABLE `temperatura` (
  `Temperatura` varchar(15) DEFAULT NULL,
  `Grado_Menor` int(3) DEFAULT NULL,
  `Grado_Mayor` int(3) DEFAULT NULL,
  `Tiempo_Menor` int(1) DEFAULT NULL,
  `Tiempo_Mayor` varchar(1) DEFAULT NULL,
  `Uso` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `temperatura`
--

INSERT INTO `temperatura` (`Temperatura`, `Grado_Menor`, `Grado_Mayor`, `Tiempo_Menor`, `Tiempo_Mayor`, `Uso`) VALUES
('Bajo', 0, 90, 7, '', 'Mantiene la carne caliente mientras se sirve'),
('Moderada', 90, 120, 5, '6', 'Cortes gruesos y animales enteros'),
('Moderada - Alta', 120, 170, 3, '4', 'Cortes delgados y bifes'),
('Fuerte', 170, 200, 1, '2', 'Sellar la carne no mas de 10 min por lado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traduccion`
--

CREATE TABLE `traduccion` (
  `Argentina` varchar(25) DEFAULT NULL,
  `Brasil` varchar(20) DEFAULT NULL,
  `Chile` varchar(25) DEFAULT NULL,
  `Espana` varchar(18) DEFAULT NULL,
  `Mexico` varchar(18) DEFAULT NULL,
  `Peru` varchar(25) DEFAULT NULL,
  `USA` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `traduccion`
--

INSERT INTO `traduccion` (`Argentina`, `Brasil`, `Chile`, `Espana`, `Mexico`, `Peru`, `USA`) VALUES
('Lomo', 'Filete Mignon', 'Filete', 'Solomillo', 'Lomo', 'Churrasco Largo', 'Tenderloin'),
('Bife Chorizo o Angosto', 'Contra File', 'Lomo Liso', 'Lomo', 'Bife Chico', 'Lomo', 'striploin'),
('Corazon de cuadril', 'Alcatra', 'Asiento de Picana', 'Rumsteak', '', 'Asado de Cadera', 'Rump'),
('Colita de cuadril', 'Maminha', 'Punta picana', 'Babilla', 'Empuje', 'Bistec de cadera', 'rump Steak'),
('Tapa de cuadril', 'Picanha', 'Punta de Ganso', '', '', 'Cadera', 'Top Round'),
('Bife de Vac?o ', 'Bife de vazio', 'Palanca', '', 'Bife de Vacio', 'Malaya', 'Flank Steak'),
('Vacio', 'vazio', 'Tapabarriga', 'Falda', 'Vacio', 'Vacio', 'Thin Flank'),
('Bife Ancho', 'Ponta de contra file', 'Lomo Vetado', 'Lomo Alto sin tapa', 'Fore ribs boneless', 'Churrasco Redondo', 'Cube roll / rib-eye'),
('Asado', 'Sobre Costela', 'Sobrecostilla', '', '', 'Asado de Aguja', 'ribs roast'),
('Bife de Paleta', '', 'Asado Carnicero', '', '', 'Pecho (Anterior)', 'Butcher\'s roast'),
('Tapa de Asado', 'Acem', 'Plateada', '', 'Planchuela', '', 'Short Plate'),
('Asado', 'Costela', 'Asado de Tira', 'Costillar', 'Costilla Cargada', 'Sancochado de costilla', 'Short ribs'),
('Centro de Entrana', 'Fraldhina', 'Pollo Barriga', '', 'arrachera de Falda', 'Centro de Entrana', 'Thick Skirt'),
('Entrana Fina', 'Entranha', 'Entrana', 'Delgado Entero', 'Arrachera', 'Entrana', 'skirt Steak'),
('Costillar - Asado de tira', 'Costelao - costela', 'Costillar - asado de tira', '', 'Costilla Cargada', 'Costillar - asado de tira', 'ribs - short ribs'),
('Matambre', 'Matambre', 'Malaya', '', '', 'Malaya', 'Matambre'),
('Bife Americano', '', 'Entrecot', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variedad_vino`
--

CREATE TABLE `variedad_vino` (
  `Blancos` varchar(15) DEFAULT NULL,
  `Dulces` varchar(9) DEFAULT NULL,
  `Rosados` varchar(10) DEFAULT NULL,
  `Espumosos` varchar(9) DEFAULT NULL,
  `Tintos` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `variedad_vino`
--

INSERT INTO `variedad_vino` (`Blancos`, `Dulces`, `Rosados`, `Espumosos`, `Tintos`) VALUES
('Sauvignon Blanc', 'Sauternes', 'Pinot Noir', 'Champagne', 'Merlot'),
('Chardonnay', 'Licores', 'Rose', 'Prosecco', 'Syrah'),
('Moscato', '', '', '', 'Cabernet Sauvignon'),
('', '', '', '', 'Carmener'),
('', '', '', '', 'Malbec'),
('', '', '', '', 'Viognier');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
