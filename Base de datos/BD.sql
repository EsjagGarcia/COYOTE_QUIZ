CREATE DATABASE PRUEBA;
USE PRUEBA;

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `USUARIO_KEY` int(11) NOT NULL,
  `USUARIO_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`USUARIO_NOMBRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (401,'ElDios');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `ESTUDIANTE_INDICE` int(11) NOT NULL AUTO_INCREMENT,
  `ESTUDIANTE_NOMBRE` varchar(80) DEFAULT NULL,
  `USUARIO_NOMBRE` varchar(20) DEFAULT NULL,
  `USUARIO_KEY` int(11) NOT NULL,
  `ALUMNO_GRUPO` int(11) DEFAULT NULL,
  `ALUMNO_PUNTAJE` int(11) DEFAULT NULL,
  `ALUMNO_PARTIDAS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ESTUDIANTE_INDICE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Margarito Lopez','Margarito',315115879,501,3,5),(4,'Margarito Rosado de la Colina','ÑOP',315897867,123,0,0);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinadores`
--

DROP TABLE IF EXISTS `coordinadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinadores` (
  `USUARIO_KEY` int(11) NOT NULL,
  `USUARIO_NOMBRE` varchar(20) NOT NULL,
  `COORDINADOR_NOMBRE` varchar(80) DEFAULT NULL,
  `ASIGNATURA` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`USUARIO_NOMBRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinadores`
--

LOCK TABLES `coordinadores` WRITE;
/*!40000 ALTER TABLE `coordinadores` DISABLE KEYS */;
INSERT INTO `coordinadores` VALUES (301,'Elcoordi','Jesús Alberto Lopez Gerardo','matemáticas');
/*!40000 ALTER TABLE `coordinadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matematicas`
--

DROP TABLE IF EXISTS `matematicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matematicas` (
  `UNIDAD` char(1) DEFAULT NULL,
  `INDICADOR` int(11) NOT NULL AUTO_INCREMENT,
  `PREGUNTA` varchar(100) DEFAULT NULL,
  `RESPUESTA_correcta` varchar(40) DEFAULT NULL,
  `RESPUESTA_uno` varchar(40) DEFAULT NULL,
  `RESPUESTA_dos` varchar(40) DEFAULT NULL,
  `RESPUESTA_tres` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`INDICADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matematicas`
--

LOCK TABLES `matematicas` WRITE;
/*!40000 ALTER TABLE `matematicas` DISABLE KEYS */;
INSERT INTO `matematicas` VALUES ('4',1,'??Cu?íl de los siguentes es un conjunto vac?¡o?','{}','vac?¡o','{f}','{{}}'),('4',2,'??Cual es el nombre de la \"chicharronera\"?','Fromula general para la factorizacion de','NO se','no existe en matematicas','Producto notable de segundo grado'),('4',3,'??Cu?íl de los siguetes incisos es el producto notable  de (a + b) (a ÔÇô b)?','a2?áÔÇô b2','a+b','a-b','2a+2b'),('4',4,'??Cu?íl es un numero imaginario?','imaginario','ai^2','ai','a'),('4',5,'Se dice que ____ son densos en los enteros','Reales','Enteros','Imaginarios','Negativos'),('4',6,'El conjunto a tine a numeros del 1 al 1323 y el conjunto b tiene las letras a y b,??cual es su inter','{ }','a yb','todos los numeros','Imaginarios'),('4',7,'??Cual es el producto de notable de (a+b)^2?','a^2+2ab+b^2','a^2+b^2','a+b+a+b','a*2+b*2'),('4',8,'Valor de : 4!','24','96','16','8'),('4',9,'El valor de : a^2/a','a','a^2','1','0'),('4',10,'El siguente es un numero entero positivo','8','8.333','-8','01-feb'),('4',11,'Un numero irracional','Pi','4','8.33313213','8.33333'),('4',12,'??Qu?® es un numero imaginario?','numero que piensas','una raiz negativa','un numero con un denominador mayor al di','un numero con un divisor mayor al denomi');
/*!40000 ALTER TABLE `matematicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partidas` (
  `PARTIDA` varchar(50) NOT NULL,
  `JUGADOR_1` varchar(20) DEFAULT NULL,
  `JUGADOR_2` varchar(20) DEFAULT NULL,
  `ACIERTOS_j1` int(11) DEFAULT NULL,
  `ACIERTOS_j2` int(11) DEFAULT NULL,
  `ganador` int(11) DEFAULT NULL,
  PRIMARY KEY (`PARTIDA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `PREG_ASIGNATURA` int(2) DEFAULT NULL,
  `PREG_UNIDAD` int(2) DEFAULT NULL,
  `PREGUNTA` varchar(100) DEFAULT NULL,
  `RES_CORRECTA` varchar(40) DEFAULT NULL,
  `RES_UNO` varchar(40) DEFAULT NULL,
  `RES_DOS` varchar(40) DEFAULT NULL,
  `RES_TRES` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesores` (
  `USUARIO_KEY` int(13) NOT NULL,
  `USUARIO_NOMBRE` varchar(20) NOT NULL,
  `PROFESOR_ASIGNATURA` varchar(15) DEFAULT NULL,
  `PROFESOR_PREPA` int(1) DEFAULT NULL,
  PRIMARY KEY (`USUARIO_NOMBRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (201,'LuisEnrique','historia',101);
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `USUARIOS_TYPE` int(1) DEFAULT NULL,
  `USUARIO_NOMBRE` varchar(20) NOT NULL,
  `USUARIO_KEY` int(13) DEFAULT NULL,
  `USUARIO_CONTRASENIA` varchar(100) DEFAULT NULL,
  `COLOR` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`USUARIO_NOMBRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (3,'Elcoordi',301,'0917647716273','#c79810'),(4,'ElDios',401,'48580955032,032,5hooll','#62d53c'),(2,'LuisEnrique',201,'470546264.4.p3e1','#c79810'),(1,'Margarito',315115879,'26942574160273','#313895'),(1,'ÑOP',315897867,'74917108953863,4,4,saopy','#a06710');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-27 22:13:39