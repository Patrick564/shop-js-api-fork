-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: us-cdbr-east-06.cleardb.net
-- Tiempo de generación: 07-07-2022 a las 00:46:01
-- Versión del servidor: 5.6.50-log
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `heroku_32cdc319c2cafc6`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(1) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`) VALUES
(1, 'Carpa', 'carpas familiares, carpas individuales , etc.'),
(2, 'Coolers', 'cooler combo, nevera , lonchera térmica ,etc,'),
(3, 'Colhon Inflable', 'Sofa cama inflable,Colhon King ,familiar,etc'),
(4, 'Accesorios para camping', 'Colchoneta, inflador, linterna, cubiertos, etc.'),
(5, 'Mesa y Silla Plegable', 'Silla plegable ,banquillo ,mesa collection,etc'),
(6, 'Bolsa de dormir', 'Bolsa de dormir momia,Hamaca,recto ,etc'),
(7, 'Mochila camping', 'Mochila,cangurera,mochila de emergencia,etc'),
(8, 'mochilas', 'cangurera ,mochila ,cartera,etc'),
(9, 'polos', 'veestidos,polo,casaca'),
(14, 'pelusa', 'te odio pelisa'),
(24, 'productos', 'aparatos de supervivencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriados`
--

CREATE TABLE `categoriados` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoriados`
--

INSERT INTO `categoriados` (`idcategoria`, `nombre`, `descripcion`) VALUES
(1, 'Carpa', 'carpas familiares, carpas individuales , etc.'),
(2, 'Coolers', 'cooler combo, nevera , lonchera térmica ,etc.'),
(3, 'Colhon Inflable', 'Sofa cama inflable, Colhon King, familiar, etc.'),
(4, 'Accesorios para camping', 'Colchoneta, inflador, linterna, cubiertos, etc.'),
(5, 'Mesa y Silla Plegable', 'Silla plegable, banquillo, mesa collection, etc.'),
(6, 'Bolsa de dormir', 'Bolsa de dormir momia, Hamaca, recto, etc.'),
(7, 'Mochila camping', 'Mochila, cangurera, mochila de emergencia, etc.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `nombre` varchar(30) NOT NULL,
  `actividades` varchar(30) NOT NULL,
  `ubicacion` varchar(30) NOT NULL,
  `restaurante` varchar(30) NOT NULL,
  `hospedaje` varchar(30) NOT NULL,
  `imagen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `destino`
--

INSERT INTO `destino` (`nombre`, `actividades`, `ubicacion`, `restaurante`, `hospedaje`, `imagen`) VALUES
('Cancún ', 'Parque Xel-Há,Parque Xavage,Pa', 'Mexico', 'Freddii Restaurant & Café', 'Hostal CASA MX centro', ''),
('El Lago Titicaca y las Is', 'Canotaje', 'Amazonas', 'El batán del tayta', 'Hotel Yurupary', 'Amazonas.jpg'),
('El Valle del Colca ', 'Caminata', 'Arequipa', 'Zig Zag', 'Vita Hoteles Arequip', 'Colca.jpg'),
('El Valle Sagrado de los I', 'Caminata', 'Cuzco', 'Inti Raymi Restauran', 'Novotel Cusco', 'Valle-Sagrado.jpg'),
('Florencia', 'visitar el lago como,pasear pi', 'italia', 'tratoria italia,pasione italia', 'Faboluos village', ''),
('La ciudad sagrada de Cara', 'Caminata', 'Lima', ' Caral VIP Lounge', ' La Huaca Caral - Ec', 'Caral.jpg'),
('La ciudadela de Machu Pic', 'Ciclismo, caminata, Tirolesa', 'Cuzco', 'Kusikuy', 'Hotel Waynapicchu', 'Cuzco.jpg'),
('La Fortaleza de Kuélap', 'Caminata, Fotos', 'Amazonas', 'Amazonas 632', 'EKO Kuelap', 'Kuélap.jpg'),
('Las Islas Ballestas', 'Kayak en Paracas', 'Ica', 'Pukasoncco', ' Kokopelli Hostel Pa', 'Ballestas.jpg'),
('Las Líneas de Nazca', 'Vuelos en avioneta', 'Ica', ' La Kasa Rustika', 'Nasca Lodge', 'Nazca.jpg'),
('Lima, la capital peruana', 'Circuito Mágico Del Agua', 'Lima', 'Restaurante Maras', 'Hotel Lexus ', 'Lima.jpg'),
('Rio de Janeiro', 'Pasos de Selarón,paseo en Tran', 'Brazil', 'Restaurante Marius Degustare', 'Copacabana Design Hotel', ''),
('Torre Eiffel', 'Excursión en autobús Big Bus c', 'Paris', 'Epicure', 'ibis budget Paris Porte de Mon', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `idusuario` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` int(11) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`idusuario`, `nombres`, `apellidos`, `edad`, `usuario`, `clave`, `img`) VALUES
(1, 'Luis ', 'Sánchez Fernández', 25, 'LUSNC', 2330, 'luis.jpg'),
(2, 'Sara', 'Flores Torres', 22, 'TOHK', 4550, 'sara.jpg'),
(4, 'paola', 'ramirez flores', 20, 'LUKA', 2220, ''),
(14, 'luis', 'huaman carraso', 21, 'LUPI', 2029, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `iddestino` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apematerno` varchar(30) NOT NULL,
  `apepaterno` varchar(30) NOT NULL,
  `destino` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `imagen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`iddestino`, `nombre`, `apematerno`, `apepaterno`, `destino`, `edad`, `imagen`) VALUES
(1, 'Juan', 'Sánchez', 'Zapata', 'Albania', 25, 'albania.jpg'),
(2, 'Lucia', 'Rodriguez', 'Gutierrez', 'Bolivia', 22, 'bolivia.jpg'),
(3, 'Sara', 'Sánchez', 'Zapata', 'India', 24, 'india.jpg'),
(4, 'Juan', 'Rodriguez', 'Torres', 'Indonesia', 24, 'indonesia.jpg'),
(5, 'Carla', 'Fernandez', 'Villanueva', 'Italia-Venecia', 28, 'italia.jpg'),
(6, 'Enrique', 'Sánchez', 'Pérez', 'Mexico', 25, 'mexico.jpg'),
(7, 'Luis', 'Huaman', 'Vera', 'Nueva Zelanda', 26, 'nuevazel.jpg'),
(8, 'Erick', 'Benítez', 'Andrade', 'Pakistan', 28, 'pakistan.jpg'),
(9, 'Felix', 'Díaz', 'Contreras', 'París', 29, 'paris.jpg'),
(11, 'Rudolfo', 'Dominico', 'Martinez', 'Perú', 34, 'peru.jpg'),
(12, 'Pedro', 'Hernández', 'López', 'Tailandia', 35, 'tailandia.jpg'),
(13, 'Henry', 'Reyes', 'Carrasco', 'Transylvania', 28, 'transilvania.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproducto` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `nomcategoria` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `disponibilidad` varchar(50) NOT NULL,
  `precio` double(7,2) NOT NULL,
  `enoferta` int(11) NOT NULL,
  `preciorebajado` double(7,2) NOT NULL,
  `imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproducto`, `idcategoria`, `nomcategoria`, `marca`, `descripcion`, `disponibilidad`, `precio`, `enoferta`, `preciorebajado`, `imagen`) VALUES
(1, 1, 'Carpa', 'National Geographic', 'Carpa Cheroke IV para 4 personas', 'disponible', 529.90, 0, 0.00, 'carpa1.jpg'),
(2, 1, 'Carpa', 'klimber', 'Carpa Domepack para 4 personas', 'disponible', 79.90, 0, 0.00, 'carpa2.jpg'),
(3, 1, 'Carpa', 'Klimber', 'Carpa igloo Dome para 4 personas', 'disponible', 149.90, 1, 130.00, 'carpa3.jpg'),
(4, 1, 'Carpa', 'Klimber', 'Carpa Rainbow para 6 personas', 'disponible', 259.90, 1, 245.00, 'carpa4.jpg'),
(5, 1, 'Carpa', 'Klimber', 'Carpa Belledome para 4 personas', 'no disponible', 199.90, 0, 0.00, 'carpa5.jpg'),
(6, 1, 'Carpa', 'Klimber', 'Carpa Ushuai para 4 personas', 'disponible', 349.90, 1, 340.00, 'carpa6.jpg'),
(7, 1, 'Carpa', 'Klimber', 'Carpa Iglú para 2 personas Doble techo', 'disponible', 109.90, 0, 0.00, 'carpa7.jpg'),
(8, 1, 'Carpa', 'Klimber', 'Carpa Iglú Adventure para 5 personas', 'disponible', 169.90, 0, 0.00, 'carpa8.jpg'),
(9, 2, 'Coolers', 'Igloo', 'Combo nevera Laguna 48QL', 'no disponible', 299.90, 0, 0.00, 'co1.jpg'),
(10, 2, 'Coolers', 'Coleman', 'Cooler 47L Negro con ruedas', 'disponible', 289.90, 1, 275.00, 'co2.jpg'),
(11, 2, 'Coolers', 'Reyplast', 'Cooler Tavarua Ratan', 'disponible', 143.90, 0, 0.00, 'co3.jpg'),
(12, 2, 'Coolers', 'Igloo', 'Nevera Laguna Roller 56L', 'disponible', 279.90, 1, 269.90, 'co4.jpg'),
(13, 2, 'Coolers', 'Coleman', 'Combo nevera 3 piezas 51L', 'disponible', 209.90, 0, 0.00, 'co5.jpg'),
(14, 2, 'Coolers', 'Klimber', 'Cooler 27L Azul', 'disponible', 139.90, 1, 125.90, 'co6.jpg'),
(15, 2, 'Coolers', 'Klimber', 'Cooler Tipo Bolso Marinero', 'disponible', 69.90, 0, 0.00, 'co7.jpg'),
(16, 2, 'Coolers', 'Klimber', 'Lonchera Térmica L Naranja', 'no disponible', 42.90, 0, 0.00, 'co8.jpg'),
(17, 3, 'Colchón Inflable', 'Klimber', 'Combo Colchon inflable 2 plazas + 2 almohadas ', 'disponible', 49.90, 0, 0.00, 'col1.jpg'),
(18, 3, 'Colchón Inflable', 'BESTWAY', 'Colchón 2 plazas y 2 almohadas', 'disponible', 49.90, 1, 39.90, 'col2.jpg'),
(19, 3, 'Colchón Inflable', 'Klimber', 'Combo colchón de 1 plaza , 1 almohada y unColc inf', 'disponible', 39.90, 0, 0.00, 'col3.jpg'),
(20, 3, 'Colchón Inflable', 'BESTWAY', 'Colchon Inflable King', 'disponible', 49.90, 1, 38.90, 'col4.jpg'),
(21, 3, 'Colchón Inflable', 'BESTWAY', 'Sofá cama inflable C/BBA', 'disponible', 399.90, 1, 250.90, 'col5.jpg'),
(22, 3, 'Colchón Inflable', 'BESTWAY', 'Colchón Elect Queen Fortech 220v', 'disponible', 599.90, 0, 0.00, 'col6.jpg'),
(23, 3, 'Colchón Inflable', 'Klimber', '2 Colchones de 1 plaza , 2 almohadas y un inflador', 'disponible', 59.90, 0, 0.00, 'col7.jpg'),
(24, 3, 'Colchón Inflable', 'BESTWAY', 'Colch Elec Queen Tritech 220v', 'disponible', 299.90, 0, 0.00, 'col8.jpg'),
(26, 4, 'Accesorios para camping', 'Klimber', 'Piso para camping 4 x 2.6', 'no disponible', 34.90, 1, 32.90, 'ac1.jpg'),
(27, 4, 'Accesorios para camping', 'klimber', 'Colchoneta aislante termico', 'disponible', 16.90, 1, 14.90, 'ac2.jpg'),
(28, 4, 'Accesorios para camping', 'Klimber', 'Set de cubiertos 3 piezas', 'disponible', 17.90, 1, 15.90, 'ac3.jpg'),
(29, 4, 'Accesorios para camping', 'BESTWAY', 'Almohada para viajes', 'no disponible', 5.90, 0, 0.00, 'ac4.jpg'),
(30, 4, 'Accesorios para camping', 'Redline', 'Cuchilla multiusos 8 en uno', 'no disponible', 39.90, 1, 35.90, 'ac5.jpg'),
(31, 4, 'Accesorios para camping', 'Klimber', 'Porta celular brazo Azul', 'disponible', 9.90, 0, 0.00, 'ac6.jpg'),
(32, 4, 'Accesorios para camping', 'Klimber', 'Inflador de pie 26x22cm', 'no disponible', 22.90, 0, 0.00, 'ac7.jpg'),
(33, 4, 'Accesorios para camping', 'BESTWAY', 'Almohada térmica ', 'disponible', 20.90, 0, 0.00, 'ac8.jpg'),
(34, 5, 'Mesa Plegable', 'Just Home Collection', 'Mesa plegable 244x74x76cm', 'disponible', 299.90, 1, 288.70, 'mesa1.jpg'),
(35, 5, 'Mesa Plegable', 'Just Home Collection', 'Mesa plegable 180x76x74cm', 'disponible', 249.90, 1, 239.90, 'mesa2.jpg'),
(36, 5, 'Mesa Plegable', 'Just Home Collection', 'Mesa plegable 180 simil', 'no disponible', 249.90, 0, 0.00, 'mesa3.jpg'),
(37, 5, 'Mesa Plegable', 'Just Home Collection', 'Mesa plegable 180cm', 'no disponible', 269.90, 1, 230.50, 'mesa4.jpg'),
(38, 5, 'Silla Plegable', 'Northwest', 'Sill aplegable 49cm', 'disponible', 99.90, 0, 0.00, 'silla1.jpg'),
(39, 5, 'Silla Plegable', 'Outback', 'Banquito plegable azul', 'disponible', 12.90, 1, 10.90, 'silla2.jpg'),
(40, 5, 'Silla Plegable', 'Just Home Collection', 'Silla de madera plegable natural', 'disponible', 149.90, 0, 0.00, 'silla3.jpg'),
(41, 5, 'Silla Plegable', 'Klimber', 'Silla plegable roja', 'disponible', 29.90, 1, 27.90, 'silla4.jpg'),
(42, 6, 'Bolsa de dormir', 'Klimber', 'Bolsa de dormi momia verde', 'disponible', 79.90, 0, 0.00, 'bolsa1.jpg'),
(43, 6, 'Bolsa de dormir', 'klimber', 'Bolsa de dormir momia plateada ', 'no disponible', 79.90, 0, 0.00, 'bolsa2.jpg'),
(44, 6, 'Bolsa de dormir', 'Bolsa de dormir momia Turquesa', '79.90', 'disponible', 79.90, 1, 75.90, 'bolsa3.jpg'),
(45, 6, 'Bolsa de dormir', 'Klimber', 'Bolsa de dormir Momia naranja', 'disponible', 149.90, 1, 139.90, 'bolsa4.jpg'),
(46, 6, 'Bolsa de dormir', 'Klimber', 'Bolsa de dormir recto azul', 'no disponible', 39.90, 0, 0.00, 'bolsa5.jpg'),
(47, 6, 'Bolsa de dormir', 'Klimber', 'Bolsa de dormir recto rojo', 'disponible', 24.90, 0, 0.00, 'bolsa6.jpg'),
(48, 6, 'Bolsa de dormir', 'Klimber', 'Bolsa de dormir momia turqueza', 'disponible', 69.90, 1, 65.90, 'bolsa7.jpg'),
(49, 6, 'Bolsa de dormir', 'Klimber', 'Saco/Hamaca colgante', 'disponible', 219.90, 1, 199.90, 'bolsa8.jpg'),
(50, 7, 'Mochila camping', 'National Geographic', 'Mochila Tahoe 14l nat geo', 'disponible', 189.90, 0, 0.00, 'mo1.jpg'),
(51, 7, 'Mochila camping', 'National Geographic', 'Mochila yakima 12l', 'no disponible', 179.90, 1, 169.90, 'mo2.jpg'),
(52, 7, 'Mochila camping', 'Klimber', 'Mochila Compacta Azulina', 'disponible', 59.90, 0, 0.00, 'mo3.jpg'),
(53, 7, 'Mochila camping', 'Klimber', 'Mochila para camping misuri', 'disponible', 99.90, 1, 89.90, 'mo4.jpg'),
(54, 7, 'Mochila camping', 'Klimber', 'mochila para camping Ampa 10L', 'disponible', 19.90, 0, 0.00, 'mo5.jpg'),
(55, 7, 'Mochila camping', 'Klimber', 'Mochila para camping Minca 65L', 'disponible', 149.90, 1, 120.80, 'mo6.jpg'),
(56, 7, 'Mochila camping', 'Klimber', 'Canguro Trident Klimber', 'no disponible', 79.90, 1, 65.90, 'mo7.jpg'),
(57, 7, 'Mochila camping', 'Klimber', 'Mochila Eco Everglades', 'disponible', 59.90, 0, 0.00, 'mo8.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `categoriados`
--
ALTER TABLE `categoriados`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`iddestino`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
