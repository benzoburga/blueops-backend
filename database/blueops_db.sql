-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2025 a las 23:01:07
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
-- Base de datos: `blueops_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apartados_cliente`
--

CREATE TABLE `apartados_cliente` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `tipo_apartado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `apartados_cliente`
--

INSERT INTO `apartados_cliente` (`id`, `cliente_id`, `tipo_apartado_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(62, 7, 1),
(63, 7, 2),
(64, 7, 3),
(65, 7, 4),
(66, 7, 5),
(67, 7, 6),
(68, 7, 7),
(69, 7, 8),
(70, 7, 9),
(71, 7, 10),
(72, 7, 11),
(73, 7, 12),
(74, 7, 13),
(75, 7, 14),
(76, 7, 15),
(77, 7, 16),
(78, 7, 17),
(79, 7, 18),
(100, 9, 1),
(101, 9, 2),
(102, 9, 3),
(103, 9, 4),
(104, 9, 5),
(105, 9, 6),
(106, 9, 7),
(107, 9, 8),
(108, 9, 9),
(109, 9, 10),
(110, 9, 11),
(111, 9, 12),
(112, 9, 13),
(113, 9, 14),
(114, 9, 15),
(115, 9, 16),
(116, 9, 17),
(117, 9, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `fecha_aprobacion` date DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `fecha_subida` date DEFAULT NULL,
  `url_archivo` mediumtext DEFAULT NULL,
  `apartado_cliente_id` int(11) NOT NULL,
  `carpeta_id` int(11) DEFAULT NULL,
  `subcarpeta_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `nombre`, `codigo`, `fecha_aprobacion`, `version`, `fecha_subida`, `url_archivo`, `apartado_cliente_id`, `carpeta_id`, `subcarpeta_id`) VALUES
(1, 'Ejercicio Elaboracion de un Estado de Resultados.pdf', 'no disponible', '1899-11-30', '3', '2025-08-08', '/uploads/1754687713522.pdf', 2, 1, NULL),
(5, 'Certificados1.pdf', NULL, NULL, '1', '2025-07-21', '/uploads/1753107357495.pdf', 7, 5, 3),
(6, '2024.12 Informe del Monitoreo Biológico.pdf', NULL, NULL, '1', '2025-07-21', '/uploads/1753110008088.pdf', 17, 11, 11),
(8, 'free-vastion_pres__twenty_six-YVM9L.pdf', 'CODIGO2025', '1998-09-05', '2', '2025-08-06', '/uploads/1754441636343.pdf', 2, 1, NULL),
(18, 'Pardo\'s Chicken.pdf', '1231', '0123-03-21', '2', '2025-08-11', '/uploads/1754942271101.pdf', 2, 1, NULL),
(26, 'Libreta2024_S5B.pdf', 'no disponible', '0000-00-00', '1', '2025-08-18', '/uploads/1755501805785.pdf', 2, 1, NULL),
(41, 'PRESUPUESTO VANESSA CASTILLO 1.pdf', 'no disponible', '1899-11-30', '1', '2025-08-18', '/uploads/1755502484465.pdf', 1, 22, NULL),
(44, 'Libreta2024_S5B.pdf', 'no disponible', '0000-00-00', '2', '2025-08-18', '/uploads/1755502513944.pdf', 1, 22, NULL),
(45, 'Libreta2024_S5B.pdf', 'no disponible', '1899-11-30', '1', '2025-08-18', '/uploads/1755503802007.pdf', 9, 24, NULL),
(46, 'Ratios Finacieros.pdf', 'no disponible', '0000-00-00', '2', '2025-08-18', '/uploads/1755503935896.pdf', 9, 23, 41),
(51, 'Lista de asistencia Recurrente Jetsmart Sustancias Psicoactivas 21ene25.pdf', 'no disponible', '1899-11-30', '1', '2025-09-08', '/uploads/1757353723699.pdf', 7, 5, 2),
(52, 'CATÃLOGO DE BRAINROTS (5) (1).pdf', 'SDSD', '1899-11-30', '1', '2025-09-10', '/uploads/1757463172091.pdf', 62, 29, NULL),
(59, 'sesion 5 Limites del sistema - Tagged.pdf', '21fsdf', '0123-03-12', '1', '2025-09-30', '/uploads/sesion 5 Limites del sistema - Tagged-1759198416852.pdf', 10, 38, NULL),
(62, 'EMO-AGUINAGA BACHMANN DANIEL ALBERTO.pdf', NULL, NULL, '1', '2025-10-06', '/uploads/EMO-AGUINAGA BACHMANN DANIEL ALBERTO-1759779136800.pdf', 15, NULL, 51),
(63, 'Trabajo_1_1AAN0181_International_Management_202520 (2).pdf', 'STPO0002', '2025-10-15', '2', '2025-10-16', '/uploads/Trabajo_1_1AAN0181_International_Management_202520 (2)-1760576931816.pdf', 4, 39, NULL),
(68, 'TESIS - GUEVARA ROSALES.pdf', NULL, NULL, '1', '2025-10-16', '/uploads/TESIS - GUEVARA ROSALES-1760577851886.pdf', 15, NULL, 52),
(69, 'Presentación proyecto de negocio de la empresa corporativo profesional azul y verde.pdf', NULL, NULL, '1', '2025-10-16', '/uploads/Presentación proyecto de negocio de la empresa corporativo profesional azul y verde-1760578147181.pdf', 15, NULL, 52),
(70, 'TP+1+SS+BURGA_RUBÍ (1).pdf', 'ASDDSQ', '0121-03-12', '1', '2025-10-22', '/uploads/TP+1+SS+BURGA_RUBÍ (1)-1761170989244.pdf', 2, 1, NULL),
(71, 'TP3 Formato para Presentación 3 del TP_Semana 8 (7).docx', NULL, NULL, '1', '2025-10-22', '/uploads/TP3 Formato para Presentación 3 del TP_Semana 8 (7)-1761171994232.docx', 15, NULL, 51),
(72, '[EXT] ACT Semana 9_ Mitigación de sesgos.docx', 'no disponible', '0000-00-00', '1', '2025-10-25', '/uploads/[EXT] ACT Semana 9_ Mitigación de sesgos-1761358589122.docx', 2, 1, NULL),
(73, 'P177137054d3140e90b1a70d0599a716f3e.pdf', 'sadfasd', '0000-00-00', '1', '2025-10-29', '/uploads/P177137054d3140e90b1a70d0599a716f3e-1761700716405.pdf', 4, 39, NULL),
(74, 'CFF6-America-Latina_ESP-2021.pdf', NULL, NULL, '1', '2025-10-29', '/uploads/CFF6-America-Latina_ESP-2021-1761700803304.pdf', 15, NULL, 51),
(79, 'S2200585_es.pdf', 'no disponible', '0000-00-00', '1', '2025-10-29', '/uploads/S2200585_es-1761701978170.pdf', 100, 44, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones_archivos`
--

CREATE TABLE `asignaciones_archivos` (
  `id` int(11) NOT NULL,
  `archivo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_asignacion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignaciones_archivos`
--

INSERT INTO `asignaciones_archivos` (`id`, `archivo_id`, `usuario_id`, `fecha_asignacion`) VALUES
(31, 46, 12, '2025-10-06 13:35:42'),
(36, 26, 11, '2025-10-06 14:06:53'),
(37, 18, 11, '2025-10-06 14:06:53'),
(38, 1, 11, '2025-10-06 14:06:53'),
(39, 8, 11, '2025-10-06 14:06:53'),
(40, 44, 11, '2025-10-06 14:07:08'),
(41, 41, 11, '2025-10-06 14:07:08'),
(42, 46, 11, '2025-10-06 14:07:23'),
(43, 51, 11, '2025-10-06 14:08:53'),
(44, 5, 11, '2025-10-06 14:08:53'),
(45, 59, 11, '2025-10-06 14:11:47'),
(46, 62, 11, '2025-10-06 14:32:16'),
(47, 63, 12, '2025-10-15 20:07:28'),
(52, 68, 12, '2025-10-15 20:24:11'),
(53, 69, 12, '2025-10-15 20:29:07'),
(54, 70, 12, '2025-10-22 17:10:20'),
(55, 71, 11, '2025-10-22 17:26:34'),
(57, 74, 11, '2025-10-28 20:20:03'),
(58, 72, 11, '2025-10-28 20:22:07'),
(59, 45, 12, '2025-11-13 00:51:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carpetas`
--

CREATE TABLE `carpetas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apartado_cliente_id` int(11) NOT NULL,
  `orden` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `carpetas`
--

INSERT INTO `carpetas` (`id`, `nombre`, `apartado_cliente_id`, `orden`) VALUES
(1, '2025', 2, 0),
(5, '2025', 7, 0),
(11, '2024', 17, 0),
(22, '2025', 1, 0),
(23, '225', 9, 0),
(24, '2222', 9, 1),
(29, '2323423', 62, 0),
(31, 'Chancafe Alvaro - 40524735', 15, 2),
(32, 'asdadasd sdsa - 213123', 15, 0),
(33, 'Gallardo Jesús - 45059552', 15, 4),
(34, 'Lizarribar Dayan - 25792525', 15, 5),
(35, 'Castillo Vanessa - 04653007', 15, 1),
(36, 'Córdova Luis - 76322981', 15, 3),
(37, 'Martínez Ana - 76322982', 15, 6),
(38, 'hola', 10, 0),
(39, 'Prueba para historial', 4, 0),
(40, 'BURGA ALVARO - 76322981', 15, 0),
(41, 'BURGA BENZO - 76322981', 15, 0),
(43, 'carpeta de prueba', 2, 1),
(44, 'wjikdnwf', 100, 0),
(45, 'AYA AYA - 98876543', 15, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `ruc` varchar(11) NOT NULL,
  `nombre_comercial` varchar(255) NOT NULL,
  `tipo_contribuyente` varchar(100) DEFAULT NULL,
  `domicilio_fiscal` text DEFAULT NULL,
  `fecha_inscripcion` date DEFAULT NULL,
  `fecha_inicio_actividades` date DEFAULT NULL,
  `estado_contribuyente` varchar(50) DEFAULT NULL,
  `condicion_contribuyente` varchar(50) DEFAULT NULL,
  `actividad_economica` text DEFAULT NULL,
  `sistema_contabilidad` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `tipo_contribuyente_id` int(11) DEFAULT NULL,
  `estado_contribuyente_id` int(11) DEFAULT NULL,
  `condicion_contribuyente_id` int(11) DEFAULT NULL,
  `sistema_contabilidad_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `ruc`, `nombre_comercial`, `tipo_contribuyente`, `domicilio_fiscal`, `fecha_inscripcion`, `fecha_inicio_actividades`, `estado_contribuyente`, `condicion_contribuyente`, `actividad_economica`, `sistema_contabilidad`, `created_at`, `updated_at`, `activo`, `deleted_at`, `deleted_by`, `tipo_contribuyente_id`, `estado_contribuyente_id`, `condicion_contribuyente_id`, `sistema_contabilidad_id`) VALUES
(1, '20602549861', 'JetSmart Airlines SPA-Sucursal Del Perú', 'SUCURSALES O AG. DE EMP. EXTRANJ.', 'AV. CAMINO REAL NRO. 493 INT. 1002 URB. CAMINO REAL LIMA - LIMA - SAN ISIDRO', '2017-10-17', '2017-10-17', 'ACTIVO', 'HABIDO', 'Principal - 5223 - ACTIVIDADES DE SERVICIOS VINCULADAS AL TRANSPORTE AÉREO', 'MANUAL/COMPUTARIZADO', '2025-06-17 23:17:26', '2025-08-27 06:59:54', 1, NULL, NULL, NULL, 1, NULL, NULL),
(7, '20606079614', 'ALLPANAY', 'SOCIEDAD ANÓNIMA CERRADA', 'CAL.GERMAN SCHREIBER NRO. 276 INT. 240 LIMA - LIMA - SAN ISIDRO', '2020-06-15', '2020-07-08', 'ACTIVO', 'HABIDO', 'Principal - 4322 - INSTALACIONES DE FONTANERÍA, CALEFACCIÓN Y AIRE ACONDICIONADO', 'COMPUTARIZADO', '2025-09-02 22:05:39', '2025-10-29 01:29:49', 0, '2025-10-28 20:29:49', NULL, 5, 1, 1, 2),
(9, '20100190797', 'Cliente de prueba', 'SOCIEDAD ANÓNIMA CERRADA', 'domicilio fiscal de prueba', '2025-10-28', '2025-10-28', 'ACTIVO', 'HABIDO', 'Principal - 5223 - actividad principal de prueba', 'MANUAL', '2025-10-29 01:38:54', '2025-10-29 01:38:54', 1, NULL, NULL, 5, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_actividades`
--

CREATE TABLE `cliente_actividades` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `ciiu_codigo` varchar(10) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `es_principal` tinyint(1) DEFAULT 0,
  `orden` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cliente_actividades`
--

INSERT INTO `cliente_actividades` (`id`, `cliente_id`, `ciiu_codigo`, `descripcion`, `es_principal`, `orden`, `created_at`, `updated_at`) VALUES
(3, 9, '5223', 'actividad principal de prueba', 1, 0, '2025-10-28 20:38:54', '2025-10-28 20:38:54'),
(4, 9, '5224', 'actividad adicional de prueba', 0, 1, '2025-10-28 20:38:54', '2025-10-28 20:38:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condiciones_contribuyente`
--

CREATE TABLE `condiciones_contribuyente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `orden` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `condiciones_contribuyente`
--

INSERT INTO `condiciones_contribuyente` (`id`, `nombre`, `activo`, `orden`, `created_at`) VALUES
(1, 'HABIDO', 1, 1, '2025-08-27 06:58:48'),
(2, 'NO HABIDO', 1, 2, '2025-08-27 06:58:48'),
(3, 'PENDIENTE', 1, 3, '2025-08-27 06:58:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_contribuyente`
--

CREATE TABLE `estados_contribuyente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `orden` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados_contribuyente`
--

INSERT INTO `estados_contribuyente` (`id`, `nombre`, `activo`, `orden`, `created_at`) VALUES
(1, 'ACTIVO', 1, 1, '2025-08-27 06:58:48'),
(2, 'SUSPENSIÓN TEMPORAL', 1, 2, '2025-08-27 06:58:48'),
(3, 'BAJA DE OFICIO', 1, 3, '2025-08-27 06:58:48'),
(4, 'BAJA DEFINITIVA', 1, 4, '2025-08-27 06:58:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadores_cliente`
--

CREATE TABLE `indicadores_cliente` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `periodo` char(7) NOT NULL,
  `num_trabajadores` int(11) NOT NULL DEFAULT 0,
  `num_pensionistas` int(11) NOT NULL DEFAULT 0,
  `num_prestadores` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `indicadores_cliente`
--

INSERT INTO `indicadores_cliente` (`id`, `cliente_id`, `periodo`, `num_trabajadores`, `num_pensionistas`, `num_prestadores`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-01', 484, 25, 4, '2025-08-27 00:55:55', NULL),
(2, 1, '2024-02', 482, 24, 6, '2025-08-27 00:55:55', NULL),
(3, 1, '2024-03', 631, 24, 9, '2025-08-27 00:55:55', NULL),
(8, 7, '2025-07', 1, 0, 6, '2025-09-02 22:05:39', NULL),
(10, 9, '2025-10', 5, 15, 15, '2025-10-29 01:38:54', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id` int(11) NOT NULL,
  `tipo` enum('PUBLISH','ASSIGN','VERSION_ADD','MEDICO_ASSIGN') NOT NULL,
  `actor_usuario_id` int(11) DEFAULT NULL,
  `actor_rol` enum('ADMINISTRADOR','MEDICO') NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `archivo_id` int(11) DEFAULT NULL,
  `trabajador_id` int(11) DEFAULT NULL,
  `apartado_cliente_id` int(11) DEFAULT NULL,
  `carpeta_id` int(11) DEFAULT NULL,
  `subcarpeta_id` int(11) DEFAULT NULL,
  `numero_version` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`id`, `tipo`, `actor_usuario_id`, `actor_rol`, `cliente_id`, `archivo_id`, `trabajador_id`, `apartado_cliente_id`, `carpeta_id`, `subcarpeta_id`, `numero_version`, `created_at`) VALUES
(1, 'PUBLISH', NULL, 'ADMINISTRADOR', 1, 63, NULL, 4, 39, NULL, NULL, '2025-10-15 19:58:31'),
(2, 'ASSIGN', 3, 'ADMINISTRADOR', 1, 63, 4, 4, 39, NULL, NULL, '2025-10-15 20:07:28'),
(3, 'VERSION_ADD', NULL, 'ADMINISTRADOR', 1, 63, NULL, 4, 39, NULL, 2, '2025-10-15 20:08:51'),
(4, 'MEDICO_ASSIGN', NULL, 'ADMINISTRADOR', 1, 68, 4, 15, NULL, 52, NULL, '2025-10-15 20:24:11'),
(5, 'MEDICO_ASSIGN', NULL, 'ADMINISTRADOR', 1, 69, 4, 15, NULL, 52, NULL, '2025-10-15 20:29:07'),
(6, 'PUBLISH', NULL, 'ADMINISTRADOR', 1, 70, NULL, 2, 1, NULL, NULL, '2025-10-22 17:09:49'),
(7, 'ASSIGN', 3, 'ADMINISTRADOR', 1, 70, 4, 2, 1, NULL, NULL, '2025-10-22 17:10:20'),
(8, 'VERSION_ADD', NULL, 'ADMINISTRADOR', 1, 70, NULL, 2, 1, NULL, 2, '2025-10-22 17:10:40'),
(9, 'MEDICO_ASSIGN', NULL, 'ADMINISTRADOR', 1, 71, 3, 15, NULL, 51, NULL, '2025-10-22 17:26:34'),
(10, 'PUBLISH', NULL, 'ADMINISTRADOR', 1, 72, NULL, 2, 1, NULL, NULL, '2025-10-24 21:16:29'),
(11, 'ASSIGN', 3, 'ADMINISTRADOR', 1, 51, 3, 7, 5, 2, NULL, '2025-10-28 20:15:54'),
(12, 'VERSION_ADD', NULL, 'ADMINISTRADOR', 1, 51, NULL, 7, 5, 2, 2, '2025-10-28 20:16:32'),
(13, 'PUBLISH', NULL, 'ADMINISTRADOR', 1, 73, NULL, 4, 39, NULL, NULL, '2025-10-28 20:18:36'),
(14, 'MEDICO_ASSIGN', NULL, 'ADMINISTRADOR', 1, 74, 3, 15, NULL, 51, NULL, '2025-10-28 20:20:03'),
(15, 'ASSIGN', 3, 'ADMINISTRADOR', 1, 72, 3, 2, 1, NULL, NULL, '2025-10-28 20:22:07'),
(20, 'PUBLISH', NULL, 'ADMINISTRADOR', 9, 79, NULL, 100, 44, NULL, NULL, '2025-10-28 20:39:38'),
(21, 'ASSIGN', 3, 'ADMINISTRADOR', 1, 45, 4, 9, 24, NULL, NULL, '2025-11-13 00:51:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos_trabajo`
--

CREATE TABLE `puestos_trabajo` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_riesgo` enum('Alto Riesgo','Bajo Riesgo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `puestos_trabajo`
--

INSERT INTO `puestos_trabajo` (`id`, `cliente_id`, `nombre`, `tipo_riesgo`) VALUES
(1, NULL, 'Asistente Técnico', 'Alto Riesgo'),
(2, NULL, 'Supervisor', 'Bajo Riesgo'),
(3, NULL, 'TEA Senior', 'Alto Riesgo'),
(4, NULL, 'Primer Oficial', 'Bajo Riesgo'),
(5, NULL, 'Técnico mantenimiento', 'Alto Riesgo'),
(6, NULL, 'Analista de Seguridad', 'Alto Riesgo'),
(7, NULL, 'Coordinador Técnico', 'Bajo Riesgo'),
(8, NULL, 'Especialista SSOMA', 'Alto Riesgo'),
(9, NULL, 'Supervisor de Planta', 'Bajo Riesgo'),
(10, NULL, 'Asistente Administrativa', 'Bajo Riesgo'),
(11, NULL, 'Operario de Mantenimiento', 'Alto Riesgo'),
(12, NULL, 'Quality and security manager\r\n', 'Alto Riesgo'),
(13, NULL, 'Jefe de Aseguramiento de la Calidad\r\n', 'Alto Riesgo'),
(14, NULL, 'Médico Ocupacional\r\n', 'Bajo Riesgo'),
(16, 1, 'prueba', 'Bajo Riesgo'),
(17, 1, 'Puesto de prueba', 'Alto Riesgo'),
(18, 1, 'Operario', 'Alto Riesgo'),
(19, 1, 'Puesto test', 'Bajo Riesgo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representantes_legales`
--

CREATE TABLE `representantes_legales` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `tipo_documento_id` int(11) NOT NULL,
  `numero_documento` varchar(32) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `fecha_desde` date DEFAULT NULL,
  `vigente` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `representantes_legales`
--

INSERT INTO `representantes_legales` (`id`, `cliente_id`, `tipo_documento_id`, `numero_documento`, `nombre`, `cargo`, `fecha_desde`, `vigente`, `created_at`) VALUES
(1, 1, 1, '76325163', 'Patricia nisanf', 'APODERADO', '2025-08-05', NULL, '2025-08-25 18:39:14'),
(6, 7, 1, '43313369', 'JAUREGUY ROBINSON JEAN PIERRE FRANCOIS', 'GERENTE GENERAL', '2020-06-10', NULL, '2025-09-02 22:05:39'),
(8, 9, 1, '76322981', 'Benzo Burga', 'Gerente general', '2025-10-28', NULL, '2025-10-29 01:38:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistemas_contabilidad`
--

CREATE TABLE `sistemas_contabilidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `orden` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sistemas_contabilidad`
--

INSERT INTO `sistemas_contabilidad` (`id`, `nombre`, `activo`, `orden`, `created_at`) VALUES
(1, 'MANUAL', 1, 1, '2025-08-27 06:58:48'),
(2, 'COMPUTARIZADO', 1, 2, '2025-08-27 06:58:48'),
(3, 'MANUAL/COMPUTARIZADO', 1, 3, '2025-08-27 06:58:48'),
(4, 'NO APLICA', 1, 4, '2025-08-27 06:58:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcarpetas`
--

CREATE TABLE `subcarpetas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `carpeta_id` int(11) NOT NULL,
  `orden` int(11) DEFAULT 0,
  `subcarpeta_padre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `subcarpetas`
--

INSERT INTO `subcarpetas` (`id`, `nombre`, `carpeta_id`, `orden`, `subcarpeta_padre_id`) VALUES
(1, 'Curso de sustancias Psicoactivas', 5, 0, NULL),
(2, '1. Lista de Asistencias', 5, 0, 1),
(3, '2. Certificados', 5, 1, 1),
(11, '1. Informes', 11, 0, NULL),
(40, 'weqwe', 23, 0, NULL),
(41, '121323', 23, 0, 40),
(51, 'prueba de fuego', 34, 0, NULL),
(52, 'prueba para historial', 31, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_apartado`
--

CREATE TABLE `tipos_apartado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tipos_apartado`
--

INSERT INTO `tipos_apartado` (`id`, `nombre`) VALUES
(13, 'Accidentes e Incidentes'),
(11, 'Auditorías'),
(7, 'Capacitación'),
(4, 'Comité'),
(26, 'directorio de prueba'),
(16, 'DocGen'),
(15, 'EMO´s'),
(14, 'Fiscalización'),
(18, 'Informes'),
(5, 'IPERC'),
(1, 'Línea Base'),
(10, 'Mapas de riesgo'),
(12, 'Matrices'),
(17, 'Monitoreos'),
(3, 'Objetivos y estadísticas'),
(8, 'Planes y programas'),
(2, 'Políticas y Reglamentos'),
(6, 'Procedimientos'),
(9, 'Registros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_contribuyente`
--

CREATE TABLE `tipos_contribuyente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `orden` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipos_contribuyente`
--

INSERT INTO `tipos_contribuyente` (`id`, `nombre`, `activo`, `orden`, `created_at`) VALUES
(1, 'PERSONA NATURAL SIN NEGOCIO', 1, 1, '2025-08-27 06:58:48'),
(2, 'PERSONA NATURAL CON NEGOCIO', 1, 2, '2025-08-27 06:58:48'),
(3, 'EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', 1, 3, '2025-08-27 06:58:48'),
(4, 'SOCIEDAD ANÓNIMA', 1, 4, '2025-08-27 06:58:48'),
(5, 'SOCIEDAD ANÓNIMA CERRADA', 1, 5, '2025-08-27 06:58:48'),
(6, 'SOCIEDAD ANÓNIMA ABIERTA', 1, 6, '2025-08-27 06:58:48'),
(7, 'SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA', 1, 7, '2025-08-27 06:58:48'),
(8, 'ASOCIACIÓN', 1, 8, '2025-08-27 06:58:48'),
(9, 'COOPERATIVA', 1, 9, '2025-08-27 06:58:48'),
(10, 'SUCURSAL DE EMPRESA EXTRANJERA', 1, 10, '2025-08-27 06:58:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_identificacion`
--

CREATE TABLE `tipos_identificacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tipos_identificacion`
--

INSERT INTO `tipos_identificacion` (`id`, `nombre`) VALUES
(1, 'DNI'),
(2, 'Carné de extranjería'),
(3, 'Pasaporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `sexo` enum('Masculino','Femenino','Otro') DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `puesto_id` int(11) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `tipo_identificacion_id` int(11) DEFAULT NULL,
  `numero_identificacion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`id`, `nombres`, `apellidos`, `sexo`, `direccion`, `fecha_nacimiento`, `fecha_inicio`, `puesto_id`, `numero`, `correo`, `cliente_id`, `tipo_identificacion_id`, `numero_identificacion`) VALUES
(1, 'Luis', 'Córdova', 'Masculino', 'Av. Los Olivos 132, San Juan de Lurigancho', '1995-08-10', '2024-01-15', 1, NULL, NULL, 1, 1, '76322981'),
(2, 'Ana', 'Martínez', 'Femenino', 'Jr. Monteverde 521, Los Olivos', '1992-08-22', '2023-12-01', 2, NULL, NULL, 1, 1, '76322982'),
(3, 'Dayan', 'Lizarribar', 'Masculino', 'dirección desconocida', '1986-01-01', '2023-09-01', 12, '922345368', 'dayan.lizarribar@jetsmart.com\r\n', 1, 1, '25792525'),
(4, 'Alvaro', 'Chancafe', 'Masculino', 'dirección desconocida', '1995-10-05', '2016-08-03', 13, '997971100', 'alvaro.chancafe@jetsmart.com\r\n', 1, 1, '40524735'),
(5, 'Jesús ', 'Gallardo', 'Masculino', 'dirección desconocida', '1977-12-09', '1997-02-28', 14, '976616888', 'medico01@blueops.pe\r\n', 1, 1, '45059552'),
(16, 'sdsa', 'asdadasd', 'Femenino', '2asdfdsfd', '0312-12-13', '0123-03-21', 9, '51615', '', 1, 3, '213123'),
(17, 'Vanessa', 'Castillo', 'Femenino', 'Los Maestros 119', '1998-09-07', '2025-09-09', 7, '978524933', 'vanessacast19@gmail.com', 1, 1, '04653007'),
(26, 'BENZO', 'BURGA', 'Masculino', 'TORRES DE MATELLINI', '2003-10-20', '2024-01-15', 17, '987232112', 'correodeprueba@gmail.com', 1, 1, '76322981'),
(27, 'BENZO', 'BURGA', 'Masculino', 'TORRES DE MATELLINI', '2003-10-20', '2024-03-05', 17, '231234134', 'correodeprueba@gmail.com', 1, 1, '76322981'),
(28, 'BENZO', 'BURGA', 'Masculino', 'TORRES DE MATELLINI', '2003-10-20', '2024-01-15', 17, '987232112', 'correodeprueba@gmail.com', 1, 1, '76322981'),
(29, 'BENZO', 'BURGA', 'Masculino', 'TORRES DE MATELLINI', '2003-10-20', '2024-03-05', 17, '987232112', 'correodeprueba@gmail.com', 1, 1, '76322981'),
(30, 'ALVARO', 'BURGA', 'Masculino', 'TORRES DE MATELLINI', '2003-10-20', '2024-01-15', 17, '987232112', 'correodeprueba@gmail.com', 1, 1, '76322981'),
(31, 'ALVARO', 'BURGA', 'Masculino', 'TORRES DE MATELLINI', '2003-10-20', '2024-03-05', 17, '987232112', 'correodeprueba@gmail.com', 1, 1, '76322981'),
(32, 'ALVARO', 'BURGA', 'Masculino', 'TORRES DE MATELLINI', '2003-10-20', '2024-01-15', 18, '987232112', 'correodeprueba@gmail.com', 1, 1, '76322981'),
(33, 'ALVARO', 'BURGA', 'Masculino', 'TORRES DE MATELLINI', '2003-10-20', '2024-03-05', 17, '987232112', 'correodeprueba@gmail.com', 1, 1, '76322981'),
(34, 'Nombre', 'de prueba', 'Masculino', 'direccion de prueba', '2025-10-28', '2025-10-28', 11, '987654321', 'usuario@gmail.com', 1, 1, '7654321'),
(35, 'AYA', 'AYA', 'Masculino', 'PRUEBA TESTING', '2025-10-28', '2025-10-28', 19, '987654321', 'correodeprueba@gmail.com', 1, 1, '98876543'),
(36, 'AYA', 'AYA', 'Masculino', 'PRUEBA TESTING', '2025-10-28', '2025-10-28', 19, '987654321', 'correodeprueba@gmail.com', 1, 1, '98876543');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `dni` varchar(15) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `rol` enum('admin','cliente_admin','cliente_usuario','medico') NOT NULL,
  `password` varchar(255) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `trabajador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `dni`, `email`, `nombre`, `rol`, `password`, `cliente_id`, `estado`, `created_at`, `trabajador_id`) VALUES
(3, '25787206', 'mquinones@blueops.pe', 'Marcelo Quiñones', 'admin', '$2b$10$nUDa9Yqhp1vcKyqpOGKWbOaxzMOfrDInRxscqnNdrU7RfASDpcObO', NULL, 1, '2025-06-17 22:18:54', NULL),
(5, '76543210', 'asalazar@jetsmart.com', 'Andrea Salazar', 'cliente_admin', '$2b$10$v34fKknuwEUa3PGMgZLYPOhSWTkqu375/OvwxpzVBeseiLBv4kn.W', 1, 1, '2025-06-17 22:37:13', NULL),
(7, '72634190', 'gtorres@jetsmart.com', 'Gabriela Torres', 'cliente_usuario', '$2b$10$6PcgE7WFANBrFvIV3jG03eLUqoF/yPFLBTIeBjUPLXM2vqyTzluV.', 1, 1, '2025-06-17 23:42:09', NULL),
(8, '78901234', 'eparades@medico.com', 'Dr. Ernesto Paredes', 'medico', '$2b$10$6Jwh1kcWsl2YQg0gprXLbuKWyX7nnvOEzUtXj9r3hszaEulVmSFZi', NULL, 1, '2025-06-17 23:53:24', NULL),
(11, '25792525', 'dayan.lizarribar@jetsmart.com', 'Dayan Lizarribar', 'cliente_admin', '$2b$10$.lybhZH.FPhVwXlyDBboouiclKal/apjdz4w42fu/Klc59xbqrNw.', 1, 1, '2025-08-14 01:18:37', 3),
(12, '40524735', 'alvaro.chancafe@jetsmart.com', 'Alvaro Chancafe', 'cliente_usuario', '$2b$10$HAUufkYDAzBa6HrzVQaAbOM2cVqC6uDFI3Mnpcs9KwSPde4vUEPQG', 1, 1, '2025-08-14 06:50:52', 4),
(13, '45059552', 'medico01@blueops.pe', 'Jesús Gallardo', 'medico', '$2b$10$77Yx./YeG526A8337VuQheTbcQZ.CgI0eImpFgRXEiQUL/C.ed92a', 1, 1, '2025-08-14 07:05:31', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `versiones_archivo`
--

CREATE TABLE `versiones_archivo` (
  `id` int(11) NOT NULL,
  `archivo_id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `fecha_aprobacion` date DEFAULT NULL,
  `fecha_subida` date NOT NULL,
  `url_archivo` mediumtext NOT NULL,
  `vigente` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `versiones_archivo`
--

INSERT INTO `versiones_archivo` (`id`, `archivo_id`, `nombre`, `codigo`, `version`, `fecha_aprobacion`, `fecha_subida`, `url_archivo`, `vigente`) VALUES
(6, 8, 'free-vastion_pres__twenty_six-YVM9L.pdf', 'CODIGO2025', 2, '1998-09-05', '2025-08-06', '/uploads/1754441636343.pdf', 1),
(15, 1, 'Ejercicio Elaboracion de un Estado de Resultados.pdf', 'no disponible', 3, '0000-00-00', '2025-08-08', '/uploads/1754687713522.pdf', 1),
(16, 18, 'Pardo\'s Chicken.pdf', '1231', 2, '0123-03-21', '2025-08-11', '/uploads/1754942271101.pdf', 1),
(51, 41, 'PRESUPUESTO VANESSA CASTILLO 1.pdf', 'no disponible', 1, '1899-11-30', '2025-08-18', '/uploads/1755502484465.pdf', 1),
(53, 46, 'CV VANESSA CASTILLO ALVAREZ.pdf', 'no disponible', 1, '1899-11-30', '2025-08-18', '/uploads/1755503819411.pdf', 0),
(54, 46, 'Ratios Finacieros.pdf', 'no disponible', 2, '0000-00-00', '2025-08-18', '/uploads/1755503935896.pdf', 1),
(59, 52, 'CATÃLOGO DE BRAINROTS (5) (1).pdf', 'SDSD', 1, '1899-11-30', '2025-09-10', '/uploads/1757463172091.pdf', 1),
(63, 45, 'Libreta2024_S5B.pdf', 'no disponible', 1, '1899-11-30', '2025-08-18', '/uploads/1755503802007.pdf', 1),
(64, 45, 'TC5_IZQUIERDO VARGAS_CHIRE_GUTIERREZ_BURGA_GUEVARA.pe.pdf', 'no disponible', 2, '0000-00-00', '2025-10-04', '/uploads/TC5_IZQUIERDO VARGAS_CHIRE_GUTIERREZ_BURGA_GUEVARA.pe-1759538832951.pdf', 0),
(65, 63, 'Trabajo_1_1AAN0181_International_Management_202520 (1).pdf', 'STPO001', 1, '2025-10-15', '2025-10-16', '/uploads/Trabajo_1_1AAN0181_International_Management_202520 (1)-1760576311522.pdf', 0),
(66, 63, 'Trabajo_1_1AAN0181_International_Management_202520 (2).pdf', 'STPO0002', 2, '2025-10-15', '2025-10-16', '/uploads/Trabajo_1_1AAN0181_International_Management_202520 (2)-1760576931816.pdf', 1),
(67, 70, 'TP+1+SS+BURGA_RUBÍ (1).pdf', 'ASDDSQ', 1, '0121-03-12', '2025-10-22', '/uploads/TP+1+SS+BURGA_RUBÍ (1)-1761170989244.pdf', 1),
(68, 70, 'TP+1+SS+BURGA_RUBÍ.pdf', 'ASFDASF', 2, '0000-00-00', '2025-10-22', '/uploads/TP+1+SS+BURGA_RUBÍ-1761171040956.pdf', 0),
(69, 51, 'Lista de asistencia Recurrente Jetsmart Sustancias Psicoactivas 21ene25.pdf', 'no disponible', 1, '1899-11-30', '2025-09-08', '/uploads/1757353723699.pdf', 1),
(70, 51, 'Actividad formativa 5.pdf', 'STPOPRUEBA', 2, '2025-10-28', '2025-10-29', '/uploads/Actividad formativa 5-1761700592621.pdf', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apartados_cliente`
--
ALTER TABLE `apartados_cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_apartado_cliente` (`cliente_id`,`tipo_apartado_id`),
  ADD KEY `tipo_apartado_id` (`tipo_apartado_id`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartado_cliente_id` (`apartado_cliente_id`),
  ADD KEY `fk_archivos_carpeta` (`carpeta_id`),
  ADD KEY `fk_archivos_subcarpeta` (`subcarpeta_id`);

--
-- Indices de la tabla `asignaciones_archivos`
--
ALTER TABLE `asignaciones_archivos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_asig` (`archivo_id`,`usuario_id`),
  ADD KEY `idx_asig_usuario` (`usuario_id`),
  ADD KEY `idx_asig_archivo` (`archivo_id`);

--
-- Indices de la tabla `carpetas`
--
ALTER TABLE `carpetas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartado_cliente_id` (`apartado_cliente_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ruc` (`ruc`),
  ADD KEY `fk_clientes_tipo_contrib` (`tipo_contribuyente_id`),
  ADD KEY `fk_clientes_estado_contrib` (`estado_contribuyente_id`),
  ADD KEY `fk_clientes_condicion_contrib` (`condicion_contribuyente_id`),
  ADD KEY `fk_clientes_sis_contab` (`sistema_contabilidad_id`),
  ADD KEY `idx_clientes_activo` (`activo`);

--
-- Indices de la tabla `cliente_actividades`
--
ALTER TABLE `cliente_actividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ca_cliente_principal` (`cliente_id`,`es_principal`);

--
-- Indices de la tabla `condiciones_contribuyente`
--
ALTER TABLE `condiciones_contribuyente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `estados_contribuyente`
--
ALTER TABLE `estados_contribuyente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `indicadores_cliente`
--
ALTER TABLE `indicadores_cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cliente_periodo` (`cliente_id`,`periodo`),
  ADD UNIQUE KEY `uq_indicador_cliente_periodo` (`cliente_id`,`periodo`),
  ADD KEY `idx_cliente` (`cliente_id`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`,`created_at`),
  ADD KEY `archivo_id` (`archivo_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `trabajador_id` (`trabajador_id`),
  ADD KEY `apartado_cliente_id` (`apartado_cliente_id`);

--
-- Indices de la tabla `puestos_trabajo`
--
ALTER TABLE `puestos_trabajo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_puestos_cliente_nombre` (`cliente_id`,`nombre`),
  ADD KEY `idx_puestos_cliente` (`cliente_id`,`nombre`);

--
-- Indices de la tabla `representantes_legales`
--
ALTER TABLE `representantes_legales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_rep_cliente_doc_fecha` (`cliente_id`,`numero_documento`,`fecha_desde`),
  ADD KEY `tipo_documento_id` (`tipo_documento_id`);

--
-- Indices de la tabla `sistemas_contabilidad`
--
ALTER TABLE `sistemas_contabilidad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `subcarpetas`
--
ALTER TABLE `subcarpetas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carpeta_id` (`carpeta_id`);

--
-- Indices de la tabla `tipos_apartado`
--
ALTER TABLE `tipos_apartado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tipos_contribuyente`
--
ALTER TABLE `tipos_contribuyente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tipos_identificacion`
--
ALTER TABLE `tipos_identificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puesto_id` (`puesto_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `fk_tipo_identificacion` (`tipo_identificacion_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `fk_usuario_trabajador` (`trabajador_id`);

--
-- Indices de la tabla `versiones_archivo`
--
ALTER TABLE `versiones_archivo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archivo_id` (`archivo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apartados_cliente`
--
ALTER TABLE `apartados_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `asignaciones_archivos`
--
ALTER TABLE `asignaciones_archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `carpetas`
--
ALTER TABLE `carpetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cliente_actividades`
--
ALTER TABLE `cliente_actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `condiciones_contribuyente`
--
ALTER TABLE `condiciones_contribuyente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estados_contribuyente`
--
ALTER TABLE `estados_contribuyente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `indicadores_cliente`
--
ALTER TABLE `indicadores_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `puestos_trabajo`
--
ALTER TABLE `puestos_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `representantes_legales`
--
ALTER TABLE `representantes_legales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `sistemas_contabilidad`
--
ALTER TABLE `sistemas_contabilidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcarpetas`
--
ALTER TABLE `subcarpetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `tipos_apartado`
--
ALTER TABLE `tipos_apartado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `tipos_contribuyente`
--
ALTER TABLE `tipos_contribuyente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipos_identificacion`
--
ALTER TABLE `tipos_identificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `versiones_archivo`
--
ALTER TABLE `versiones_archivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apartados_cliente`
--
ALTER TABLE `apartados_cliente`
  ADD CONSTRAINT `apartados_cliente_ibfk_2` FOREIGN KEY (`tipo_apartado_id`) REFERENCES `tipos_apartado` (`id`),
  ADD CONSTRAINT `fk_apartados_cliente_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD CONSTRAINT `archivos_ibfk_1` FOREIGN KEY (`apartado_cliente_id`) REFERENCES `apartados_cliente` (`id`),
  ADD CONSTRAINT `fk_archivos_carpeta` FOREIGN KEY (`carpeta_id`) REFERENCES `carpetas` (`id`),
  ADD CONSTRAINT `fk_archivos_subcarpeta` FOREIGN KEY (`subcarpeta_id`) REFERENCES `subcarpetas` (`id`);

--
-- Filtros para la tabla `asignaciones_archivos`
--
ALTER TABLE `asignaciones_archivos`
  ADD CONSTRAINT `fk_asig_archivo` FOREIGN KEY (`archivo_id`) REFERENCES `archivos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_asig_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `carpetas`
--
ALTER TABLE `carpetas`
  ADD CONSTRAINT `carpetas_ibfk_1` FOREIGN KEY (`apartado_cliente_id`) REFERENCES `apartados_cliente` (`id`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_condicion_contrib` FOREIGN KEY (`condicion_contribuyente_id`) REFERENCES `condiciones_contribuyente` (`id`),
  ADD CONSTRAINT `fk_clientes_estado_contrib` FOREIGN KEY (`estado_contribuyente_id`) REFERENCES `estados_contribuyente` (`id`),
  ADD CONSTRAINT `fk_clientes_sis_contab` FOREIGN KEY (`sistema_contabilidad_id`) REFERENCES `sistemas_contabilidad` (`id`),
  ADD CONSTRAINT `fk_clientes_tipo_contrib` FOREIGN KEY (`tipo_contribuyente_id`) REFERENCES `tipos_contribuyente` (`id`);

--
-- Filtros para la tabla `cliente_actividades`
--
ALTER TABLE `cliente_actividades`
  ADD CONSTRAINT `fk_ca_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `indicadores_cliente`
--
ALTER TABLE `indicadores_cliente`
  ADD CONSTRAINT `fk_indicadores_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `puestos_trabajo`
--
ALTER TABLE `puestos_trabajo`
  ADD CONSTRAINT `fk_puestos_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `representantes_legales`
--
ALTER TABLE `representantes_legales`
  ADD CONSTRAINT `fk_representantes_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `representantes_legales_ibfk_2` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipos_identificacion` (`id`);

--
-- Filtros para la tabla `subcarpetas`
--
ALTER TABLE `subcarpetas`
  ADD CONSTRAINT `subcarpetas_ibfk_1` FOREIGN KEY (`carpeta_id`) REFERENCES `carpetas` (`id`);

--
-- Filtros para la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD CONSTRAINT `fk_tipo_identificacion` FOREIGN KEY (`tipo_identificacion_id`) REFERENCES `tipos_identificacion` (`id`),
  ADD CONSTRAINT `trabajadores_ibfk_1` FOREIGN KEY (`puesto_id`) REFERENCES `puestos_trabajo` (`id`),
  ADD CONSTRAINT `trabajadores_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuario_trabajador` FOREIGN KEY (`trabajador_id`) REFERENCES `trabajadores` (`id`);

--
-- Filtros para la tabla `versiones_archivo`
--
ALTER TABLE `versiones_archivo`
  ADD CONSTRAINT `versiones_archivo_ibfk_1` FOREIGN KEY (`archivo_id`) REFERENCES `archivos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
