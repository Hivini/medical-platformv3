CREATE DATABASE  IF NOT EXISTS `healthcare` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `healthcare`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: healthcare
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administradores` (
  `id_usuario` int(11) NOT NULL,
  UNIQUE KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alcoholico`
--

DROP TABLE IF EXISTS `alcoholico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alcoholico` (
  `id_alcoholico` int(11) NOT NULL AUTO_INCREMENT,
  `edad_inicio` int(10) unsigned NOT NULL,
  `vasos` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_alcoholico`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alergias`
--

DROP TABLE IF EXISTS `alergias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alergias` (
  `id_alergias` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_alergias`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `antecedentes`
--

DROP TABLE IF EXISTS `antecedentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentes` (
  `id_antecedentes` int(11) NOT NULL AUTO_INCREMENT,
  `id_sangre` int(11) NOT NULL,
  `tabaquismo` enum('Nunca','Casual','Moderado','Intenso','Remision','Otro') COLLATE utf8_unicode_ci NOT NULL,
  `alcoholismo` enum('Nunca','Casual','Moderado','Intenso','Remision','Otro') COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesPatologicos` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesNoPatologicos` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesHereditarios` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_antecedentes`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cafe`
--

DROP TABLE IF EXISTS `cafe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cafe` (
  `id_cafe` int(11) NOT NULL AUTO_INCREMENT,
  `tazasDiarias` int(11) NOT NULL,
  PRIMARY KEY (`id_cafe`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `canceladas`
--

DROP TABLE IF EXISTS `canceladas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canceladas` (
  `id_cita` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_recepcionista` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `fecha_hora` date NOT NULL,
  `razon` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `id_cita` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `id_recepcionista` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_cita`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `comidas`
--

DROP TABLE IF EXISTS `comidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comidas` (
  `id_comidas` int(11) NOT NULL AUTO_INCREMENT,
  `desayuno` tinyint(1) NOT NULL,
  `comidasDiarias` int(11) NOT NULL,
  PRIMARY KEY (`id_comidas`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diagnostico`
--

DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnostico` (
  `id_diagnostico` int(11) NOT NULL AUTO_INCREMENT,
  `enfermedad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` enum('Sin determinar','Leve','Controlado','Grave') COLLATE utf8_unicode_ci NOT NULL,
  `notas` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_diagnostico`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diaslibres`
--

DROP TABLE IF EXISTS `diaslibres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaslibres` (
  `id_dL` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dietas`
--

DROP TABLE IF EXISTS `dietas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dietas` (
  `id_dietas` int(11) NOT NULL AUTO_INCREMENT,
  `informacionDieta` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_dietas`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drogas`
--

DROP TABLE IF EXISTS `drogas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drogas` (
  `id_drogas` int(11) NOT NULL AUTO_INCREMENT,
  `edad_inicio` int(10) unsigned NOT NULL,
  `detalles` text COLLATE utf8_unicode_ci NOT NULL,
  `intravenosa` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_drogas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ejercicio`
--

DROP TABLE IF EXISTS `ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejercicio` (
  `id_ejercicio` int(11) NOT NULL AUTO_INCREMENT,
  `veces_semana` int(11) NOT NULL,
  PRIMARY KEY (`id_ejercicio`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(2) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `abrev` varchar(16) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='Tabla de Estados de la República Mexicana';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estilovida`
--

DROP TABLE IF EXISTS `estilovida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estilovida` (
  `id_estiloVida` int(11) NOT NULL AUTO_INCREMENT,
  `id_ejercicio` int(11) DEFAULT NULL,
  `id_suenio` int(11) DEFAULT NULL,
  `id_comidas` int(11) DEFAULT NULL,
  `id_cafe` int(11) DEFAULT NULL,
  `id_refresco` int(11) DEFAULT NULL,
  `id_dietas` int(11) DEFAULT NULL,
  `id_alcoholismo` int(11) DEFAULT NULL,
  `id_exAlcoholismo` int(11) DEFAULT NULL,
  `id_drogas` int(11) DEFAULT NULL,
  `id_exAdicto` int(11) DEFAULT NULL,
  `id_fumador` int(11) DEFAULT NULL,
  `id_exFumador` int(11) DEFAULT NULL,
  `fumadorPasivo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_estiloVida`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estudios`
--

DROP TABLE IF EXISTS `estudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudios` (
  `id_estudios` int(11) NOT NULL AUTO_INCREMENT,
  `orden` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_estudios`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ex_adicto`
--

DROP TABLE IF EXISTS `ex_adicto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ex_adicto` (
  `id_exAdicto` int(11) NOT NULL AUTO_INCREMENT,
  `edad_fin` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_exAdicto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ex_alcoholico`
--

DROP TABLE IF EXISTS `ex_alcoholico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ex_alcoholico` (
  `id_exAlcoholico` int(11) NOT NULL AUTO_INCREMENT,
  `edad_fin` int(11) NOT NULL,
  PRIMARY KEY (`id_exAlcoholico`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ex_fumador`
--

DROP TABLE IF EXISTS `ex_fumador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ex_fumador` (
  `id_exFumador` int(11) NOT NULL AUTO_INCREMENT,
  `edad_fin` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_exFumador`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exploracion`
--

DROP TABLE IF EXISTS `exploracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exploracion` (
  `id_exploracion` int(11) NOT NULL AUTO_INCREMENT,
  `peso` int(11) NOT NULL,
  `talla` int(11) NOT NULL,
  `frecuenciaRespiratoria` int(11) NOT NULL,
  `presArterBaja` int(11) NOT NULL,
  `presArterAlta` int(11) NOT NULL,
  `temperatura` int(11) NOT NULL,
  `frecuenciaCardiaca` int(11) NOT NULL,
  `exploracionFisica` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_exploracion`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fumador`
--

DROP TABLE IF EXISTS `fumador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fumador` (
  `id_fumador` int(11) NOT NULL AUTO_INCREMENT,
  `edad_inicio` int(10) unsigned NOT NULL,
  `ciggarrosDiarios` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_fumador`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interrogatorio`
--

DROP TABLE IF EXISTS `interrogatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interrogatorio` (
  `id_interrogatorio` int(11) NOT NULL AUTO_INCREMENT,
  `antecedentesCardio` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesDigesti` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesEndo` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesHemoli` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesMuscu` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesPiel` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesReprod` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesRespi` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesNerv` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesGener` text COLLATE utf8_unicode_ci NOT NULL,
  `antecedentesUrina` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_interrogatorio`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamentos` (
  `id_medicamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `aprobada` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_medicamento`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicos` (
  `id_usuario` int(11) NOT NULL,
  `domicilioConsultorio` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telEmergencias` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `celEmergencias` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `emailEmergencias` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario_trabajo` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiempo_consulta` int(11) DEFAULT NULL,
  `cedula` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `especialidad` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `universidad` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `municipios`
--

DROP TABLE IF EXISTS `municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_id` int(11) NOT NULL COMMENT 'Relación con estados',
  `clave` varchar(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2493 DEFAULT CHARSET=utf8 COMMENT='Tabla de Municipios de la Republica Mexicana';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `contenido` text COLLATE utf8_unicode_ci NOT NULL,
  `fechaHora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notas_adicionales`
--

DROP TABLE IF EXISTS `notas_adicionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_adicionales` (
  `id_notasAdicionales` int(11) NOT NULL AUTO_INCREMENT,
  `notas` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_notasAdicionales`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `id_usuario` int(11) NOT NULL,
  `id_antecedentes` int(11) DEFAULT NULL,
  `id_interrogatorio` int(11) DEFAULT NULL,
  `id_alergias` int(11) DEFAULT NULL,
  `id_estiloVida` int(11) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  UNIQUE KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recepcionistas`
--

DROP TABLE IF EXISTS `recepcionistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recepcionistas` (
  `id_usuario` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `refresco`
--

DROP TABLE IF EXISTS `refresco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refresco` (
  `id_refresco` int(11) NOT NULL AUTO_INCREMENT,
  `vasosDiarios` int(11) NOT NULL,
  PRIMARY KEY (`id_refresco`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registro_clinico`
--

DROP TABLE IF EXISTS `registro_clinico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_clinico` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_medico` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_diagnostico` int(11) NOT NULL,
  `id_interrogatorio` int(11) NOT NULL,
  `id_exploracion` int(11) NOT NULL,
  `id_notasAdicionales` int(11) NOT NULL,
  `id_estudios` int(11) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registro_interrogatorio`
--

DROP TABLE IF EXISTS `registro_interrogatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_interrogatorio` (
  `id_interrogatorio` int(11) NOT NULL AUTO_INCREMENT,
  `motivoConsulta` text COLLATE utf8_unicode_ci NOT NULL,
  `sintomas` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_interrogatorio`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `suenio`
--

DROP TABLE IF EXISTS `suenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suenio` (
  `id_suenio` int(11) NOT NULL AUTO_INCREMENT,
  `horasDiarias` int(11) NOT NULL,
  PRIMARY KEY (`id_suenio`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_sangre`
--

DROP TABLE IF EXISTS `tipo_sangre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_sangre` (
  `id_sangre` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_sangre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipocita`
--

DROP TABLE IF EXISTS `tipocita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tratamiento` (
  `id_tratamiento` int(11) NOT NULL AUTO_INCREMENT,
  `id_medicamento` int(11) NOT NULL,
  `cada` int(11) DEFAULT NULL,
  `inicio` datetime NOT NULL,
  `durante` int(11) NOT NULL,
  `indicaciones` text COLLATE utf8_unicode_ci,
  `id_registro` int(11) NOT NULL,
  `unatoma` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_tratamiento`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apellidoPaterno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apellidoMaterno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Domicilio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigoPostal` int(11) DEFAULT NULL,
  `telefonoDomiciliar` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `telefonoCelular` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `genero` enum('Masculino','Femenino') COLLATE utf8_unicode_ci DEFAULT NULL,
  `noSeguroSocial` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `Ocupacion` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sessionKey` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=1032 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla que almacena los datos generales de los usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;
