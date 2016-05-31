-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: prueba
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

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
  `ESTUDIANTE_NOMBRE` varchar(80) DEFAULT NULL,
  `USUARIO_NOMBRE` varchar(20) DEFAULT NULL,
  `USUARIO_KEY` int(11) NOT NULL,
  `ALUMNO_GRUPO` int(11) DEFAULT NULL,
  `ALUMNO_PUNTAJE` int(11) DEFAULT NULL,
  `ALUMNO_PARTIDAS` int(11) DEFAULT NULL,
  `estudiante_indice` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`estudiante_indice`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES ('Margarito Lopez','Margarito',315115879,501,3,5,1),('Manolito Rodriguez Moran','Manolito',123412345,123,0,0,2);
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
INSERT INTO `coordinadores` VALUES (301,'Elcoordi','Jes?s Alberto Lopez Gerardo','matem?ticas'),(315128299,'Ramoncito7','Juan Ramon Avalos','MATEMÁTICASIV');
/*!40000 ALTER TABLE `coordinadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matematicasiv`
--

DROP TABLE IF EXISTS `matematicasiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matematicasiv` (
  `UNIDAD` char(1) DEFAULT NULL,
  `INDICADOR` int(11) NOT NULL AUTO_INCREMENT,
  `PREGUNTA` varchar(100) DEFAULT NULL,
  `RESPUESTA_correcta` varchar(40) DEFAULT NULL,
  `RESPUESTA_uno` varchar(40) DEFAULT NULL,
  `RESPUESTA_dos` varchar(40) DEFAULT NULL,
  `RESPUESTA_tres` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`INDICADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matematicasiv`
--

LOCK TABLES `matematicasiv` WRITE;
/*!40000 ALTER TABLE `matematicasiv` DISABLE KEYS */;
INSERT INTO `matematicasiv` VALUES ('4',1,'??Cu?íl de los siguentes es un conjunto vac?¡o?','{}','vac?¡o','{f}','{{}}'),('4',2,'??Cual es el nombre de la \"chicharronera\"?','Fromula general para la factorizacion de','NO se','no existe en matematicas','Producto notable de segundo grado'),('4',3,'??Cu?íl de los siguetes incisos es el producto notable  de (a + b) (a ÔÇô b)?','a2?áÔÇô b2','a+b','a-b','2a+2b'),('4',4,'??Cu?íl es un numero imaginario?','imaginario','ai^2','ai','a'),('4',5,'Se dice que ____ son densos en los enteros','Reales','Enteros','Imaginarios','Negativos'),('4',6,'El conjunto a tine a numeros del 1 al 1323 y el conjunto b tiene las letras a y b,??cual es su inter','{ }','a yb','todos los numeros','Imaginarios'),('4',7,'??Cual es el producto de notable de (a+b)^2?','a^2+2ab+b^2','a^2+b^2','a+b+a+b','a*2+b*2'),('4',8,'Valor de : 4!','24','96','16','8'),('4',9,'El valor de : a^2/a','a','a^2','1','0'),('4',10,'El siguente es un numero entero positivo','8','8.333','-8','01-feb'),('4',11,'Un numero irracional','Pi','4','8.33313213','8.33333'),('4',12,'??Qu?® es un numero imaginario?','numero que piensas','una raiz negativa','un numero con un denominador mayor al di','un numero con un divisor mayor al denomi'),('',13,'','','','','');
/*!40000 ALTER TABLE `matematicasiv` ENABLE KEYS */;
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
  `PREGUNTA` varchar(100) NOT NULL,
  `RES_CORRECTA` varchar(40) DEFAULT NULL,
  `RES_UNO` varchar(40) DEFAULT NULL,
  `RES_DOS` varchar(40) DEFAULT NULL,
  `RES_TRES` varchar(40) DEFAULT NULL,
  `USUARIO_DO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PREGUNTA`)
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
  `PROFESOR_NOMBRE` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`USUARIO_NOMBRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (2147483647,'Fernando64','biología',2,'Luis Fernando Avalos'),(201,'LuisEnrique','historia',101,'Luis Enrique de la Fuente Rodríguez'),(1234567890,'Ramon7599','matematicas',6,'Juan Ramón Avalos Gutiérrez');
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
  `IMAGEN` blob,
  PRIMARY KEY (`USUARIO_NOMBRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (3,'Elcoordi',301,'0917647716273','#c79810','0'),(4,'ElDios',401,'48580955032,032,5hooll','#62d53c','����\0JFIF\0\0\0\0\0\0��\0�\0	\Z (! &\" \Z!6!%),.13 4D3-7(-.+\n\n\n+++++++++++++++++++++++++++++++++++++++++++++++++++��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0<\0\0\0!\"1#2AQaB$3Rq�C�b��4cr������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0?\0�thѠ4hѠ4hѠ4k��p��I#*\"���@U�I>��O��\0Yo��Ȍ�;`��\0���*��ů/C�D{\rS�uX6���MI��(�\0a~��5L��=����`,w�������Z�A�,�K�N�ns>妚���n��K�KY�(�\n�bII=Bf��T2a!�HJ�lƈ؅���T����C}��Ǹ�j�X�Qe\0d2@@��?Vk={�MY��u9��R�ڰ\rF0����[�~)�^�;{HP?F�g7fb��)��\'����Oy+�s�kD2��\0�\nI�QV�\0P�q�J2$\'��z�q��y?��=�Ϊ�2J�9�@�MEt�f73:��N���K#26Fё�@r�V�1�vK��<IGF�U�v�n�*2c�RI�VBV�	�j1����DH,V0�NK��We5�,;\rܮ���c!hE�Zv�Z_<�_\0}�@�]_s�F��:���pO�=fR@![�_F�G+Y�nw8É�Q�gRh�֥���PAcEX�X�}ɕR X����f�\Zٜ2�IZ\"��dNa�|+�����o>Ǯ��A\0��^���x�Se����JmZ`b`]ʦQ�5�M1*��a?[|��|���\"�8}���207�c����*O�AzѣF�ѣF�ѣF�ѣF�ѣF�ѣF�ѣK��[�j��-����v<D[gc�\0t_�\0�>�\'�m�b��rH��2*�]���	�\rx�K�Z\"��ٖ��(��v�1gpr5Qe��7���ө4;��{ F$�PO(��L\"R�H*x|X�T(�sm��qQ�C��.pۭ㹌)�U#�ڑ�b%n�-W�?��$W�m!Fd/4��L�Ǐ\"���:���A\Z���S��*�b\ZY��C��93L�g/����	7�E\"h%U�E*8*W&�8�`��*<J���<��+�����($�`+�\n�,x�4izH�D2n7s�@��G�6P���bїys%*��R��#��7>=��R�d�S��� /.O���x������A�F-�.H*EdE2�E-�:�*�7���<�X�ċ�I\r����!���1#+�������̸2&�cWV���;s��袢N�UU\r*�H���1F�e�J�.�<R4�x�$1�3�R���gB�A\nEeq����\0b��Eo�Ćg�jc��JӀ2����iF6p�����q>j$ؠ8��Hn��_i\n���VS�V(Q�)�rH��h�y��*s�Al�N(o�LM�ދd�5?R���vӤ�^x�\0��6Y\n�\n��w,=+zr\r��n1�nzbḞ�&�c+�e�c�\0Ǜ%Y���Ӟ����Е�m4����Ybb���ԅ1%])²��\0�T���ITW���w;D���A���m��u�F�$�\Z�D)C6+�G��yX%������z/_��]�W�d04�ǼEgX҃	Z2�wٳy\0O��m;�L�!���d�ٽ�Z��	�\0K���#_�\'ڪSo�-tm��0�����r�5%�F�V�l���\Z)��,�pc���x�!�ف%A�~��\Z��o�_-H�Y6,�D��6��]�A+ʹR��_��Bq�֯���;�Sq��ū�A���A�Z	�4h�\Z4h�\Z4h�\Z4iw�:�mv�n��aG�c¢��3�~�@��)�;.�\0��u/L�B�lE�Ax,H���60��g�q�*{���@����v��Hн����\0���I8�BY����k9O���(�\n��&��&K̎<e�J?=��lb[�Dw��ԣ�F���_\\��\n2������*!A\ZeХ��,�JlU:��C}��#H���K$�0�ӑ�ωq~\'X�@�dE����l\0���T)5F�\0��2��鴕c�<�E0.�NjmJ�Z@��L쌥Ee�m~9�k�)g����A�\'�v�8bi<b�qh�We���Y`,y.JC]�\'i�`�ܪd(Ɍ*\'2�a� ����JW,��N�.��S�\r�����{�\Z\0�[cJ�Ch�K:�Ȼ��	\0B�7go�l�`K� �a��t����\0�JrXa�\"���\Z2Ɗ�b\n�l.n2`x��OF���}�?�M,`kPUHB@����q���u;c��\n�U+�JT�ñ��p���\'�\0}��-�������vՕ�[�eR��������^^i��6���\0p@�atFTI�Ted���\0��\n��\r}I�J�X�q r�C��A����(V�HJ�y��ڬ�FC\\x�8�TQ\0��m���;t4MG+�B��@�J���\0�R�N��!K`�ړ���%ReaIq�T��\0�jC��4���?!\"%J3+�A*ao�|�h�9��SX���	dVFT+J�@��Y�T�*Ŕ1<;t\Z�Z2Ħ6s\0`>��uN�,b���;��.�ex�YM��/�1�� E���\'�~����4u���l�HM3\n�e�M��\0\Zw�+$b@��mן�~�Ġ�B~��vB%v;p�Z���m������,)k�`Y��\r}���j���S)P�8U��9z2���r$`˕\Z.��%�)� X�#d<Ȫʰ\n�)�;�y�\n��11�y*8+���u�A���\0�wTY7��/v8�����I�;��Q�������Y�1�x�N�\\�`G�u@�\n(��7,W�,�8���\0HzT��m�:��\rE3��IdY�*Y��	\nl�:\r�F�\ZF�\ZF�\ZY���� �rQ{�(u<��B�)�-�?����j��O��o�xD���Ĉ����а�d��Ņ�/A��q0�AZA�T��\"��NIq�=��:BAv��>�ߥ�~�Z�26N�$�q�:���U����͋\Z��=�L#\\�\"�0VX��ȒJ��\Z�-D����Q�l���Z�\0_��V>��ɤ�f�{r�j#\rO�K�8�dX[1��}���$����\\ͩ\n�n�H[�(��*�����9#�_��0�G`X�1R�H&��nT]�ৠ�\0N�*�e����&��ַ�Ȣ��#w���q*��LI!q�tȟb������C��@�S�Hw3�GT�Ճ��G%Ǚ���A�C#��d�\Z������~������H	1��@�\0Eߕ��A6�y��ܻe��ҍ�]VGi�P��Y)�S��<��D~@6~_�a��M)\n�;�e�ߊ��U�V?����\\��*\0]�١d?��ΐ�η&�Eh�5����\0m��!M\Zk\'����z��A����f��U-A��(=�G��#*�1�v́Ȭ���c�@a�bI<9��/��B�\"�#��p Q�%����\0}3x8B�����G�KB��])�,\nq����2�9H	Vʬ��y��1�\n�\0\Z���ؖ)mc,EGw�\\X��\0r}��f��m�z.�і��T�?q�Q���Ξ��I+�H�*�8�d ~���󯲰2�Uh%����؁����\0:��?D�ɋSE��\"ʽ��xq�6�j�>UM�\0U�Y;\\��d��P@�@�S��#�8\r�\0y$	7PE*D�\0PI\Z�ĶT���.�?���\\�]>�Cq����?�\Z�?ҽ��um�N��\0�\Z��F��pK8�W��z~�8cHb@���U�\Z��@hѣ@hѣ@hѣ@hѣA[�?�v;����E%^��J�c��X��\0G�9v�2`F3G��\084�����iz㽙�7tC#*�TRr��	�΃\r�\r���k�wr#�@�Ɯ7�*�F+*�&���ɵ���G�!d��DJvp��(<ql�1�f5ɸd���f�[�����eD����A�����qC^N�m����)I\Z4%{J�θR�9\Z�W�\0���F�?��F�R%���\0H ���rk����\Z��H�}��Q+G���\0���b\ru�װH�!�^z��v��;��I�6��i�H�����\Z�\Zj�\"E��v��\\���%�\n�\Z�ds����ݛ$9���nfYڲ�Y0~��_Q����l�M��n�Yf�=���ѕ�\0�88��^k�J��!w�$���9$�a��*#%Z��c�f5�H_�N���A��\r8HB�����`�9\0r�A<3��/y���<c,���ɢ�sl����~,��u���gY��g�+(����}X� �� 7ؿx�ֶ��*n%�E2(B�!�V��bެ�?�1�N�� �HbWS�e䐫��;b�������ƙ@M�,\rq`�r����[t�#���l.J\Z��Iv����#$I�9��h��&��6y��\'�X�gI��D��*�=�r��Xg�d�~���ɮ�\0S:��>�U��������D����^B\\�U��\"P)�5�.�[/ŕf��\0�cG�Nr��?L̴ʈ�/��)����;v~�{y�����j�ʀp�H����S?~JG�4uh!�$r�Jb�(�$��V�mאyG�7�L�V��4\0v����2�0��\"U�9����λ|/t�9���,vm\'ދA�ܛ9b��i���%,�T�1�A�\0�]rG���	\Z���{&�1Y��7F�7,}�\n�����x�iZ5���E:�$��dQ����L�\Z4h�\Z4h�\Z4h�\Z4h�\Z�N���b=C���u#?��!h�����_����lco��Ji�^��x^0H+�Q��U�%.�XpG�&�R�0\"��q��/��_*�5�uL���\0�c��7����3D31ŁaB��P�\r(H�	?�%�-��&�I��U�ߍ~�&(�Y(�.�B�@���a@Qf�h\0?\'�R:�M.�k�9H�#9�\n�S�+�e )�Z�uv����\\�b2$(�x���B��,{\\�[vъ�`�o�ŗ�͗�l�ȿ�^�,����*��|��\0})~�(\n��[2�1Jv��P��$X�\0H�=]&��ʧ�$�HO����)W�%�;_��,�V[�A\n�Dԣ1H���l�S�>*�-&�Ѻ#(�<\'�,B�B��2\'*h\n7����\"�\0��V��[%G�#�\"���\Z�o��$pP�meI�)Fi��,�=X��Y��\Z%�hM܍����Z���WȨ���0}#�\0tC�U.�ȭ�$+@�J�9���z�n�<���e$E#4jT[$��#�*�Mb��aGA�*��7la�ik�\0İ�K^\"�wH�_M�A����pRU�ş��a2��܂$��I������i��TI<6D:��E�F�OK�NWթ�Uշ�u@��Fe�F�K$�H�����^�L�s6ގ,�p�GF���-6�7\"���������M\"\0o�k����K�$�\0����<�V��~�,I߿�z�z�,��H7;�ف�fy&X���LC\Z���p?�I��n�R�a������$i֗|sfa�m�\"�pĄ~�QT�\0���F��F��F��F�o7�7�H�G)����\Z�K�]܆©�Y\\׵�\0��\0�]�,A4	�,���Kq��<�4DW�Sa�_,�k�^}�9����ŅS��I-�q����$�R�r$T��A��Ue$����gH��X8{��\n�/Q�Q������k\"?{\"ڽ���K����q����gg��X�c��.\n�-Z�}��%뻈\nn�G�R�6@�2P�,��I`���m�#��I����n����P�m�²\0��$>��6�M����E��?mc�;\0U��ކ`�RJ��Ϲ4{��	4�s\Z�2B�Z��P\Z��⍊�h$tM���o��Iy^�Q��~�Y-��l� ���*?H�\0�h\0��AL��x�W�\r��?�$J��h�k�\0D%�T�/�n���غ>�����E����R�OF��#�Ƞ��#@�	���&\n�A�LK����h}�Z��ۑ]�c�\n��g�ʘ����:��V�p>�dE�\0�g�ZK4Rm���匸d���T>�b�\0�r�� |zSK0����t�-�\0ªQ�������$;HL΁;f�[`��MC�T��~\0�n��U�pO�\\#ȃk���\0P\">=\Z����{h��+<��TW��*��Y+��a�ϾS��s�`Y��*Y��U�\\�X	\"%�V*�el-�m��38�4���2f3���[\\��YA��ǰ�����Ϝeч�6!ۀ\0����8��#_I\r�a�1ʧ���؆�1*�t�wrTbD�.O��R9!��+�ah��)� ]��}9h����H��cb\Z9J`�37e\n��8e�����+�$A܅�T�<2FMceT�d!�����$2f�.�NQ�i��},�� �*�f�q����=���F�\ZF�\ZF�\ZJ�B�F���;m��\"ܱ�?���\09��MB�]*Ԭ��q>��WEL�A�@�~�Cf�!^�Z� \08o�*k*�HF�\0U}�Lgod����ٯ�5yV4a/p,��o�\Z��%Z�dl�_E�Cǥ��\0�2B�-UO��h�E�Ϗ�U,��Hؙ\n�.C&�r�\"E�pެ��$��r���2�e����#�u�}G����\n$*�W`l�� �l�⬎AA�~G�S׹��l㥊��B��,]��c��=C��}��N��wZV@Ol�6�t�/�b���Ջk�o,M+�L�T��L�1�@Y�����v=�m�fTR�5�G�1�W7O�%��$$pE�>5Ҷ���8�D�/.]ԏrĖ8Ջ��@�/�+���g$\\y#�Ь�k*��i�Y\n}��7���6����sF	j�%eD׾A*�����!.ȡ�ܺ\"��o\0�\n��W���:�PH$X�&D�Cx�ZX�c̥��[��#軽������v�P�&B�5x����,�!�Sغ�\n��!�#H��&�5vsn?~_(��6�6��\"��\Z3��٠�PEm�H�3�cE\n��\0����)QA��p���C�)@f��J��_aZZ.\nbH?y�Tޥ�,���RDa�8��b�m�8�<��Dť��)�ϋ+���������Hk��OT��u/*\"��0.��dR����[�|\0���[a4t-������i��V\"��ׇ�oJv?j>�H�IY69�$,��q��S�\0��T�\'t�}���8\n1u6�(��f��#i�dw]���1(V9˂����ђ8\\�L\0�c����{5g�2�2�!�$lYI\0�q�����:2�J��-�\\R\0i��i��e�PuX�̻<o\Z��]��fu91�`�Y8�2�o�Gu;��Uo\0j<��Sf�Q��:�1�P��,��$F���CM5SVB�L$�#5�,�A�Gݖ��1#�b�{�$1�X6JJ\n��@$�~����z	Z4h�\Z4h�\Z4h�\'ޖ�w�7jU0:��\\\\�?����h��k��Ϸxd�	#�]�\nC��U+MT>�=i��l$B��wA��S��\0�G�Aymp�D�a\"7�:~ƈ8�����+x�S\"�IW��,�㊲1<f����\r3\Z��V8������vlY\n��4��\0$����޳\0�w*����ѧ�v���̤�e����u~�1&\"�õ��j�|deϑ����R*!Ap�D����PgV!��dH��N,�B��v�VҺwG����I#�B#,ّ�%@1nIvr�D����RcH%D0�͚��Fʿ�1��l_j��$�~;ԉ�u8���.<B%�4�<[��{e��Wmh\'tDh�Hw-ۄ�KT덱�d�����w��h��Ѱ�+\\R\Z<k�ӦI.�2�=�rD[�UA4��\'�[6I�#��Z(�8��˻�?��\0?�c���g.���fO�k4\Z���+��޽6�I���=�dE�|���@��BPР�����ӏS�\0���(��I�q&���V��[�T�*�a�Y���ܩU�+2)����\"�Wj\n�	�c�R��R�j�@-�Q��\0���o�(�*\Z#C����\0���=�,���H��X�\n?��z�b�A]}�l$���݉��̜n �Qd�`hU�Ah�Ux��	a@~�X��p�A�J��ȳ^$ڬjVu�*�Q���d�����~u�e���<�\0I���B��g_b���6\0Z\0��m厶q2���GBI�R��0+�J��۰�h�B.���춛fD	,rL�@�,l�5��W!��[	W �F�����t]��Ɲ�~c?IY�>j�d�\n���[\'K^(��!���4��tN��B<؅����@���7!��XwĒFNf��\nT|2�@B�#� W��A��*y�h�]�H�;LB@�/\n/�k�vv�^Ҁ�p�	PۊD���\n�#.�1�Kfo���Z�#P�,�2��,\n�$�K�\n4:\'�����72��I�����X\"G��_��O��T����@b2V]�ƽ�vg��\Z�~ӣYD�LH���쐭�Ս�0pO�7��)�m�R��^� �:P�yG��0�A��XP\0�*1\\\0�\Zru���\0��nXn�nq~��#yz#X�C�.Ґ��h��$_��ݳ��F��8������`O*,�F�\0EF�HX�Ic�,E��5�9$,z5��$�D�Ef7\n�H�U�]ME�8 �#S4�\Z�+�&��Mg�΃֨/����(�$����A�*U�rk[*G]�\0ȥܯn(���;��a�{q+J�E�,���2�WY�2�l�Hr6Y$vbi<�u(e�ХZ\nT�Ȼ��L�b�\n��{R씪c%�\0������m�f��u�_\"�L��!�)� ι5�yă]�b3!H�ٵ���#��c�3��6�y�8�+�����K�P�Q7X�\0�a�B3���H�Ѡ�m�W���P���#�$ruc�\'dS܁̊L�q?x�S�EC��ЊR����1\Z9�ȣ�K�eo;�.酭�v���\nC��:�s�2����C�F\n�Ȟ@����;GeS<`;�+=�I1f�c9��,mcŔ9��L��$iLQ%���a���n9�\r~r����N$���+�7*3�*آ���5i�}Sy ��,�)�6BDeP���0~@1���6��,a���i���=�\\�)6�Қ�q�d\rڷ��{԰�a&o�C?���a�x�G3���j`�!�@�^Z�;-[�13��_9ܼr�dUX�,�@�݃9+>`�cG�A���áfH��feM���[�fVǠ��u�!\rޑB�$أ3��E�)(K��M-`��}�Cwp�v쪒�\0��%��+��h�(�䗝�]���u �Q\\\"ȹ�$\0(e�1��c|�N�Q�|��a�@�����Fȩ�rU��X�\n��k���V�\'Ŕ����#���� ���A��_f������ج�j${�ސZ�\Z���B,��\0NGLz�&FCR�ې/���H���u���\\�X,�[�uycN���\"���#y\0�Iu�g��k�UD�\rG�n0�[i�nT�V�B������f���B7RHT;,U0@��t�~��Z��6�$���s`��I$�� �2�K�1scAS��q:��P�,V�w\n���.7[��\"��[�[�zT8@Gh�/4܏��L��\ZE�]^�|������p�6(KDpT����J}�?��s�i#E�\\Y�CA�Rp��#,�5jr���������i��d�jč�b\0P�ř���Ń�m��J�JYR����lhTH���(-�IR1���a!D��\'��E�������,-;��@����C&�YsNP�ͅdb.�%�P[���:�`Oy��+�G��[5p�ĦI�k%�3�R6�\\ي���E��X�#�H�����C�}B=�F{-�#\"�\"�C2�\'�[˶�M\rG�YG~S<�IeT[�%#�ؗ��r8�~)$q��D�I,Lq1Lcy��*�����;kf�b�/��-��u����(�\"�a��������pN\\Y@���\0�u��F-��n�زL�n�� �u�A�h��E�\0~������u���X]��ev��n���3D1*H_6E���;LY�gb�13�j�YΚA8ĒH�,��ע ð\Z%Eb�Ǜ3F(�@�(��O��oUމ�*�I1P̌\r��=���!��U��|SpTN�4ۤ�2��6�flJ,e]Idx0E\"�|U��K�:��&R�\"$YJX	�����H��`W�c|�� �8˘��U���_tuE�`X��|B��݄�\"�.#*�;�j\r�FJ\r��S�<��M,�a4�9Y.H�������\0�sm���hcw�nQ���3#\0�%i�jre��Rƪ�>�`��B�\n2K�d�Vb���E{lJ��A[�ۍ�$�.� <9t`$��T\0�؋�(��s�.�\'ޅ�1�F2��+��q��v�p\\5V��Hr���TI�\n��C5��ɨ���l�=5���Ȳ�Oq�Bp�\'��4�n��q��TkAM���-�hʼ��Y<AY%x�Ph�̋2�0VV��:�|{�K;�F� e���#�cFR��܋�\Z/AB�\Zȸ��j��l���e���A�X\n�k�����d���N��g��K�Rc�W,�#���޷�z~�6]��\0⢷����3[b����7�������ӎ�*LL�<��$=���P��rT�#�����E�\0��m���6�\n�3v�e�L�\\�9�U���?Y$�ŉ�)�I�n����FĠ�_K\'����G2l�豘����h�ْb�@+]ƿ�r���)��D;�$�O��Ѳ��x�ᅃ�S��=w�#L	L�T�l��}�A���I\0�n*������8��rJ�=�����#�\Z&yo٠q��\Z�?伈8�d�d6����/^wR!�BBG�[c�ٚ0H��4�[&���(���H�)�@���W��7*����\rG���r!w��1�8�M�I�G �=��K����\ry�S��;ȩ��D�4Qɲ]2fW�\\/�T��#XBEH�& 2��p�R�F�U���)v�#��m+r#pLP�H��wq�����@����xa�3��a<���:\"��K`䟹�rV�b[�\'юd*�~�����	R� pķ�5u��~8�N�\"�pR*.�Z6Y17�ĔȀk}`�!Eq_k�h2�8)�(��\ny�t���p%eǵX���p�f|x�e$�!Pyh4~�Ѣ�2�%���� ��\Z���<#���B}�j(�n�BC]�p�%eP?����}�ߏdI�n�nȞ;��Kv\"�,�&,,-x�\0���m��Y;��@���ױLx<h)۾��!d��?&W>�kyI��b�\0N��o��*�5X�R��\n��Nl�7#tC����1�v����_�7�\0�������\r��(,ʄ�\0���9���J�̇$Z�8��\0I�@�\0��u�Pz6��\n���9�<�\0\0�\0\Z��E�+�w��3��8����H�@�Y��������X���$�(��^>�ł�#j?իV�\0��K\0V*��Ð�Ϋ�����c��\0��TG\Z`8�B��\r�aQ����+n#t�r�B8$%{z\'�F�4��W���8R7d!@P1aʓ�&�%�UR��+��i��h���p��X�˖b��1Z�sL�e��!Y�I������ %���@$U_��ȸp\0����_�t�;\"�cYX3!�e��+�+*����u�x7�A�#�+nX�0��Q�@�l�\0�{�v�qnp�O<ۅ�����%Z7�:?x<�q���w�T��K���2�#f�7e�F��\\�\0\n|A3m��n�`�f�H�c��3��bE���@ϓx��4ޗ�6۰���/�BT�AfYI\n��H������.��t���fE~�X�D�ZIq�L_6h�bE?{-�s�\"zDq�\"2��\'Fuj����F̸��$�I��<to��ژ�ш�\0Q$M����R��ذ 	[�Dp��:���U.��;0�J1O�.A�H����6�x��k��d�H�n�9�VAR�ػ:��0\\Pim\rp��_^l5_��I����VhRB���?�vޘY+�`�,��;�Aq��t��8��.�CGJ;x�o+p�R=QpTC�Y��\nǹ��ͷvx䘏0���,�!m�Aܫ���Nظ���e��\"��� c�岚;�\0QA�ԍ���\'%���U�L�`�b��R0�\'�x:�m�\0�!��qtw���r���=�AA��y��m{��h�=���X�f����f�H>�q�k�M�j%-�S0ܩR�;s�yI�f%]GmK\0�(Ҿ�ӷ�oԸ�<lշ��G1a��ݑ���4���\Z�(�\"�@DM�m��8�U�3\\������5�~�򑵗u0�(��4�Gn�{8v�Bl!b\\HB��-L����(��0\nK�����O5�n��Z?�=?k�&0D�ԅ��d`�����Vwatd�Q�\Z=��F��QLl��˻*D�ě1ƃo��\n�J��{���LQ�q9�YZ�39,�D!�$���fDL�+FD\"�V��컜TI6�.�Tβc�i��8�B���$a���3$eO��\n,)�+�3n����v�h,H�x�YL)������O���Ĭ�w��U(4�wU��� ~M��Ѧ�ѵJ�ޙOl��,K\\6��\n���6�\Z2�2/\0dNM��(��H�ѯ_�R���^�#�3���0��@�R@	)�yF���C�5]��ɘ	\rd�	A�It�n�\0i�H6=�F��F���FB��*��p,���P��5\'^]A`�#��R6�T�B.��*���e�U��_�>�a���reܬ���I��8h�E,;���.����Z��(Ց\0[W�憢������)LR:2���(�c��ߟ�V����\0��Q�;��l�IJh�\\j�ֶ���!j,T4e��n#���$�s�bYY/�<�#��`��q��鲟0���Ո�\0K�`B}���=��^�CH;�#�H�G�H0lz���;dv��-c;�VEW�	�V�f.2B�a�!r��Jt�we qڔ�x��\0Q���v!b�Ա�i`�EQ��*� �d�TY�c�/��g~�FsK%��Z���{���1�lqa�~��I~2��) h�o4�ݧU.I���D̫�D�ؽ;��$�F��,\"���V��4s�d��%���y����� ��$d\Z���Y�-;`V��\0�Ĩ�e�m!3�m�q G���N�b���u�տ�M��C�=\\����l�v��g��N�0P��H��y�p\r#�?O�ѫ���\"Ģȱ*@�I>K*��)�g#\"bu�\"�E�,�&�I���A,��VQ�X����RS�A,\\n�p��jNB���(�fk�ȏ�A� b�8�I�*P�G.c���L��u���9<j��H3��?���	R�\"�\rZT�isj�cQwXa��xP�e9Q=�\0ǿ�I��D\"�ʲb���0�}�(ԟ>�1���@Ȃ^ڋo��/�8�J�\Z�j߆:��*���ڞň/)g��#za`�2?:]�z[9SEX��4\\E� 2���@;��6lӗ0�ņe��1�$�H��C�V�^���!�.�@\"5PZ(��x���(��@N�7>\r.��b�>d��p��� ]�S�~�c����}���75|�U�1�\Z�A#I���1�)�a\0G-�Vr�\0��V���l���$������A��4CA��\rc��I������3�LR���R��d��ⱉ�W�%bVޚ<�V.����\'L�61�(��^�\0���_��\0���!1�I\nJ�c����<P�EqT4&��hP\0\0\0�\0kրѣF�ѣF�ѣF��F�\ZCh�� H�Ʊ8�Z1<E��ʃ��4�o�`Nn]N$+�807�\0,]A6.��\r�Vg��ϓ*�`/\0ܛ \Z��\0�}_y��I!a��6�oӄ�D1#��%}�&����أ\0��0<��{SG�F�J�8Ӯ���\n�I1������hW��W�OԺL�$mf�I���j��E=Y�1�\n\r�&�q�\0Uݴ�w\0F쫒�bJ�20\0�_\0	QJ�X6��2�YW�+��E��5~(/��~Q��h0�*�YeN�l�5]R�K,F\"eῴ.��+���\"������0FY$Viq%��xnѳ�6�9D%�Q-�Ғ���ۯ؄�>>>y:C���2�y����\'�&=��V�$R�J�_�kO2�qL�,r�y� �,k\"�d�b�+�ݵ�&�qP&��2q��.S(�\"JdMS<u`��æ���i8Bʸ�	�I(�o\Z]�$Y�[ާm6J��\'�¯�p�8D@�{�κ��� �� ���+�P�b@�$U\0/S��ΨTac���5�H��/��{�\0P�D{uC���k�%��\0�\Z\'�\0�k��>m������\0�\0��Y\'�K�?�l�Kcc)_�nx�C�{l6�	�R�9�������c�\0/��p�8ɓ)���eb,��Ǐ�H4���6r�r��sMާ2J\"�P�;���[S����)�+����������HC$v�`PӾ��u��J(R)���F�?��\\~\0_�M��+b�j<G�#�\"���8$W�4�\\���P��\n�]4�\Z4�\Z4�\Z4�\Z4�\Z4�\Z47�䌠^Cǣ�<����:���3\Z�$4����#�\"����݋�0ѠE�z>q2��I�إ�f-� `Ƙ\Z�Q\rU��&�Ǻݼx��@�A9��hY�����/F�͜!�P�~�6��R�=z*�?���+�>�����0�l\"m����e \Z>4yV]�N�͓*bxX��?��\0�K���8n�������N�V�Y��of�>���\Z��F�ѣF�����[z�HY�R���3@���($�Vʵ�j�B���\0�6��*U��W*@�6��8�!�?(������\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r\Z4h\rB�[b���E�������,�=�4h�w�mR5+\Z⥙��\0��]���\'�u�F��F��F��F��F��F��F��F���'),(2,'Fernando64',2147483647,'75764870152.33jnr1l','#c79810','0'),(2,'LuisEnrique',201,'470546264.4.p3e1','#c79810','0'),(1,'Manolito',123412345,'8499614222,332063562.5milaten','#000000','0'),(1,'Margarito',315115879,'26942574160273','#313895','0'),(2,'Ramon7599',1234567890,'04998870152.33jnr1l','#c79810','0'),(3,'Ramoncito7',315128299,'59897870152.33jnr1l','#000000','����\0JFIF\0\0`\0`\0\0��\0C\0\n\n\n\r\r��\0C		\r\r��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�S��(\0��(\0���Phi2)i\n�@EPEPMc�u5�\0�Ҏ�/JZ\0(��\0(��\0(��\0(���5_9��sF-\0QE\0QE\0QE\0SZ�Mc@\n:R�W�:�\n(��\n(��\ni8�=)�$�Ҁ��x�t�4|��\0�I�}4\nu\0QE\0QE\0�▢���>�\0<�x�y��/�S��X ox�N��өhm&s%̪$�(���2@�M|��z��>*���\r��C���y�o !-`\\`NAd�\0�cJ�|�\0�OY�L<U��ė�-�=�3O�Z_9�1<y�D��6:�ڣ8��\0���*���,���{�)y4;���ԟ/�_A|/��������>��K�d�X͹�oI����k�f�\0�m~���H���ޥwǨ^\\�d;��|���	��ς���\0?f�\0k���i��n�����o:���� �����@?R@�\"�_�>m���[A�<3����~#���b�ķ�����<-��GAЕ \0p>�^�\0�(��\n(����)h��(��(��(�����?��Y���>/�F�\rL��\Z5/��X/\0� ��Ҿs�\0��h����s�R�N�6�+����-SG,����\":�݃�h���$���ޥ�o�>,E��Qy�Miawp�)�|��ד�s2�p0��$1�$��?l��~����\0�-�<�hºu����C9�@����O�ܠ�?c�\0�%u{�\0��I����i���ox�Q��e����ܑ�[��\0���C���^/�-u\r{��.��ڨ[{�GM��XT6��IP�\0��>h�����\'����?��{]h\Z]����ɳ�(O?��@���6���+���?�����5�o�<i��/�4�2+�u+����b\ZP��3�v�<�6�s�Ss�[^�Kgqoֲ�b�	#\r�*T� �GJ�������5��\'ñ\\0y�Ҭ\"�YH�j����Z\0�����9b�o�\Z�8���{�<���Cb���~���ʒ����N2V�����9���I%H�8��~`�\0�oO�4߃ȟ3����9<��8��_0��ӇB-��\0�\0jQE\0QHN)h\0��(\0��(\0��(\0��(\0��h��#�u+P�.4��i-naq�$N�O�I�Lu�\r\0~@���%�\0�v~��5�=��m��N�\Z�Y�\n�	���1�R�U\\�v��\0e�{O�%�|o����|����\Z써ǣ��{�!��%�k,N�4<�����}K�N��^��|\"4�Y�\Z��9���Q��aې	\0�m�g��>��9�b~���������런[���&r�m�б$� \'<��h�Oأ��.�~$j��77�.p?\'�}i�0~��2����s�\'��ږ���|��ey��O���J�J�v̒��Wj��\r���6�V/�>$׮�9�|&��A�k[\rBk�]HS� ���e0�3Zp~��ퟭ�}���3x;��,�i���FA���\0J����\0dx/R��\nG�~[x��ݯ��\0G�Ar�	���D��.�3��F~J�s�\0OS^w�S�O�g�\0A�o��i���G.d��S��Y.���\0\0\0\0W�/J\0uQ@\rjQ҃Җ�\n(��\n(��\n(��\n(��\n(����n����<�W�߶�����C��T>N���J6:V����>�q�V=�ڼe\0�/�-$�\0�W>;��d���\0Q+�M(���c��\0�G��?�6��V4\Z��o\'�]~�<���yU�G���s�*�|���>S���>~�>���Xx��W�{i�usi6Ō��L�������@�)i�-\0QE\05�GJF�(h��\0(��\0(��\0(��\0)�p)I\0\Z������<1�(�\r�-M���E|�����e��uf?�\n�n��(7�������;�п�m�oj��Ѵ��\r��q(w��,�T�G��W�Y�/�>1�\0�����֥�e�f����|�yw�F\0yp�\0\0�O��|]�i�H���y&���Ԣ];K�Lk�*��U?坚t\n9��3~��\"<�h�g�\\���)����wO�Wѵ|Amucr���3�A�a�c� �a�S�Y��	q�/�?Z�\\�[�N ���ɍ�\'\"�����>3��V��\0b��\0]������`��_�?F�ׇ5=�\Zt\Z������VW)�9�=T��# �h����h	���l�[�;�5�������qc8h&P~W�0�) ר���u����\'���J|A���5i��[�&7BIwd}�$�8����:���h\n~��l�[��=�������qe8t(��?&2�\r\0z��斀\Zԣ�#R��\0�QE\0QE\0QE\0��-�]V�I�+�?�\0�6��)��w�|q⫯�:T�x�=~I�L�jX\0��~�U��[�������)�YEai\r�� �8�P���8\0\0[=\Z�Tr�rM\0~W~������k�\0�q��Uȯ�/��U���\0��\ZV��(\Z�oCl���^�&��;��ҿWA �<\Z\0�񏃴��sQ����A�h��\rՕ�n�dn���� ���?e��\'쿲�\0�?��G���:����H2+�^6���Fˆ9%��[��\n0(���Z}&-\05�GJm8t���(\0��(\0��(\0��(\0��CҀ�k��������~�j6�	�\0	v�_NЭ��L�w\\m�VCیjH�+�B�\r>�i�e�x���YX*\"�f\'�\0�&� -��\0����m�o�>��d����$p%��7S���#�\0����~*|�I�?�Z������U7��Y���ʛ[�[9e�c( �d�>a���s��~�?	<=�}�)۫%�H�WKİ9\0r��@ʕlr+���?x�����cK�_�	l#@��c\nc�ۅ+��UOj�����u�~�?�޽�;��R�-�^$����>��<$���� 63�\0?]�JZ�L�8�M@Q@\rn���6�:P�E\0QE\0QE\0QE\0S�	������?�WR��.���KY\'�N�]�]:�+d���\0��@�\0�X�\0i�<!��O�����\'��V��\nZH��b�%�������8����fH�f/�vzE��]���ק���9, ��A�7o?Ś����9�_�K���_��\0��|�>����,n�٩��c�p��\"�A�1�����m\">P\08����;�W���VbO�B�P��w����\0:�Ⱦ�@>��eE %N:���g����_�/��6ڽϟ�O��5bF\Zt;���_�D!����E}n��O�~.���o���;�k~�̶�.�J�[H�.�a�wY�(^N7W�M�3��#?0�\0Y��(�J:VKx�E�؏�z��i������\0���\0��\0٢���.�?�/��\0�T�U�h����\0�*?�*�6h�o�K�O���\0��\0G�%�\'���\0�\n��\0��\r�+������G�\0�Q�\0	v��\0A}?�\0��\0�f���\0��D�\0����\0�Q�\0�T�]��_O�\0���\0��\0٨� ��2++������G�\0�Q�\0	v��\0A}?�\0��\0�A-2�T)c��O��5`t��Kt_���\0��\0G�%�\'���\0�\n��\0��\r�B3X�\0�h����\0�*?�*��K�O���\0��\0@��7�1A�)P���g��~B�*�?�-��/��\0�T�U�h����\0�*?�*�6h�o�K�O���\0��\0H<Y��\n����8\n.�$�O�@��\0�R/��]�J]�~�l�;�&�e2�X�Xú�f�\'���W�[�P�Ѹ�E\0��P�Ѹ�E\0��P�Ѹ�E\0��P�Ѹ�E\0��P��_�~B��@��dFG�<%P��');
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

-- Dump completed on 2016-05-31 12:56:11
