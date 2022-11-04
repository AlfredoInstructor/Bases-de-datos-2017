-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	5.5.15

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
-- Current Database: `hotel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hotel` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

USE `hotel`;

--
-- Table structure for table `estado_habitacion`
--

DROP TABLE IF EXISTS `estado_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_habitacion` (
  `nro_habitacion` int(11) NOT NULL,
  `nro_documento` int(11) NOT NULL DEFAULT '0',
  `estado` varchar(45) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `cantidad_personas` int(11) DEFAULT '0',
  `fecha_salida` date DEFAULT NULL,
  PRIMARY KEY (`nro_habitacion`,`nro_documento`),
  KEY `documento` (`nro_documento`),
  KEY `nro_habitaciones` (`nro_habitacion`),
  CONSTRAINT `nro_habitaciones` FOREIGN KEY (`nro_habitacion`) REFERENCES `habitaciones` (`nro_habitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_habitacion`
--

LOCK TABLES `estado_habitacion` WRITE;
/*!40000 ALTER TABLE `estado_habitacion` DISABLE KEYS */;
INSERT INTO `estado_habitacion` VALUES (101,0,'libre',NULL,0,NULL),(102,43568789,'ocupado','2017-11-08',2,'2017-11-09'),(103,0,'libre',NULL,0,NULL),(104,0,'libre',NULL,0,NULL),(105,0,'libre',NULL,0,NULL),(106,0,'libre',NULL,0,NULL),(107,45674542,'ocupado','2017-11-12',1,NULL),(201,0,'libre',NULL,0,NULL),(202,0,'libre',NULL,0,NULL),(203,45454545,'ocupado','2017-11-08',4,'2017-11-09'),(204,0,'libre',NULL,0,NULL),(205,0,'libre',NULL,0,NULL),(206,0,'libre',NULL,0,NULL),(207,0,'libre',NULL,0,NULL),(301,0,'libre',NULL,0,NULL),(302,0,'libre',NULL,0,NULL),(303,0,'libre',NULL,0,NULL),(304,0,'libre',NULL,0,NULL),(305,0,'libre',NULL,0,NULL),(306,0,'libre',NULL,0,NULL),(307,0,'libre',NULL,0,NULL),(401,0,'libre',NULL,0,NULL),(402,0,'libre',NULL,0,NULL),(403,0,'libre',NULL,0,NULL),(404,0,'libre',NULL,0,NULL),(405,0,'libre',NULL,0,NULL),(406,0,'libre',NULL,0,NULL),(407,0,'libre',NULL,0,NULL),(501,43985764,'ocupado','2017-11-09',2,'2017-11-10'),(502,0,'libre',NULL,0,NULL),(503,0,'libre',NULL,0,NULL),(504,0,'libre',NULL,0,NULL),(505,0,'libre',NULL,0,NULL),(506,0,'libre',NULL,0,NULL),(507,0,'libre',NULL,0,NULL),(601,0,'libre',NULL,0,NULL),(602,0,'libre',NULL,0,NULL),(603,45843182,'reservado','2017-11-07',1,'2017-11-14'),(604,0,'libre',NULL,0,NULL),(605,0,'libre',NULL,0,NULL),(606,0,'libre',NULL,0,NULL),(607,0,'libre',NULL,0,NULL),(701,54343243,'ocupado','2017-11-10',1,'2017-12-10');
/*!40000 ALTER TABLE `estado_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitaciones`
--

DROP TABLE IF EXISTS `habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitaciones` (
  `nro_habitacion` int(11) NOT NULL,
  `tipo_habitacion` int(11) NOT NULL,
  `id_tipo_habitacion` int(5) NOT NULL,
  `habilitada` tinyint(1) NOT NULL,
  PRIMARY KEY (`nro_habitacion`,`id_tipo_habitacion`),
  KEY `tipo_habitacion` (`tipo_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (101,1,1,1),(102,1,2,1),(103,1,3,0),(104,2,4,1),(105,2,5,1),(106,2,6,1),(107,3,7,1),(201,1,1,1),(202,1,2,1),(203,1,3,1),(204,2,4,1),(205,2,5,1),(206,2,6,1),(207,3,8,1),(301,1,1,1),(302,1,2,1),(303,1,3,1),(304,2,4,1),(305,2,5,1),(306,2,6,1),(307,3,9,1),(401,1,1,1),(402,1,2,1),(403,1,3,1),(404,2,4,1),(405,2,5,1),(406,2,6,1),(407,3,7,1),(501,1,1,1),(502,1,2,1),(503,1,3,1),(504,2,4,1),(505,2,5,1),(506,2,6,1),(507,3,8,1),(601,1,1,1),(602,1,2,1),(603,1,3,1),(604,2,4,1),(605,2,5,1),(606,2,6,1),(607,3,9,1),(701,2,10,1);
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `correo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion_1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `ocupacion` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nro_habitacion` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SECUNDARY` (`documento`,`nombre`,`apellido`,`nro_habitacion`,`check_in`,`check_out`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
INSERT INTO `historial` VALUES (9,45865214,'Juan Carlos','Cardozo Fontes','Rivera',95863214,'joaquin@hotamil.com','Joaquin Suarez 2589','Uruguay','2017-11-22','Plomero',106,'2017-11-08','2017-11-08'),(10,45678790,'Maria Armenia','Cardozo Quilmes','Artigas',98767676,'Maria@hotamail.com','Varela 56','Uruguay','1998-11-07','Empleada domestica',104,'2017-11-08','2017-11-08'),(11,45865214,'Juan Carlos','Cardozo Fontes','Rivera',95863214,'joaquin@hotamil.com','Joaquin Suarez 2589','Uruguay','2017-11-22','Plomero',105,'2017-11-08','2017-11-08'),(13,4566424,'Marcos','Cardozo','Rivera',95252525,'Marcos@gmail.com','Maximiliano Luz 980','Uruguay','1995-11-08','Carpintero',306,'2017-11-08','2017-11-08'),(14,345456786,'Vicente','del bosque','Rosario',453563378,'vicente@gmail.com','Rodo 765','Argentina','1993-11-14','deseocupado',106,'2017-11-08','2017-11-09'),(15,45865214,'Juan Carlos','Cardozo Fontes','Av. Italia 4543',95863214,'joaquin@hotamil.co','Av. Italia 4543','Uruguay','2017-11-22','Plomero',104,'2017-11-08','2017-11-09'),(23,54343232,'Alejandro01','Perez3 Suarez','43street',99432352,'seleccionar','Juan barboza 222','EE:UU','1999-04-09','Veterinario',106,'2017-11-09','2017-11-09'),(24,45536389,'juan gabriel','alvez roldán','rivera',92395209,'gabrielalvez727@hotmail.com','maximiliano luz 980','Uruguay','1993-01-09','programador',605,'2017-11-09','2017-11-10'),(25,45678902,'pedro','ramirez','rivera',98765432,'ahda@hotmail.com','hugo 547','uruguay','1986-12-18','ingeniero',202,'2017-11-10','2017-11-10'),(26,234234234,'asdasd','asd','asd',23242432,'asd','asd','asd','1998-11-12','asd',107,'2017-11-12','2017-11-12'),(27,49624867,'Nicolàs','Borba','Orgrimar',12346789,'Nico@gmail.com','Valle de la fuerza 123','Durotar','1985-05-12','Paladìn ',206,'2017-11-12','2017-11-12');
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huesped`
--

DROP TABLE IF EXISTS `huesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huesped` (
  `documento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `direccion_1` varchar(100) DEFAULT NULL,
  `direccion_2` varchar(60) DEFAULT NULL,
  `pais` varchar(40) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `ocupacion` varchar(40) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `estado_cliente` varchar(25) NOT NULL,
  `responsable` tinyint(1) DEFAULT NULL,
  `nro_habitacion` int(11) DEFAULT NULL,
  `personas_acargo` int(11) DEFAULT '0',
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huesped`
--

LOCK TABLES `huesped` WRITE;
/*!40000 ALTER TABLE `huesped` DISABLE KEYS */;
INSERT INTO `huesped` VALUES (4567454,'Pedro Boldaberry','Pereira Rosel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ocupado',0,203,0),(43087564,'Antonella','de Flores Albaños',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ocupado',0,203,0),(43568789,'Juan Daniel perez','Ibarra Martinez','Brasilia',923455467,'Juan@gmail.com','Maximiliano Luz 980',NULL,'Brasil','2017-11-22','developer',NULL,'ocupado',1,102,2),(43985764,'Juan','Perez','rivera',99453625,'juan001ad@hotmail.com','Sarandi 2229','Sarandi 2229','uruguay','2017-11-14','director escolar','no molestar de 3 a 5 hs pm','ocupado',1,501,1),(45454545,'Ana','cataño','Rivera',95828336,'acdf@gmail','Tell Ramiz ',NULL,'Uruguay','2017-11-09','vaga',NULL,'ocupado',1,203,4),(45674542,'asda','asd','asd',324234,'asd','asd','asd','asd','1997-11-12','asd','asd','ocupado',1,107,1),(54343243,'gabriel','osorio','rivera',99342323,'gabrielosorio@hotmail.com','luis godoy 2232',NULL,'uruguay','1999-11-10','veterinario',NULL,'ocupado',1,701,1),(111112234,'Jose','Costa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ocupado',0,203,0);
/*!40000 ALTER TABLE `huesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserva` (
  `documento` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `pais` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nro_habitacion` int(11) NOT NULL,
  `personas_acargo` int(11) DEFAULT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date DEFAULT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (45843182,'cesar','meneses','rivera',92450800,'uruguay',603,4,'2017-11-07','2017-11-14');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cama`
--

DROP TABLE IF EXISTS `tipo_cama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_cama` (
  `id_tipo_cama` int(11) NOT NULL,
  `nombre` varchar(19) NOT NULL,
  `cantidad_camas` int(11) NOT NULL,
  PRIMARY KEY (`id_tipo_cama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cama`
--

LOCK TABLES `tipo_cama` WRITE;
/*!40000 ALTER TABLE `tipo_cama` DISABLE KEYS */;
INSERT INTO `tipo_cama` VALUES (1,'simple',1),(2,'doble',2),(3,'familiar',4);
/*!40000 ALTER TABLE `tipo_cama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_habitacion`
--

DROP TABLE IF EXISTS `tipo_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_habitacion` (
  `nombre` varchar(15) NOT NULL,
  `tv` tinyint(1) NOT NULL,
  `cable` tinyint(1) NOT NULL,
  `frigobar` tinyint(1) NOT NULL,
  `ventana_frente` tinyint(1) NOT NULL,
  `aire_acondicionado` tinyint(1) NOT NULL,
  `tipo_cama` tinyint(1) NOT NULL,
  `escritorio` tinyint(1) NOT NULL,
  `pc` tinyint(1) NOT NULL,
  `yacusi` tinyint(1) NOT NULL,
  `id_tipo_habitacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_habitacion`
--

LOCK TABLES `tipo_habitacion` WRITE;
/*!40000 ALTER TABLE `tipo_habitacion` DISABLE KEYS */;
INSERT INTO `tipo_habitacion` VALUES ('economica',1,0,0,0,0,1,1,0,0,'1'),('residencial',1,1,1,1,1,3,1,1,1,'10'),('economica',1,1,0,0,0,2,1,0,0,'2'),('economica',1,1,0,0,0,3,1,0,0,'3'),('normal',1,1,1,0,1,1,1,0,0,'4'),('normal',1,1,1,0,1,2,1,0,0,'5'),('normal',1,1,1,1,1,3,1,0,0,'6'),('swit',1,1,1,1,1,1,1,1,0,'7'),('swit',1,1,1,0,1,2,1,0,1,'8'),('swit',1,1,1,0,1,3,1,0,1,'9');
/*!40000 ALTER TABLE `tipo_habitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-13 17:31:22
