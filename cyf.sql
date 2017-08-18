-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2017 a las 08:35:12
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cyf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article`
--

CREATE TABLE `article` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `article_title` varchar(100) NOT NULL,
  `article_description` text NOT NULL,
  `article_user` int(10) UNSIGNED NOT NULL,
  `article_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `article`
--

INSERT INTO `article` (`article_id`, `article_title`, `article_description`, `article_user`, `article_image`) VALUES
(1, 'Quiénes somos?', 'CyF Todo Terreno es una empresa peruana, especializada en la ejecución de servicios de Ingeniería, Construcción y Topografía Especializada. Formada por profesionales especializados en el diseño y ejecución de Proyectos de Construcción, Obras Civiles, Minería, y Agroindustria. Nuestra empresa cuenta con equipos de última generación tales como: estaciones totales, receptores GPS, drones y sistemas de cómputo.', 1, 'img/img-quienes.jpg'),
(2, 'Visión', 'Ser reconocida como la mejor empresa de Ingeniería y Topografía del Norte del Perú. Avalada por su calidad de servicio, puntualidad y excelente performance en la Administración y Gestión de Proyectos, buscando maximizar las ventajas comparativas y competitivas para nuestros clientes.', 1, 'img/img-vision.jpg'),
(3, 'Misión', 'Satisfacer las necesidades de nuestros clientes, superando sus objetivos en los diferentes Proyectos de Construcción, Ingeniería, Topografía digital, Geodesia y Cartografía desarrollados por nuestra empresa. Utilizando para ello soluciones efectivas y eficientes que garanticen la calidad de nuestro servicio. Contribuir al desarrollo profesional y personal de nuestros trabajadores, formando personas responsables y comprometidas con el desarrollo de nuestra sociedad, así como la conservación de nuestro medio ambiente.', 1, 'img/img-mision.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `cliente_razon` varchar(150) NOT NULL,
  `cliente_fechareg` datetime NOT NULL,
  `cliente_user` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_razon`, `cliente_fechareg`, `cliente_user`) VALUES
(1, 'COSAPI S.A.', '2017-03-14 13:47:42', 1),
(2, 'CONCAR S.A.', '2017-03-14 13:47:42', 1),
(3, 'SOCIEDAD AGRICOLA SATURNO S.A.', '2017-03-14 13:47:42', 1),
(4, 'ASOCIACIÓN CIVIL SAN JUAN BAUTUSTA (INMMOBILIARIA MIRAFLORES)', '2017-03-14 13:47:42', 1),
(5, 'MINERA SAN MARTIN CONTRATISTAS GENERALES S.A.', '2017-03-14 13:47:42', 1),
(6, 'OLIMPYC S.A.C. (South American Administratiom S.A.C.)', '2017-03-14 13:47:42', 1),
(7, 'CROSLAND AUTOMOTRIZ S.A.C.', '2017-03-14 13:47:42', 1),
(8, 'GRUPO GLORIA (PROYECTO AURORA - EX MAPLE ETANOL)', '2017-03-14 13:47:42', 1),
(9, 'ANDALUCITA S.A.', '2017-03-14 13:47:42', 1),
(10, 'SAVIA PERU S.A.', '2017-03-14 13:47:42', 1),
(11, 'FORSEC CONTRATISTAS GENERALES S.A.C.', '2017-03-14 13:47:42', 1),
(12, 'GRANJA SHINCHI S.A.', '2017-03-14 13:47:42', 1),
(13, 'TERRAMOVE S.A.', '2017-03-14 13:47:42', 1),
(14, 'GOBIERNO REGIONAL DE PIURA', '2017-03-14 13:47:42', 1),
(15, 'DIRECCION REGIONAL DE TRANSPORTES Y COMUNICACIONE', '2017-03-14 13:47:42', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE `info` (
  `info_id` int(10) UNSIGNED NOT NULL,
  `info_direccion` varchar(100) NOT NULL,
  `info_telefono` varchar(100) NOT NULL,
  `info_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`info_id`, `info_direccion`, `info_telefono`, `info_email`) VALUES
(1, 'Jr. La Arena 552 Urb. Santa Ana Piura', '968059090 / RPM: *579092', 'rafaelferia@cyftodoterreno.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemserv`
--

CREATE TABLE `itemserv` (
  `itemserv_id` int(10) UNSIGNED NOT NULL,
  `itemserv_text` text NOT NULL,
  `servicio_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `itemserv`
--

INSERT INTO `itemserv` (`itemserv_id`, `itemserv_text`, `servicio_id`) VALUES
(1, 'Estimación de impactos viales por la construcción de nuevos proyectos de infraestructura.: Nuevas habilitaciones urbanas, centros comerciales, plantas industriales o nuevas vías.', 1),
(3, 'Desarrollo y aprobación de planes de desvíos para la ejecución de proyectos de infraestructura.', 1),
(4, 'Estimación del índice medio diario anual (IMDA) para el diseño de pavimentos y nuevos proyectos de infraestructura Vial. estudios de velocidades y saturación de vías.', 1),
(5, 'Micro-simulación de tránsito: evaluación de capacidad y niveles de servicio de intersecciones y /o tramos viales.', 1),
(6, 'Identificación de puntos críticos de accidentes de tránsito con aplicación del método de Bayes y elaboración de auditorias viales.', 1),
(8, 'Elaboración de perfiles y expedientes técnicos para señalización horizontal, vertical y semáforos.', 1),
(9, 'Colocación de puntos geodésicos certificados por el Instituto Geográfico Nacional (IGN).', 2),
(11, 'Levantamiento topográficos con drones multirotor o Ala fija.', 2),
(12, 'Levantamientos topográficos con GPS diferenciales y/o estaciones totales.', 2),
(13, 'Replanteos topográficos, trazado de ejes, y construcción de poligonales abiertas o cerradas.', 2),
(14, 'Nivelación geométrica (nivel) y nivelación trigonométrica (estación total) de puntos topográficos.', 2),
(15, 'Realizar replanteo de cuadrículas mineras de canteras.', 2),
(16, 'Muestro de suelos, excavación de calicatas. Ubicación de canteras y puntos de agua.', 2),
(17, 'Ensayos de laboratorio para proyectos viales. Clasificación de suelos y diseños de mezcla para sub-base y base.', 2),
(18, 'Diseño y supervisión de proyectos para la construcción de nuevas habilitaciones urbanas: estudios de drenaje superficial, diseño de sistemas de agua y desagüe, diseño estructural de pistas y veredas, diseño de puntos de energía para media y baja tensión.', 3),
(20, 'Perfiles de pre-inversión y expedientes técnicos para carreteras, trochas y todo tipo de Proyectos Viales.', 3),
(21, 'Expedientes técnicos para casas, edificios para vivienda y/o oficinas. (enfoque BIM).', 3),
(23, 'Supervisión y Gerencia de proyectos de construcción de infraestructura: pavimentaciones a nivel de asfalto en caliente, emulsiones asfálticas, slurry seal, micro-pavimentos, losas de concreto y adoquines.', 3),
(24, 'Supervisión y Gerencia de proyectos de edificaciones: casas, edificios para vivienda y/o oficinas.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra`
--

CREATE TABLE `obra` (
  `obra_id` int(10) UNSIGNED NOT NULL,
  `obra_nombre` varchar(150) DEFAULT NULL,
  `obra_descripcion` text,
  `obra_plazo` text,
  `obra_cliente` text,
  `obra_participacion` text,
  `obra_fechareg` datetime NOT NULL,
  `obra_tipo` tinyint(4) NOT NULL COMMENT '1: Construcción, 2: Ingeniería',
  `obra_periodo` varchar(45) DEFAULT NULL,
  `obra_imagen` varchar(150) DEFAULT NULL,
  `obra_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `obra`
--

INSERT INTO `obra` (`obra_id`, `obra_nombre`, `obra_descripcion`, `obra_plazo`, `obra_cliente`, `obra_participacion`, `obra_fechareg`, `obra_tipo`, `obra_periodo`, `obra_imagen`, `obra_user`) VALUES
(1, NULL, 'Servicio de mantenimiento de la transitabilidad peatonal y vehicular de las áreas recuperadas, del Jr. San Lorenzo, Jr. Gonzalo Farfán, Jr. 02 y Jr. Antonio Moreta, del complejo de mercados, del distrito de Piura, provincia de Piura.', 'Plazo de ejecución de 45 días.', 'Cliente: Gobierno Regional de Piura', 'Participación en el Consorcio Micropavimento (50%).', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio01.jpg', 1),
(2, NULL, 'Servicio de mantenimiento de la vía del Jr. C, Jr. D, Jr. E, Jr. F, Jr. 1, Jr. 2, Jr. 3 y Jr. Víctor Andrés Belaunde de la zona industrial I etapa, del distrito de Piura, provincia de Piura.', 'Plazo de ejecución: 90 Días Calendario.', 'Cliente: Gobierno Regional de Piura', 'Participación en el Consorcio Micropavimento Industrial (10%).', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio02.jpg', 1),
(3, NULL, 'Instalación de 07 conexiones domiciliarias de agua, desagüe y servicio eléctrico en la Urbanización Miraflores Country Club.', 'Plazo de Ejecución: 25 días calendario.', 'Cliente: Asociación Civil San Juan Bautista.', '', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio03.jpg', 1),
(4, NULL, 'Construcción de Aula para Colegio Inicial Sol Sol. Chulucanas - Piura.', 'Plazo de Ejecución 60 días Calendario.', 'Cliente: Sociedad Agrícola Saturno S.A.', '', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio04.jpg', 1),
(5, NULL, 'Estandarización de Tienda BAJAJ en Av. Grau – Piura.', 'Plazo de Ejecución 20 días calendario.', 'Cliente: Crosland Automotriz S.A.C.', '', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio05.jpg', 1),
(6, NULL, 'Estandarización de Tienda BAJAJ en Av. Sáenz Peña – Chiclayo – Lambayeque.', 'Plazo de Ejecución 15 días', 'Cliente: Crosland Automotriz S.A.C.', '', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio06.jpg', 1),
(7, NULL, 'Servicio. Parchado de vías Tallanes Los Cocos del Chipe - Distrito de Piura Provincia de Piura.', 'Plazo de ejecución 15 días.', 'Cliente: Gobierno Regional de Piura', '', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio07.jpg', 1),
(8, NULL, 'Servicio. Parchado de vía entre Intersecciones de las Av. Guillermo Irázola y Av. Cáceres – Distrito de Castilla – Provincia de Piura.', 'Plazo de ejecución de 15 días.', 'Cliente: Gobierno Regional de Piura', 'Participación en el “Consorcio Irázola” de 99%.', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio08.jpg', 1),
(9, NULL, 'Servicio de Construcción de Sócalos de Cámara de Gasificado y Cámara 3. Sol Sol Chulucanas - Piura.', 'Plazo de Ejecución 20 días Calendario.', 'Cliente: Sociedad Agrícola Saturno S.A.', '', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio09.jpg', 1),
(10, NULL, 'Servicio de Mantenimiento Periódico de la Red Vial Departamental PI-103: EMP. PE-02(DV PAITA) – La Islilla – La Tortuga – La Casita – San Pedro – Chuyichachy Emp.PE-1NK (dv. La Islilla), Tramo: E,P.P.E-02 (dv Paita) la islilla-Emp.PE-1NK (dv La Islilla).', 'Plazo de ejecución de 90 días.', '', 'Participación en el “Consorcio La Islilla” de 10%.', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio10.jpg', 1),
(11, NULL, 'Obra: Profundización de redes de alcantarillado y agua potable en la calle Comercio en el distrito de La Arena.', 'Plazo de ejecución: 90 días calendario', '', 'Participación en el “Consorcio La Arena” 25%.', '2017-03-14 16:02:00', 1, NULL, 'img/servicios/servicio11.jpg', 1),
(12, NULL, 'Servicio de Levantamiento Topográfico de Toppic Planta. Ductos de Gas y Petróleo. OLIMPYC S.A.C (South American Administration S.A.C). Noviembre - 2013.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(13, NULL, 'Perfil de Pre-inversión para “Mejoramiento Del Sistema De Semaforización y Señalización Vial Del Cercado Del Distrito de Sechura - Provincia Sechura – Piura”. Participación en Consorcio Sechura con Participación del 95%. MUNICIPALIDAD PROVINCIAL DE SECHURA. Septiembre - 2013.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(14, NULL, 'Supervisión de Estudio Integral de Trafico de la ciudad de Talara, para JORGE ALBERTO TIMANA ROJAS. Agosto 2013.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(15, NULL, 'Servicios de Supervisión del Ing. Rafael Fernando Feria Torres, para INMOBILIARIA CHULUCANAS S.A.C. Marzo 2013.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(16, NULL, 'Evaluación de Vulnerabilidad Hidráulica de los Ductos en Cruces de Quebradas para SAVIA PERU S.A.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(17, NULL, 'Servicio para elaboración de expediente técnico de Campamento Minera. ANDALUCITA S.A.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(18, NULL, 'Servicio para elaboración de expediente técnico de acceso a botadero en mina Andalucita (0.7 Km). – La Tortuga – Paita. ANDALUCITA S.A.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(19, NULL, 'Servicio para elaboración de expediente técnico definitivo de carretera interna en mina Andaluci-ta (3.5 Km). – La Tortuga – Paita. ANDALUCITA S.A.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(20, NULL, 'Diseño de Plataformas y Rediseño de Empalmes de vías con Rampa de Balanza e Ingreso a Planta de Procesamiento– La Tortuga – Paita. ANDALUCITA S.A.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(21, NULL, 'Mejora de la seguridad Vial en el tramo Km 254+291 a 251+200. Tramo Individual 2. Piura - Noria Zapata. IIRSA NORTE.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(22, NULL, 'Diseño de defensa Rivereña de la caseta de Maquinas y Estudio de Mejoras en Canal de descarga. CONSORCIO MINERO HORIZONTE. S.A.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(23, NULL, 'Elaboración de Expediente Técnico en Intersección Av. Grau –Gulman. JORGE TIMANA ROJAS .', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(24, NULL, 'Evaluación De La Capacidad En Términos De Volumen De Transito De La Carretera Piura – Catacáos – Sechura – Bayovar – Bappo. COSAPI. S.A.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(25, NULL, 'Diseño de Sistema de Drenaje para batería de Producción de Punta Verde. SAVIA. S.A.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2008 - 2013', NULL, 1),
(26, NULL, 'Servicio de Elaboración, Aprobación, Puesta en Marcha y Seguimiento del Plan de Desvíos para la Remodelación de Av. Sánchez Cerro. COSAPI. S.A. Inicio (22-07-2016) En ejecución. (300 días Calendario).', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(27, NULL, 'Servicio de colocación de 04 puntos geodésicos de Orden “C” y Levantamiento Topográfico con Drone de 2,400 Has de Terreno Agrícola. AGROINDUSTRIAS POECHOS SAC. Octubre-2016.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(28, NULL, 'Servicio de levantamiento Topográfico con Drone de 98 Has en el Nuevo Polígono Industrial de Piura. Incluye la colocación de 01 Punto Geodésico de Orden “C” Certificado por el IGN y la Co-locación de una poligonal cerrada. JTR. Septiembre - 2016.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(29, NULL, 'Servicio de colocación de Dos Puntos Geodésicos de Orden "C" Certificados por el IGN en Pro-yecto Valora. Septiembre - 2016.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(30, NULL, 'Servicio de Levantamiento Topográfico y Colocación de Dos (02) Puntos Geodésicos de Orden “C” en Planta de Etanol. Proyecto Aurora. COSAPI S.A. Julio 2016.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(31, NULL, 'Servicio de Levantamiento Topográfico y Control de Niveles para remodelación de Pavimento en Túnel Sullana. CONCAR S.A. Junio – 2016.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(32, NULL, 'Perfil de Pre-inversión del Proyecto de Mejoramiento del Servicio de Regulación y Control de Tráfico de Calles y Avenidas Principales de la Zona Urbana, del distrito de Castilla, Provincia y Departamento de Piura. Municipalidad Distrital de Castilla. Mayo - 2016.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(33, NULL, 'Estudios de ingeniería básica en obra: Mejoramiento de la Av. Sánchez Cerro – Piura. COSAPI S.A. Diciembre 2015.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(34, NULL, 'Levantamiento Topográfico de Sectores Críticos Sullana-Talara. CONCAR S.A. Noviembre-2015.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(35, NULL, 'Evaluación de velocidades de circulación entre Cantera de calcáreos Virrilá y nueva planta de cemento Pacasmayo. COSAPI S.A. Marzo - 2015.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(36, NULL, 'Muestreo y ejecución de ensayos de suelos en Laboratorio de la Universidad de Piura (UDEP) de materiales extraídos en Cantera de Calcáreos Virrilá. COSAPI S.A. Marzo - 2015.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(37, NULL, 'Consultaría en elaboración de Iniciativa Privada para la ciudad de Piura. COSAPI.S.A. Agosto - 2014.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(38, NULL, 'Servicio de Levantamiento Topográfico y Mecánica de Suelo en Trazo de Nueva Avenida Universitaria. COSAPI.S.A. Agosto - 2014.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(39, NULL, 'Servicio de Control Topográfico para Construcción de Separador De Paja - Maple Etanol. MAC CONSTRATISTAS GENERALES S.A.C. Junio - 2014.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1),
(40, NULL, 'Servicio de Elaboración de Expediente Técnico de Semaforización para el Distrito de Sechura MUNICIPALIDAD PROVINCIAL DE SECHURA. Marzo - 2014.', NULL, NULL, NULL, '0000-00-00 00:00:00', 2, '2014 - 2016', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `servicio_id` int(10) UNSIGNED NOT NULL,
  `servicio_nombre` varchar(150) DEFAULT NULL,
  `servicio_descripcion` text NOT NULL,
  `servicio_fechareg` datetime DEFAULT NULL,
  `servicio_img1` varchar(150) DEFAULT NULL,
  `servicio_img2` varchar(150) DEFAULT NULL,
  `servicio_user` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`servicio_id`, `servicio_nombre`, `servicio_descripcion`, `servicio_fechareg`, `servicio_img1`, `servicio_img2`, `servicio_user`) VALUES
(1, 'Estudios de Tránsito', 'Estimación de impactos viales por la construcción de nuevos proyectos de infraestructura.: Nuevas habilitaciones urbanas, centros comerciales, plantas industriales o nuevas vías.', '2017-03-08 00:00:00', 'img/est-transito-1.jpg', 'img/est-transito-2.jpg', 1),
(2, 'Topografía y Mecánica de Suelos', 'Colocación de puntos geodésicos certificados por el Instituto Geográfico Nacional (IGN).', '2017-03-08 00:00:00', 'img/serv-topo1.jpg', 'img/serv-topo2.jpg', 1),
(3, 'Ingeniería Conceptual y a Detalle', 'Diseño y supervisión de proyectos para la construcción de nuevas habilitaciones urbanas: estudios de drenaje superficial, diseño de sistemas de agua y desagüe, diseño estructural de pistas y veredas, diseño de puntos de energía para media y baja tensión.', '2017-03-08 00:00:00', 'img/serv-ing1.jpg', 'img/serv-ing2.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `slide_id` int(10) UNSIGNED NOT NULL,
  `slide_name` varchar(100) NOT NULL,
  `slide_image` varchar(200) NOT NULL,
  `slide_user` int(10) UNSIGNED NOT NULL,
  `slide_section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`slide_id`, `slide_name`, `slide_image`, `slide_user`, `slide_section`) VALUES
(1, 'SERVICIOS DE INGENIERIA Y CONSTRUCCIÓN', 'img/slides/slide1.jpg', 1, '1'),
(2, 'DISEÑO Y SUPERVISIÓN DE PROYECTOS', 'img/slides/slide2.jpg', 1, '1'),
(3, 'BRINDAMOS UN SERVICIO DE CALIDAD', 'img/slides/slide3.jpg', 1, '1'),
(4, 'ESTUDIOS DE TRANSITO', 'img/slides/slide4.jpg', 1, '2'),
(5, 'TOPOGRAFIA Y ESTUDIO DE SUELOS', 'img/slides/slide5.jpg', 1, '2'),
(6, 'INGENIERÍA CONCEPTUAL Y A DETALLE', 'img/slides/slide6.jpg', 1, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_nick` varchar(45) NOT NULL,
  `user_pass` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `user_nick`, `user_pass`, `user_email`) VALUES
(1, 'admin', '4f4140181d87fdea3efb7898a0d2041a6fd1f922', 'amin@mail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indices de la tabla `itemserv`
--
ALTER TABLE `itemserv`
  ADD PRIMARY KEY (`itemserv_id`),
  ADD KEY `fk_itemserv_servicio_idx` (`servicio_id`);

--
-- Indices de la tabla `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`obra_id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`servicio_id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `info`
--
ALTER TABLE `info`
  MODIFY `info_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `itemserv`
--
ALTER TABLE `itemserv`
  MODIFY `itemserv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `obra`
--
ALTER TABLE `obra`
  MODIFY `obra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `servicio_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `itemserv`
--
ALTER TABLE `itemserv`
  ADD CONSTRAINT `fk_itemserv_servicio` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`servicio_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
