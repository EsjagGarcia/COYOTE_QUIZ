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
INSERT INTO `coordinadores` VALUES (301,'Elcoordi','Jes?s Alberto Lopez Gerardo','matem?ticas'),(315128299,'Ramoncito7','Juan Ramon Avalos','MATEMÃTICASIV');
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
INSERT INTO `matematicasiv` VALUES ('4',1,'??Cu?Ã­l de los siguentes es un conjunto vac?Â¡o?','{}','vac?Â¡o','{f}','{{}}'),('4',2,'??Cual es el nombre de la \"chicharronera\"?','Fromula general para la factorizacion de','NO se','no existe en matematicas','Producto notable de segundo grado'),('4',3,'??Cu?Ã­l de los siguetes incisos es el producto notable  de (a + b) (a Ã”Ã‡Ã´ b)?','a2?Ã¡Ã”Ã‡Ã´ b2','a+b','a-b','2a+2b'),('4',4,'??Cu?Ã­l es un numero imaginario?','imaginario','ai^2','ai','a'),('4',5,'Se dice que ____ son densos en los enteros','Reales','Enteros','Imaginarios','Negativos'),('4',6,'El conjunto a tine a numeros del 1 al 1323 y el conjunto b tiene las letras a y b,??cual es su inter','{ }','a yb','todos los numeros','Imaginarios'),('4',7,'??Cual es el producto de notable de (a+b)^2?','a^2+2ab+b^2','a^2+b^2','a+b+a+b','a*2+b*2'),('4',8,'Valor de : 4!','24','96','16','8'),('4',9,'El valor de : a^2/a','a','a^2','1','0'),('4',10,'El siguente es un numero entero positivo','8','8.333','-8','01-feb'),('4',11,'Un numero irracional','Pi','4','8.33313213','8.33333'),('4',12,'??Qu?Â® es un numero imaginario?','numero que piensas','una raiz negativa','un numero con un denominador mayor al di','un numero con un divisor mayor al denomi'),('',13,'','','','','');
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
INSERT INTO `profesores` VALUES (2147483647,'Fernando64','biologÃ­a',2,'Luis Fernando Avalos'),(201,'LuisEnrique','historia',101,'Luis Enrique de la Fuente RodrÃ­guez'),(1234567890,'Ramon7599','matematicas',6,'Juan RamÃ³n Avalos GutiÃ©rrez');
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
INSERT INTO `usuarios` VALUES (3,'Elcoordi',301,'0917647716273','#c79810','0'),(4,'ElDios',401,'48580955032,032,5hooll','#62d53c','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z (! &\" \Z!6!%),.13 4D3-7(-.+\n\n\n+++++++++++++++++++++++++++++++++++++++++++++++++++ÿÀ\0\0õ\0Í\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0<\0\0\0!\"1#2AQaB$3RqC‘b¡Á4cr±ğ’²ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0?\0ÜthÑ 4hÑ 4hÑ 4k–çp‘£I#*\"‚ÌÌ@U’I>†²O–ÿ\0YoèôÈŒ’;`“È\0Àò*¤ƒÅ¯/CóD{\rSªuX6ÉÜÜMIş©(ÿ\0a~Ïğ5LêŸÕ=ºßéâ’`,wö¢ãßÜ†½ZÆAô,ñ¬K§NÓns>å¦š¼åònÚØK‚KYà(¥\nÜbII=BfˆÌT2a!í«…HJálÆˆØ…±Š°T’Í×õC}¸ÄÇ¸ƒj¯X¤Qe\0d2@@?Vk={åMYãÜu9‘±R»Ú°\rF0…¹µá[Ó~)^¢;{HP?Fã±g7fbËãƒ)”Ø\'¼ÀÛ¨Oy+Çs¦kD2\0÷\nIøQVÿ\0PóqãJ2$\'ÏÕzŒq±Ÿy?’œ=ÄÎª”2JÒ9Ö@ŞMEt³f73:¨ŞNîÄÚK#26FÑ‘¤@r€VØ1ÄvKôª<IGF‚U˜vÄnü*2cˆRIòVBVõ	 j1“È¬¨DH,V0ûNK‹We5ì,;\rÜ®¨¿©c!hE¦ZvïZ_<¸_\0}@ñ©]_s¸F¾è:÷±ŸpO‹=fR@![Š_FÙG+Yßnw8Ã‰åQùgRhŒÖ¥ˆø•PAcEX…X›}É•R Xø¹Œ±f‘\ZÙœ2IZ\"™¨dNa²|+ú˜İåÛo>Ç®ÜÌA\0’ñ^âåáxä„Seäë¬ëòJmZ`b`]Ê¦Q˜5âM1*Œça?[|ş|™·›\"“8}ÆÙÌ207˜cßæÇù*OçAzÑ£F€Ñ£F€Ñ£F€Ñ£F€Ñ£F€Ñ£F€Ñ£Kº×[ƒjç-ª¼—v<D[gcû\0t_ÿ\0È>¥\'øm˜b°ÉrHòä2*­]°² 	°\rxñšK¢Z\"«öÙ–ˆÆ(‚°v 1gpr5QeŸ7ú“ÓÓ©4;Î{ F$ÎPO(¨L\"RÅH*x|XåT(ÕsmÕöqQØCú‰.pÛ­ã¹Œ)áU#í©“Ú‘‘b%n¹-Wâ?ßî$Wƒm!Fd/4—Lá›Ç\"ËÉÀ:´õ†A\ZˆúŸSÛÅ*ùb\ZYÅC”•93L¹g/Ûïï÷	7ŸE\"h%UŒE*8*W&¼8¡`¡Æ*<J”Í<­³+µ½ª™¬($È`+ì\n¬,xä4izH‰D2n7s¬@˜ÁG6PÎÃÒbÑ—ys%*ƒëRŸä½#ÚÍ7>=ŞäœR¥d™Sî— /.OºÂôxÜç”ÊÊ‹™A§F-“.H*EdE2‰E-ƒ:«*Ç7’²Û<œXòÄ‹òI\rÂ…ºâÇõ!³³é1#+ª÷›’ˆ¸Ì¸2&îcWVÌÇõ;sÈôè¢¢NåUU\r*¦H„£1FòeåJ¶.å<R4‘xÅ$1•3úRÓøšgB¬A\nEeq´‰‘‘\0b™ÀEo»Ä†g´jcôİJÓ€2ÇõŠiF6p²¢ÈÀ‘q>j$Ø 8œœHnŸü_i\n¬›©VSİV(Q‰)ÙrHşÀh‚yçì®*sˆAlòN(oLM´Ş‹dƒ5?R¸ÄévÓ¤º^xâ§\0¢ä6Y\n“\n¿•w,=+zr\rüËn1ÜnzbFÌ‡½&Øc+¸e©c‘\0Ç›%Y®ÈæÓ±ü‹§Ğ•á—m4¹‰ÆÚYbbÁÔ…1%])Â²›à\0ÇT÷ÚÂITW·w;DŒÎÌAé••m³½uÜFş$Í\ZËD)C6+ÍGŞèyX%“”­ Òz/_˜”]ŸW†d04±Ç¼EgXÒƒ	Z2²wÙ³y\0Oö’m;æL!ê»Ød·Ù½‹Z–©	ÿ\0KÑõÏ#_\'ÚªSoÚ-tm›’0†ªà’r¯5%¯FùVëlîƒÀ\Z)‘,€pc¢¡xã!¸Ù%AĞ~ ù\Zû¬oâ_-H¢Y6,ÓD¬É6Õü]ğA+Í´RÌ†_áÃBq‰Ö¯Ñú¬;¨Sq‡‰Å«ıAıˆôAäZ	º4hĞ\Z4hĞ\Z4hĞ\Z4iwÈ:²mvòn‹aG¶cÂ¢Ë3 ~ç@«å)ı;.Ú\0¯ºu/LÇBòšlE„Ax,HİëëŸ60îûg‹qº*{»½À@ ª²˜vëÁHĞ½Ú½—\0ÚšõI8ÙBY·º¶ök9Oºà‡(‰\níµö&¥ì&KÌ<e£J?=«ölb[ñDw •Ô£F­ÔÌ_\\–À\n2äö»¡ë*!A\ZeĞ¥²¨,JlU:‰‡C}Öò#HÈ¦´K$Â0˜Ó‘æÏ‰q~\'XÑ@dEµ›ˆ’l\0’‚T)5FÇ\0ş¢2ö‚é´•cÈ<ĞE0.¡NjmJâŠZ@˜ãLìŒ¥Eeşm~9»k‹)gğ¿¿ÕA\'ïv‰8bi<béqhñWe«íªY`,y.JC]¡\'i·`òÜªd(ÉŒ*\'2©a‹ ’ÌÊŞJW,…†Nµ.¬ÆS–\r™…ÌÙä{‹\Z\0¤[cJöChÜK:—È»–Ğ	\0BÂ7goÉlæ`K‹ ±a’Ét½´èÿ\0İJrXaŠ\"ìÊï\Z2ÆŠ¡b\nâl.n2`xà‹OFşœŠ}Ë? M,`kPUHB@û¬©ÄqäæÏu;c‹Ê\n¢U+ÚJT˜Ã±à®p¬‡µ\'ÿ\0}¸±-à“û‘ò›vÕ•­[íªeR¤”¤Øö¿Ó÷^^iÜØ6û™ÿ\0p@¤atFTIûTed¸éÿ\0Ãà¬\n€Ô\r}I‘J¡Xq r«C€±A‰Á×Ô(V‰HJ·y´Ú¬‚FC\\xÑ8ÇTQ\0±ômäŒ;t4MG+âBËê@à¶J¤â ÿ\0ÑRÖN½ğ¨¤!K`àÚ“ÚóÌ%ReaIqäTá\0ûjCôÛ4ğÏı?!\"%J3+æA*aî›o |ûhª9…’SX­Šè	dVFT+J´@•ŒYúTíˆ*Å”1<;t\Z’Z2Ä¦6s\0`>è—uN,b‹´Ê;’.ÜexòYM­ã/´1ª° E¾Üí’\'‹~¸«¡Å4u‹°°lÄHM3\nóeĞMêÿ\0\Zw+$b@ÄÅm×Ÿ´~ÄÄ œB~Ÿ¶vB%v;pZ™ßûmˆ²ğŒŒ±,)kÑ`Y¹ê\r}¹ßÆj²‰”S)PÄ8Uûˆ9z2ƒ©í¼r$`Ë•\Z.Ïƒ%†)Ÿ X¢#d<ÈªÊ°\nş)Ô;yÙ\n’¹11ƒy*8+’·›u¡A†µÿ\0éwTY7€¸/v8¤‘¢ÇõI”;¦Q‰À‘Èû°»Y¼1Õx–NÉ\\»`GÛu@Î\n(¤Ü7,Wì,À8¯·ÿ\0HzT­ºmÅ:Ãê\rE3—±IdY”*Y°¥	\nl†:\r‹F\ZF\ZF\ZY¯õ¿ª ÛrQ{­(u<÷¢Bğ)•-É?‚‹ûñ¥j£ıOøÃoöxD¡¥Äˆ¥Š‡á‘Ğ°äd¬ßÅ…¾/AùËq0AZAéTà\"‚‚NIq÷=œ¨:BAv¼‰>—ß¥€~óZ26N“$ƒq:ºÉİUëÈØõÍ‹\Z±=¿L#\\\"¹0VXè°‰È’J×äµ\ZĞ-DÈª£ËQÅlŠÈˆZº\0_şƒV>ñÉ¤Ãf²{r“j#\rOŠKù8ÄdX[1çñ}¨œÉ$™´–\\Í©\n‹nìH[à(¿»*ÖÉñÖÚ9#ı_ƒ¼0ãG`X«1RáH&˜ûnT]²à§ ÿ\0N‘*­e‰¢˜†&ıÖ·ÅÈ¢Öê#wèÛÆq*°¥LI!qºtÈŸb®òÍÙçC¿Ù@ÆS¹Hw3GTÕƒÄG%Ç™ı†˜A¿C#ödÉ\Zµ¿ˆ´ÎÔ~ØóãìßìH	1ô¸@Ç\0Eß•±¾A6Öy¶¿Ü»eÌÒ§]VGi¶PºY)ŠS‰º<©÷D~@6~_êaŠ¤M)\n„;åe‡ßŠ¢UV?¹°ß\\§Ü*\0]‚Ù¡d?°¿ÎôÎ·&àEh‰5„½’ÿ\0møá!M\Zk\'ßÈáÔz‹ÄAÜÂø†f€U-A›š(=Gçí#*ß1”vÌÈ¬ÅüÈc‘@aùbI<9±/¿B«\"Ş#éüp Qã%„“Àÿ\0}3x8B®·âÑğGKBˆà])ì,\nqÔ¤ıå†2¤9H	VÊ¬‘”y°­1ş\nÿ\0\Zû¾ƒØ–)mc,EGw¶\\X÷¦\0r}ŠÔføâ…mÂz.¨Ñ–È¬T·?q˜Qõˆ¡Îõ©I+òH”*8¥d ~ÂÅ×ó¯²°2úUh%üåØü–¡ÿ\0:—Ò?D£É‹SE‹\"Ê½ÄxqÈ6‰j»>UMÿ\0U’Y;\\ŠŒdÊÀP@‹@šSÅÑ#8\rÿ\0y$	7PE*Dÿ\0PI\Z²Ä¶T•È¡.Ì?¶¿\\ö]>…CqüŠª?ô\Zâ?Ò½äìum´N•ä\0î\ZòÌF¤œpK8àW‰ßz~Ê8cHb@‘¢…U€\Z‘£@hÑ£@hÑ£@hÑ£@hÑ£A[ù?Áv;ö¹„ªE%^‡ J‘cıõXŞÿ\0Gá9v·2`F3Gø‚\084‹’úÁ½izã½™’7tC#*±TRr…ğ	õÎƒ\rê\rŠöÏk¸wr#@êªÆœ7‹*‚F+*„&ÉßÙÉµéèòGº!d•âDJvp¹(<ql†1ûf5É¸dôİáfê[½ËŠİÑeDƒ¶ÁÕA‚„Šı’qC^NÃm®‘Í)I\Z4%{JìÎ¸Rı9\Z­Wî\0­²ã€Fê?éòFıR%‚ÿ\0H ˆ•˜rk“Üª”\Zé–ÒH¤}–âQ+G„‘²\0ÀÂÁb\ru×°H¦!^zßÇv¿ª;åİI6½”i¬H‹€¡˜\Z­\Zjø\"EŸ¨vğı\\ÈÁ%€\nŒ\Zàds”ù˜İ›$9ü³ã‘nfYÚ² Y0~Šš_QóäªØlöM„Ñn¤Yf=®ÜòÑ•²\0Û88Œ±^kŒJª!wª$‘Øı9$¦a• *#%ZÁŒcúf5è‰H_òN“™‹A¸‘\r8HB¹™˜É`Ä9\0rA<3ôíº/y÷Ñ÷<c,›‹ÉÉ¢ªsl˜ú±é~,¶Üu×ÛÂgY†ãgá+(¹¡õ—}XÙ ğÀ 7Ø¿x‡Ö¶›£*n%ïE2(B’!»V•”bŞ¬±?õ1äN“Ñ ”HbWSeä«¦â;bÊè¼•ŠƒˆÆ™@MØ,\rq`Œr¢íàÄ[të#Ä×Ül.J\Z¥¸IvûıÂÉ#$IÛ9‚±hÁª&˜¶6y¸Á\'XúgI‰³D“·*°=®rŒ Xg“d±~û€ÊÉ®ÿ\0S:ƒÁ>ŞU·î¶íøûğíD†ıù^B\\ÎU¶­\"P)²5š.Ñ[/Å•f¡ÿ\0ÑcGNrÑî?LÌ´ÊˆÖ/áÚ)óâÀ®;v~í{y„ÔÊ«¬j«Ê€p’H–ÀµŒS?~JG°4uh!ß$rÄJb(˜$¨äVÇm×yGˆ7¡LúVá™É4\0v…•á2ø0’‡\"Uì9¯Á”ñÎ»|/tÛ9ğÙš,vm\'Ş‹A†Ü›9b€Çi¯¡%,…T™1†AË\0ê]rGö¸	\Zì­ìå{&š1Y£–7F°7,}‹\n®Ì¬¡˜xĞiZ5£ï„ğE:ğ$ìdQıˆº­LĞ\Z4hĞ\Z4hĞ\Z4hĞ\Z4hĞ\ZøN¾èĞb=C¬¬“u#?â°!hˆÀ›Š_œóåÃlcoø¯Jiú^Ú€x^0H+ÀQŒ„U%.ÄXpG±&‘R¾0\"íÉqœ’/‹•_*’5¡uL¬·\0÷c—À7ÌíóÀ3D31ÅaBƒ©P´\r(H†	?Ô%-œ±&å‹Iª UÈß~ç&(¹Y(’.ĞB°@¨ ãa@Qf•h\0?\'R:ÌM.÷k·9H©#9å\nÃSû+—e )ûZ½uvêğ»Âé\\˜b2$(¾xóÀ³B¬€,{\\é[vÑŠ±`ÕoäÅ—ñÍ—÷l“È¿ô‚›^â,•–êÁ*Åñ|ñÿ\0})~™(\nêê[2 1JvÓÈP¬€$X\0Hé=]&òÊ§ø$œHOæ¿á—÷Ğ)W%™;_»,±V[²A\nÃDÔ£1HÅîßlÀS«>* -&ıÑº#(Ç<\'“,B®B›º2\'*h\n7ö·£÷\"ÿ\0¸ùV¹‚[%G‰#Ş\"îŸ–\Zıo Å$pPÀmeIâ)Fiˆü,´=Xı«YÏõ\Z%ŸhMÜ¾™³‘Z—üĞWÈ¨ä¡üº0}#ÿ\0tCÜU.£È­…$+@ä€Jğ9áĞózªn¾<û•™e$E#4jT[$Õ#Ÿ*ÎMbµaGA¡*÷Ò7laŸik‰\0Ä°ºK^\"˜wH¿_M¦A¦òÖßpRUÎÅŸıša2¨şÜ‚$ØòIşæ¤ô¼»iÊîTI<6D:š’E”F¾OKNWÕ©æ±UÕ·©u@¨¦FeÁFäœK$¬HÁì‘şÀ^Lòs6Ş,ƒpªGFÊÑş-6Ş7\"¿ê×÷êÀ´×ŞM\"\0oğkƒşùæKä$Ü\0Çö«ß<†VÌ«~Ã,Iß¿«zôz,ø¾H7;¨Ù¢fy&Xšù¼LC\Zà×äp?†I–ÇnàR¼aÖıàÖÉÎ$iÖ—|sfaÚmà\"ŒpÄ„~ÅQTÿ\0øÓ£F£F£F£F¢o7‚7‰HâG)±ÁÜß\ZĞKÔ]Ü†Â©£Y\\×µÿ\0·ÿ\0£]æ“,A4	 ,ŸàßKq”<¬4DWÔSa”_,k‡^}è9õŸúÅ…S¶ÈI-–qåêÛî$úR´r$TºÓAµŞUe$‘Ç¹«gHÛ¨X8{‚ğ\n‚/Qî”Q³„€²šôk\"?{\"Ú½ğßí¬Kúµ“q¿…¡Égg©²X‰cí·à.\nÌ-Z¼}ùß%ë»ˆ\nn¡G†R¸6@²2P,ê…ËI`ÚüêmÌ#ôûI£˜Åİnòàˆ¿Pƒm÷Â²\0¨$>ôè6ÛM«ÊÂE•˜?mc¬;\0UãåŞ†`šRJåùÏ¹4{Ü	4Ûs\ZÆ2B…Z”¹P\Z¨ÙâŠäh$tMùäoÔõIy^ÌQ§æ~³Y-ëîlØ «óã*?Hÿ\0§hÂ…\0Š—AL‡¬x£WÉ\r¤û?‘$JÍİhòkÿ\0D%©T™/¶n€ ÃØº>şÃ×ã—„EÚñğÄR¨OFŠ–#ÆÈ †¹#@ò	¤ŒÆ&\n¼ALK¸³øğh}ãZ¸Û‘]»c \nİÄgøÊ˜ûü¢À:èó†Vƒp>›dEƒ\0gšZK4Rm‚†åŒ¸d‘–İT>Übÿ\0êrø¯ |zSK0Œğğút¬-ÿ\0ÂªQŠ™äã÷§ò$;HLÎ;fÒ[`¨ËMC’Tà~\0Òn‘ÔUâ‹pO¡\\#Èƒkºñÿ\0P\">=\Z’øÓî¸{hı–+<…TW›•*°Y+ÉÁa Ï¾S¾“s·`Y„²*Y™’U‰\\ñX	\"%V*«el-›m¼Ÿ384ˆä²¬2f3‚Ó[\\»äYA‰¶Ç°½œ›‚ÊÏœeÑ‡£6!Û€\0Ãí…Ô8£‰#_I\rˆañ1Ê§‘‡¸Ø†°1*ğt©wrTbDÛ.Oœ‰R9!¡+–ah¾«)Ã ]³ã}9h£ÜÊàHİÈcb\Z9J`È37e\n÷‚8eı˜»ÈØ+Œ$AÜ…T¨<2FMceTd!¦íÒ$2f­.ŞNQİiƒÆ},£† È*úfqÙîˆ®=üí®ÚF\ZF\ZF\ZJşB¹F±‹î;mı©\"Ü±—?…Éÿ\09ùÓMBê]*Ô¬±†q>Á«WELªAˆ@¢~¢Cfü!^àZä \08oÈ*k*ûHFÿ\0U}‘Lgod‡¦ïÙ¯Í5yV4a/p,‰‘o¼\Zš­%Z–dl‰_E‰CÇ¥²\02Bê-UOöhÆE‘Ï®U,¿HØ™\n¬.C&»r\"Eó‹pŞ¬ÄÑ$„›r¸ˆÑ2ÍeêËğÌ#òuä}G¶Å€í”\n$*°W`l±¹ ´lÑâ¬AA×~GÙS×¹“‹lã¥Šø’BÇ,]¼Åcöè=C²“}¿îNìĞwZV@Olâ6ëtÔ/“b‘®ÉÕ‹kòµo,M+ƒLĞTÉşLÆ1ä@Y÷÷Ø•Óv=Äm¤fTR–5›G„1–W7Oå%°ç$$pEØ>5Ò¶ñÀ¦8‘DÊ/.]ÔrÄ–8Õ‹«Ë@/œ+Á–çg$\\y#²Ğ¬Ék*ÆÈi½Y\n}í7‹’í6ÈÁ¹‘sF	jÙ%eD×¾A*ÁÓíæÙ!.È¡¥Üº\"‡åo\0”\nŠÎWóåÏ:ŒPH$XÜ&D†Cx’ZXócÌ¥Ğş[ÙĞ#è»½Â²ŞÇåŞv†P¦&BÑ5xƒåä,û!ÇSØºƒ\néï!‹#Hä×&À5vsn?~_(éÒ6Ê6…ñš\"š\Z3¬üÙ ûPEmò·ŒHó»²3°cE\n¡¥\0â¶ñµ‚Ä)QA…¡pöíñC´)@fœãJ˜å_aZZ.\nbH?yßTŞ¥»,¶ÂÙRDaì8©üb¬m¸8š<âİDÅ¥ˆÓ)¼Ï‹+ø™©¥¦±’´Hk‘ÖOTéÂu/*\"¯â0.¨òdR¦¯[±|\0·¥Ä[a4t-•¤şÀÌÊi•™V\"—Î×‡ŒoJv?j>˜HIY69Ü$,À³qäÒSÿ\0éìT“\'t‰}Ì±Å8\n1u6¥(€±fÍï#iæ‰dw]Éúƒ1(V9Ë‚²€ŠˆÑ’8\\†L\0ûc¹°˜ƒ{5g·2ä2„!×$lYI\0Õqü»’ìˆ:2ªJ¼¾-“\\R\0i¥i¬ÙeÕPuXğÌ»<o\ZäÈ]Ğò”•fu91Ø` Y82ÚoğGu;† Uo\0j<’òSf˜Qºì:ƒ1‰PšÍ,§ò$Fû÷¿CM5SVB¦L$Œ#5Í,ÈA¦Gİ–ù°1#bé{ƒ$1ÈX6JJ\n†ş@$‘~êÏûŸz	Z4hĞ\Z4hĞ\Z4hĞ\'Ş–‹w¹7jU0:ÙÅ\\\\‘?ì·õŸÉhÇàkÌÈÏ·xd	#¢]¨\nC£µU+MT>ğ=iól$BŒäwA”†SÁ†\0ğG­AympÊD€a\"7Í:~Æˆ8±ãù‰Ğ+xƒS\"IWÀ±,²ãŠ²1<f €Üä\r3\Z‚İV8é¹Àµ¡ÀŠvlY\n‘Ã4ñÿ\0$ø”æ»òŞ³\0¨w*‚À«¿Ñ§…vØÎÊÌ¤åe—Ùµu~»1&\"ÌÃµ¯Øj†|deÏ‘“Œ¼°R*!ApùD­İïÛPgV!‚‘dHŠÅN,ŒBªËvÔVÒºwG–¤•»I#ÌB#,Ù‘¯%@1nIvrDø®«¿RcH%D0ÃÍš˜’FÊ¿´1„l_j–²$İ~;Ô‰Ÿu8¸•£.<B%’4ˆ<[¶»{e‘ÍWmh\'tDhˆHw-Û„áKTë±¯d›¦½‡Âw‘¼h²ÄÑ°Î+\\R\Z<kæÓ¦I.Ú2¯=‡rD[UA4‚\'Ù[6I×#ÓéZ(’8å¤Ë»†?½ä\0?±cèèîg.£ĞfOÈk4\ZÈàâ¬+ö“Ş½6ğI’Áã¾=dEñ|÷¯÷@›–BPĞ ‡¼š£ÓSÿ\0ó®°ÀÁ(ˆÈI¾q&”ÙûV´[—Tï*šaşY²ÈÂÜ©U¿+2)ÆşÔö\"ºWj\nÎ	—cÛRŒÀRÇj¢@-Qˆ–\0Øöûo­(ò*\Z#Cû†±ÿ\0§¨›=¸,¯¼…H¶XÈ\n?°¤zäƒb«A]}ªl$˜œíİ‰¸ˆÌœn üQdŒ`hUúAh‚Ux±ˆ	a@~ĞXö£p‘AûJ‹±È³^$Ú¬jVuÛ*ùQñúdıÃîƒùÄ~uËe¶íÇ<ˆ\0I¨’§B£Ùg_b¢‰’6\0Z\0«­må¶q2ªîšGBI˜R˜Å0+ŒJŠÛ°áh‚B.±´Ôì¶›fD	,rLá@ì,l¢5ÂÈW!ÂÕ[	W ¡F½õø¥–t]¼¨ÆÊ~c?IY>jd€\nµÅ©[\'K^(öË!Íæñ4áÔtNë»B<Ø…À‰ã@“æİ7!±±XwÄ’FNfí¼±±\nT|2Î@BŸ#À W¯ÉA¨*y«hİ]äH ;LB@‹/\n/ık¨vvâ^Ò€‡p¦	PÛŠD‡£û\nö#.‹1åKfo§„‘ZË#PÖ,‰2ÁÉ,\nµ$ıK¥\n4:\'Ê÷îòÂ72úI¥ø×îX\"Güƒ_¶¶OŒï›»¶T—¤“¼@b2V]ÑÆ½õvgÜ\ZÊ~Ó£YDóLH™¸ì­”Õ0pO÷7¬ˆ)¢mºRõ^Ÿ Û:P™yGµÍ0™AİÖXP\0Ô*1\\\0Î\Zru¹ÿ\0­¦nXnÙnq~§#yz#XöC©.ÒÊ¢hÃŠ$_°ò®İ³¶ÚF¼«8Óµøñ»`O*,˜F¦\0EFÀHX‚Ic–,EšÆ5 9$,z5¤õ$ÜD³Ef7\nÊH¢U•]ME‚8 ø#S4\Zó+Ğ&‰ MgøÎƒÖ¨/ßÒÌğº(Ì$€œ¿AÃ*U²rk[*G]ÿ\0È¥Ü¯n(¢íË;ÈÒaä{q+J€E,¬ŠË2ùWY’2»lÔHr6Y$vbi<ûu(eê¬Ğ¥Z\nT’È»ª†LˆbÎ\náÛ{Rì”ªc%€\0¢¬—ÇÃm¶fäu¿_\"âLÙÆ!Ê)Ë Î¹5 yÄƒ]°b3!HÈÙµŠĞã#Æòc‹3¨ò6ÓyÒ8­+–€„’ˆKˆP—Q7X°\0€a÷B3’²ËHæÑ ¨m£WŒ‚ÄP¦–Ë#•$rucéŸ\'dSÜÌŠLq?x¹SÎEC ’ĞŠR¤­ü’1\Z9¢È£¸KÃeo;.é…­óvÄòí¢\nCö”:–sÇ2¬¡•¡C‹F\n›È@¢¶Çå;GeS<`;ù+=ŒI1f€c9¡Ó,mcÅ”9ÙïLªç$iLQ%¼‘¤a—àñn9û\r~rßí”æ€N$öÉí±+“7*3î*Ø¢¬¸5iè}Sy ²µ,‘)È6BDeP†äèº0~@1‘Ëè6şŸ,aÃŠÈi˜¿–=Ù\\º)6²Òšäq‚d\rÚ·“¬{Ô°¥a&oC?’µ¬aşxñG3æÀ°j`é!Ê@ó^ZÃ;-[ó13«ê_9Ü¼rídUX’,ù@Åİƒ9+>`ºcGËAúÕÃ¡fH½·feM©¢«[àfVÇ £¬u˜!\rŞ‘Bä¤$Ø£3İä¥E«)(KM-`ü›}»Cwpòvìª’¹\0Ï÷%ù³+¨Éh(†ä—ú]½›Çu …Q\\\"È¹Ÿ$\0(eÄ1šc|ŸNƒQÜ|ª™a@ÎÙâÖğ•FÈ©ÍrU€X†\n  k»ïêVÖ\'Å”Ììäæ#ˆÊÇÇ à¥AÈ_f†»ô®‡µØ¬‡j${ŞZ÷\Z·ûB,¯Ã\0NGLzº&FCRÅÛ/‰ÁšHÖÁôu‰ÂÉ\\³X,é[÷uycNñíÉ\"€‡¶#y\0±IuÁg¡ÍkÉUD¥\rGún0¸[i¡nT±VB©Ÿ“‰¦ïfÍôÁB7RHT;,U0@òÏt™~Ï¿ZŸß6š$“ÉÛs`œÒI$À¯ œ2KÄ1scASë¹Åq:²°Pé,Vèw\n’Âü.7[Œï\"§€[…[ÕzT8@Ghê/4Ü©ÆL·“\ZEÄ]^›|¿¯ßåáˆp¦6(KDpT²ÚĞÎJ}´?õsºi#EÙ\\YCAÉRpÁÙ#,Á5jr¤€ûğşˆ›‡–iÕÑd¡jÄ‹b\0PÅ™€ÚÅƒÃmÏÇJØJYR¥¬˜lhTH¨åÃ(-ÂIR1·›¹a!D™„\'ŠıEˆ•’éœ¥§•,-;…“@Üô­²C&ŞYsNPãÍ…db.É%ÉP[šâ¨:É`Oy”â²+ä¼G‹à[5p‘Ä¦I‰k%Ù3ÇR6û\\ÙŠÏôÕE†í±XÊ#ÅHÄå¿ù‚¤C¦}B=ºF{-—#\"Â\"µC2À\'Á[Ë¶ŠM\rGé›YG~S<–IeT[¾%#¼Ø—İÊr8ğ~)$q´ûDîI,Lq1Lcy¤ó*¦ıªàÁ;kfµbÕ/µê-¹uµšâí(’\"Êa˜©³Ûü²ÀšpN\\Y@ ³ÿ\0u“¹F-·ŸnèØ²L´nµ •uşAühÈáE±\0~äĞı´‡ªuÀÌûX]¢œev‰Œn¶Œâ3D1*H_6EàÕå;LY¦gb13¼j„YÎšA8Ä’H¾,Šş×¢ Ã°\Z%Eb«Ç›3F(Ê@©(’üOïòoUŞ‰ê*ıI1PÌŒ\rù¶=ı ô‡!ÏãUª›|SpTN²4Û¤ˆ2øˆ6ûflJ,e]Idx0E\"Ê|U¬½K§:•&Rã\"$YJX	¶í­–ïıŞHüÚ`Wüc|í² ’8Ë˜¶øU’å_tuE±`X²ì|B½ñİ„±\".#*Ø;“j\rüFJ\r’šSÉ<ãÚM,„a4±9Y.HÂ•©Áó’èäåÔ\0‘sm‚ÈÛhcwí¬nQ’è3#\0ƒ%iƒjreäRÆªı>`˜ÈB‰\n2Kğ´d•VbÏôÄE{lJƒãŸA[ùÛÃ$‹.í <9t`$ÕT\0ªØ‹«( Àsâ.™\'Ş…ˆ1†F2œÓ+”€qôÔvÜp\\5V˜ôHrş«ÌTI·\nìÈC5Äñ‘É¨àâ’õlé=5£¼È²ÂOq–Bp·\'Ôò4˜n£‘q°è­TkAMÜÁ-ÛhÊ¼ŒY<AY%x¡PhöÌ‹2È0VV“÷:¶|{£K;¬F¸ e™ì‘ú#ØcFRşáÜ‹Ù\Z/ABÉ\ZÈ¸Èéj«¬l±ú¦eî€‚AŠX\nşk½‰Øôí‘dÚÆäNÃÅg’ûK–Rc‰W,‚#âğ‚Ş·Ğz~â6]¼ÿ\0â¢·• ü3[bšñ7ƒµ—÷°ïá¿Ó*LLÍ<ÑÉ$=º¤ŠP­ˆrTç#’‡äE˜\0İŞmŞÚ6í·\n”3v·eÄLê¾\\‰9ä«U“îí°‘?Y$Å‰š)¦IŸnìÑâ®FÄ ±_K\'éú”G2löè±˜„‚¬h©Ù’bÉ@+]Æ¿rûàß)÷á·D;ù$´Oö‚Ñ²—Óx§á…ƒ¶SüŸ=w¡#L	LğT´lîÛ}ÌA¨ØíI\0¬n*½ Üôâå8²¬rJÌ=ãëÖÉö#–\Z&yoÙ q¶\ZÑ?ä¼ˆ8·d²d6ãøş/^wR!ÚBBG‰[c–Ùš0H³ç4†[&Š©²(ëŞåHî)â@òâğW¶š7*¡úá\rGüŸÍr!w›·1¡8ÄM‘I…G †=ÅŞKùôœÓ\rySÔâ;È©‰¦D‘4QÉ²]2fWé\\/–Tƒå#XBEHò& 2…•pğR±FºUåıÊ)v³#Û¼m+r#pLP¬H”øwq¢«õ’@†ÃáÛxa›3‡Óa<¿ÜÒ:\"ÈÖK`äŸ¹‚rVĞb[¡\'Ñd*î~åÈÖæ	RÒ pÄ·ú5uø÷~8áNË\"ØpR*.¤Z6Y17æ¶Ä”È€k}`”!Eq_k„h2À8)«(¥‹\ny›tˆ“p%eÇµX„‚ˆp”f|xóe$š!Pyh4~ƒÑ¢Û2¡%¤¬¼› –©\Z¢–ò<#×äıB}éj(Ün»BC]·pÀ%eP?ƒ„}ößdIënÃnÈ;·Kv\"â,£&,,-x‹\0ƒâ¬÷mÒãY;Ê•@µÅ£×±Lx<h)Û¾›Ø!d¬Î?&W>„kyIü£b’\0N¬ûo¢*¨5XRª•\n¼ØNl–7#tC±‹¹Ş1§v€Ï¨_º7ÿ\0Øşú×÷æ\r´³(,Ê„¨\0µ¿¥9¬ˆĞJÛÌ‡$Zğ8°ÿ\0I @ÿ\0±şuÛPz6ÈÃ\n£Ï÷9ü<µ\0\0î€\0\Z E¼+µwİÏ3È–8“­² Hñ@ìY«‚Çı¸ÒĞìX–áä$ä(ŒÅ^>‰Å‚Ç#j?Õ«Vê\0èÈK\0Â‰V*ßğÃ‘Î«ûşœÈÁcÇ´\0ŠöTG\Z`8ãBÇÜ\råaQëû¼Ñ+n#tr«B8$%{z\'êF 4Š¥W¤¯Ş8R7d!@P1aÊ“‘&ó%ÀURÁ–+ããiùÃhû…pıÕXÂ˜’Ë–bìÍ1Z«sLÄe›¨!YÖIïöÎÑÂ %ƒ”–@$U_ºıÈ¸p\0Ìı _tÃ;\"”cYX3! î°²eÍÛ+®+*˜‹¥u×x7²AË#Û+nX©0­–Q»@¬l±\0ø{Öv­qnpúO<Û…Œ’™‰›%Z7“:?x<şq­¶İw’TÊîK˜ÎÓ2ò˜#f§7ešFûÁ\\â\0\n|A3måÛn–`²f†H™cÅË3ŒÇbE•¦@Ï“xÁ4Ş—Ö6Û°’¦/’BT™AfYI\n¢ÙHÜÎÁÀ¢ğ.«ğtŞşİfE~üXD°ZIqL_6hûbE?{-²s…\"zDq—\"2² \'Fuj‰¤²’FÌ¸˜†$I‰<to˜õÚ˜öÑˆÿ\0Q$M¶ŒÇÁRªÁØ° 	[¸DpƒÃ:’ÂëU.¡Ğ;0ÆJ1Oà.AûHÀğ†Ü6íxğökëãdé›H›nû9ÚVARÂØ»:«0\\Pim\rpÂ_^l5_›ªI´­©‘VhRBŠÁ˜?ƒvŞ˜Y+Ë`Ş,ş;§Aqşt¡¡8£É.îCGJ;x¹o+p†R=QpTC—YÚË\nÇ¹…ÊÍ·vxä˜0©ÛÜ,Ç!m°AÜ«ÉÔŞNØ¸Ö¡e¢\"¯²Â cşå²š;ÿ\0QAùÔ¶ÑÓ\'%¶ğÄUšL»`ªb˜ó’R0µ\'ûx:»mÿ\0ş!Şíqtw‘–Ûr±ˆÔ=‘AA”İy€½m{¡ñhÛ=ÈÕï„XâfŒØñÊfH>ÅqâkïM‹j%-³S0Ü©Rñ¾;s«yI¤f%]GmK\0²(Ò¾­Ó·ÆoÔ¸ı<lÕ·‰ŠG1aúİ‘ÅÑñ‘†4ª¾‹\ZĞ(ê\"Ù@DM¸mÖâ8ğU„3\\°Ù´²²†5„~ñò‘µ—u0Â(Ò4ÄGn†{8v’Bl!b\\HB½Ú-LåôŒí¶(‚Ô0\nK¸§¹“ºO5Ãnˆ£Z?—=?k‰&0DÔ…ÀÉd`ÌÌÃ×ÓVwatdšQÇ\Z=·÷FÌßQLlÌÄË»*DÄ›1Æƒo€’\n´Jò£{¹ÙLQ™q9ÎYZè39,şD!ñ$ª³ŞfDL+FD\"ËV»²ì»œTI6Œ.ÛTÎ²cšiíˆ8”B²…„$a‚§“3$eO¼‰\n,)ı+§3n¢€æÄvİh,HÍx“YL)Šº²âú¿OøàÛÄ¬ÄwˆáU(4¤wUÁ³ ~MÕê½Ñ¦ŒÑµJìŞ™Ol–«,K\\6Íø\n¢‚Ü6ì\Z2ò“2/\0dNMâ„(ŠöHÄÑ¯_€R¨…•^Ú#å3¡ˆ²0¼Î@šR@	)ÍyF»¨¡C€5]ÜôÉ˜	\rdÅ	AíIt¾n¼\0iH6=£F£F¨İFB±³*äÀp,à›üPçş5\'^]A`Š#øĞR6ÛTB.ÖÊ*İÁ«eU³ü_†>ˆa©‘üreÜ¬İÂâIÈÙ8h£E,;“›….‚´€›Z’˜(Õ‘\0[WÏæ†¢õ­¬’íåŠ)LR:2¤ƒÚ(ƒcıôßŸõVŒî¯†\0¦ÈQß;©l•IJhŸ\\j­Ö¶Œ®Ï!j,T4e¨Án#û”·$s³bYY/ß<’#±–`±¾qâ›é²Ÿ0¬Á–Õˆ÷\0K`B}®ú†=»–^ÑCH; #¢H’GûH0lzÊù½;dvñÅ-c;‰VEWò	ôVÖf.2B£a–!rˆæJt¸we qÚ”´xÊÿ\0Q¸˜°v!bÔ±£i`ŸEQ¶€*­ ¢d•TY c®/ĞÕg~ŠFsK%•‘ZŠÙÈ{±‹¬1lqaã~‚I~2ì£) hÄo4ˆİ§U.IÂÉÛDÌ«–DµØ½;Øî$ÜF‹Ù,\"¤VÇÒ4sƒd§´%ä•üÍyÙî»À¬£  Í$d\Z¾°ŒYò-;`V—ÿ\0•Ä¨ôe´m!3»mãq G‘¡Nòb´†ñuşÕ¿½MòÁC„=\\ş¥¢‹l»v„ıg™£NÚ0P¤H‚Íyµp\r#›?OèÑ«ŒŸ¸\"Ä¢È±*@ÙI>K*‘«)òg#\"buõ\"ÓEÙ,³&©I•á”‚A,°±VQÕXˆÈÄäRS®A,\\nÓpÈÂjNB ˆ¨(¸fk›ÈãAé¡ bò8âI¢*PG.cˆßàLßÜuî…–9<jŸõH3ÈĞ?™æ€	R‘\"Ğ\rZT½isjÌcQwXaç‹ÖxPîe9Q=Ô\0Ç¿ÖIŠ€D\"ÕÊ²b‘Úı0Ù}¦(ÔŸ>ß1©Á‰@È‚^Ú‹oŸÖ/ö8—Jä\Zjß†:éÑ*îøöÚÅˆ/)gãó#za`ı2?:]Óz[9SEXâªÒ4\\EĞ 2”Ä@;·‡6lÓ—0•Å†e÷â¾1ä$H¿ÆCûV^âäÇ!Û.è@\"5PZ(Èäx‘‡î(©“@Nõ7>\r.¤’b†>dÉpÀ¢œ ]ÄSéµ~êc·¥‘‹}¥±ä75|†Uû1ª\Z£A#Iº«Â1”)·a\0G-™Vrá\0À’V‚Ëğl‹°»$³ÈØÆúAÁÉ4CA ”\rc®ó£IÁÆËîäª3ÎLR¿ñRè»d¤Áâ±‰…Wã%bVŞš<ƒV.œêá\'L£61Œ(ˆô^ÿ\0’±Ÿ_ôÿ\0¾“!1òI\nJ†cäøø—<P¶EqT4&ëÌhP\0\0\0 \0kÖ€Ñ£F€Ñ£F€Ñ£F€ĞF\ZChØ HĞÆ±8Z1<E±ûÊƒ‰ä4Ïo´`Nn]N$+…807Ã\0,]A6.õÖ\r°Vg¥ÍÏ“*Ñ`/\0Ü› \Z¿ÿ\0‡}_y¸íI!a‹å6áoÓ„„D1#ƒÇ%}Š&ª‰‡¹Ø£\0ñ”0<¨ú{SGFÎJ›8Ó®©°Í\n»I1ö¦­•–óhW¦àWğOÔºL±$mfÕI÷•Üj²²E=Yî1¾\n\r›&Óqê\0Uİ´°w\0Fì«’¨bJƒ20\0Ø_\0	QJÎX6Ş2¨YW®+îEƒß5~(/İÓ~Q¹–h0*ÊYeNâ¿l5]R»K,F\"eá¿´.ü+¨îŞ\"›‘´—¼«0FY$Viq%€xnÑ³6º9D%íQ-ÄÒ’›¶ÑÛ¯Ø„Ù>>>y:Cµø»2±y¶­À–\'&=¾ã¹V¶$R¦Jş_ìkO2´qLò,r¨y– ­,k\"Ôd¹b+€İµ«&¾qP&ÈÒ2q”¹.S(ƒ\"JdMS<u`’äÃ¦ôÁ„i8BÊ¸¹	€I(«o\Z]¼$Yû[Ş§m6Jî–\'Â¯‰pÚ8D@®{ŸÎºÁ¤° ¸¡ ¨üÉ+¼P³b@¶$U\0/S¶ñÎ¨Tac•Û5ùHØğ/–À{ÿ\0P¾D{uCk‹%Øÿ\0»\Z\'ÿ\0´k–Ú>m„²‚Ü’Š\0»\0ÜY\'ó®K°?İlªKcc)_ınxì¼Cö{l6Œ	–RÌ9¯µ°‰ûûcÏ\0/”î‰pë8É“)˜ã–eb,€øÇ‹H4§ãá6rÃrïŞsMŞ§2J\"œP³;¤ıä[SºüõäŒ)’+Óœ•¹¡ŒŸ¨ÔÒHC$v´`PÓ¾µuäJ(R)›œ‚Fê?¦å\\~\0_ÈMøú+b¸j<G#Ÿ\"®üò8$Wì4ë\\öğ„P‚è\nï]4\Z4\Z4\Z4\Z4\Z4\Z47±äŒ ^CÇ£Á<ş×Ÿö:¸“3\Z…$4…›† #²\"¾à•ûİ‹­0Ñ E×z>q2ÆÅIãØ¥¶f-ø `Æ˜\ZŒQ\rU¾Ò&ÛÇºİ¼x¼«@¬A9àêªhYˆ¯Á¯/FÒÍœ!–PÔ~±6¦ùR¥=z*Š?éüè+Û>¤™˜Ô0l\"mØÇşåe \Z>4yV]‡NÃÍ“*bxXò?û³\0ãK¾ÓÖ8n¿úœÜÂÚNñVûYäofø>¨ƒà\Zû£F€Ñ£F‚·¾Üí[zHY§R‘«3@œİÂ($ïVÊµèjÇBïóªÿ\0Ä6øØ*UêW*@È6¤È8“!ä?(¬©ıš°è\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r\Z4h\rBé[bˆÀ¶E¤‘‰‡“± ,ú=ş4hĞwÚmR5+\Zâ¥™ˆÿ\0ÌÌ]ü±\'şuÛF£F£F£F£F£F£F£FÿÙ'),(2,'Fernando64',2147483647,'75764870152.33jnr1l','#c79810','0'),(2,'LuisEnrique',201,'470546264.4.p3e1','#c79810','0'),(1,'Manolito',123412345,'8499614222,332063562.5milaten','#000000','0'),(1,'Margarito',315115879,'26942574160273','#313895','0'),(2,'Ramon7599',1234567890,'04998870152.33jnr1l','#c79810','0'),(3,'Ramoncito7',315128299,'59897870152.33jnr1l','#000000','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0\0´\0 \"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ıS¢Š(\0¢Š(\0¢œPhi2)i\nƒ@EPEPMcŠu5¨\0àÒ”/JZ\0(¢Š\0(¢Š\0(¢Š\0(¦±Å5_9â€sF-\0QE\0QE\0QE\0SZMc@\n:RÓW­:€\n(¢€\n(¢€\ni8¥=)¸$óÒ€‚Äx§t½4|ÄÔ\0¨IíŠ}4\nu\0QE\0QE\0„â–¢•Š¡>”\0<êŸxã½yÆ/ÚSá¯ÀX oxÇNğôÓ©hm&s%Ìª$¬(ÈãÆ2@ÎM|‰ûzşÜ>*ğï¬¾ü\rãıCú…íŠy×o !-`\\`NAdÿ\0–cJâ|ÿ\0‚OYßL<UñçÄ—ş-ñ=á3O¥Z_9„1<y×Dù“6:íÚ£8Ëš\0öËø*Ÿìå,©ñô{˜)y4;À«“ÔŸ/_A|/øÓàŒúêŞñ>âKÛd²XÍ¹¡oIáĞñŸ˜kÆfÿ\0‚m~ÍÓÛHŸğ¬¬ãŞ¥wÇ¨^\\Œd;¯¥|«ñ»ş	âÏ‚ú„ÿ\0?fÿ\0kši†nŠŞÀÜËo:ãÎè“ ù³÷˜ğ@?R@ã\"Ÿ_Á>m›ŸÚ[AÕ<3âèíì~#èºébŒÄ·Öû¶ùâ<-•ˆGAĞ• \0p>Ë^”\0ê(¢€\n(¢€ŒĞ)h Š( Š( Š( ¸¿‹¾?¶øYğËÅ>/¼F’\rL¸Ô\Z5/åÆX/\0õ ‡®Ò¾sÿ\0‚‚h÷ÚçìsñRÛN¸6×+¤‹‚à°-SG,©òóó\":ã¡İƒÆhäßø$ßÂñŞ¥ão>,EÕüQyªMiawpÚ)™|ËÉ×“‡s2¦p0»€$1¯$ı¾?l¿~ı©µÿ\0è-Õ<¢hÂºuØã¸C9@ËûàìOŞÜ ×?cÿ\0Á%u{ÿ\0ØûI´µ·İiú¾¡oxØQæÊeóñÉıÜ‘®[Ÿ“\0¯©üCğÏÂ^/Õ-u\r{ÂÚ.·¨Ú¨[{½GM†âXT6àİIPç\0õæ€>høÓñëâ\'„àÖ?´´{]h\Z]ÅÕÀ´É³’(O?”Ê@ÚÌ6Œäğ+Âà•?´ïÅŒş5ño‡<i¬ê/Ğ4í2+˜u+Ñ½ŒÆb\ZP¹”3ãvâ<®6€súSs§[^ÙKgqoÖ²Æb’	#\r¡*TŒ GJÈğ¯Ãïøˆü5áİ\'Ã±\\0y¢Ò¬\"µYH„j»ˆŸZ\0üÀı±´9bÛoÁ\Zü8Úø{Å<º•„Cb»‚©~›´‘Ê’ƒƒûÂN2V¬®ÒîÚ9“ˆI%HÈ8íÅ~`ÿ\0ÁoOÚ4ßƒÈŸ3ùú·È9<­¦8¯Ó_0şÄÓ‡B-¢ÿ\0Ğ\0jQE\0QHN)h\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¬Ÿh–#Ğu+P….4ûëi-naq‘$N¥OÕI­LuÜ\r\0~@şÊß%ÿ\0‚v~ÑŞ5ø=ñÏmàıNù\ZÛY‘\nÇ	­½î1ÌRÆU\\®v”ÿ\0e…{Oí%û|oñ÷Šõ|øí«Üè\Zì¨Ç£Ïâ{¸!ƒÌ%±k,NÑ4<£åÀà}KûNşÉ^ı©|\"4¿Y´\Z­¢9ÒõÛQ‹«aÛ	\0´mòœgƒ‚>±ø9ûb~ÂÒÍÃëÁñáí¦ëŸ°[ º€&rÊm„Ğ±$’ \'<œhOØ£öá.ª~$jÉÎ77.p?\'Í}iû0~Ïş2ı•´ısâ\'ÇÚ–¾¶ú|‘Éey¬İO¥ØÆJ»JÆvÌ’ü»Wj¤\rÄ×Ì6ğV/>$×®¼9¤|&Ñï¼Aôk[\rBk˜]HSº û†Öe03Zp~ÇµíŸ­Á}ñÛÅ3x;ÃÒ,Ñi’™†FA†Îå«\0Jï•·Œ‘ƒÍ\0dx/R›ş\nGû~[xÚİ¯Âÿ\0GñAr¥	·…÷Dî.â3ŠF~Jıs\0OS^wğSàOƒgÿ\0Aáoé¥i±¹–G.dêSÁ–Y.Ç“À\0\0\0\0W£/J\0uQ@\rjQÒƒÒ–€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€ŒÔn€óÅ<œWËß¶¿íµáïÙCÁ¾T>N¯ãİJ6:VˆÏòªò>ÓqV=ÈÚ¼e\0ù/ö-$ÿ\0ÁW>;Ädëãƒÿ\0Q+õM(À¯çcàÿ\0íGãïƒ?´6¡ñV4\ZŸˆo\']~È<¥½ŠyU¦GÂşçsì*À|­·‚>Sû±û>~Ğ>ı£¾Xx³ÂWÆ{i¿usi6ÅŒàĞL£î¸õèÃ¤ƒ@¤)iÍ-\0QE\05©GJF¥(h¢Š\0(¢Š\0(¢Š\0(¢Š\0)¬p)I\0\Zùóö¾ı¯<1û(ø\rõ-M£ÔüE| ¤›e¼uf?Á\nänøË(7öØı°ôŸÙ;áĞ¿mõoj› Ñ´‡”\rìİq(w“Ç,ÅT’GÉ±WìYâ/>1ÿ\0…ıñóÎÖ¥ÔeÚf©§Í|ÜywÆF\0ypà\0\0öOı”|]ûiüH“ã¿Çy&¼ğíÔ¢];K•Lk©*Ÿ‘U?åšt\n9ç’3~±¤\"<hògö\\ğ®“ãø)ŸíáıwOƒWÑµ|Amucr»¢š3¨A•aùc¸ ‚aüSøYñş	qñ¢/ˆ?Zã\\ø[«N ÖáÉ£\'\"Îìò¸äÅ>3øîVìÿ\0bÑÿ\0]øïõñşœ`¯Ó_ø?Fñ×‡5=Ä\Zt\Z¶¨ÀÖ÷VW)¾9£=T×# €hıŸ¿h	şÑßl¼[á;ñ5¬¿º¹³”qc8h&P~Wú0Ã) ×¨ƒšüuøŸğ»â\'üçãJ|AğÜëŸ5i–‹[¦&7BIwd}Ù$Å8½÷¡ı:ıŸ¿h\n~Ñßl¼[áÑ=¤¿»¹´”qe8t(û®?&2’\r\0z€æ–€\ZÔ£¥#R”\0´QE\0QE\0QE\0‡¥-È]VÚIê+â?ÿ\0Á6¬¾)şÖw¿|qâ«¯ø:Txü=~I”L§jX\0¢Ñ~ğUÃÅ[ø™¾áÀ£€)ØYEai\r´Ç 8ãPªŠ€8\0\0[=\Z”TrÈrM\0~W~Åßò•ïßïkÿ\0úq‚¿UÈ¯Ê/ØçU³Óÿ\0à«ß\ZVæê(\ZöoCl®àœ^Å&Õõ;Ûè§Ò¿WA È<\Z\0Âñƒ´ŸøsQğş¿§A«hš„\rÕ•Òndn ÔÈ ‚¯”?eø\'ì¿²ÿ\0Ç?ø§Gñ­ãø:ö› ÆH2+Ä^6¹ˆäFË†9%ˆå[ìì\n0(±¨Z}&-\05©GJm8t ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢ŠCÒ€°kæÛ×ö·ı™~ßj6—	ÿ\0	v²_NĞ­üÀLÊw\\mêVCÛŒjHÜ+è­Bö\r>Öiîex‘¤’YX*\"–f\'€\0É&¿ -Íÿ\0üçöàmºo…>Úád–ãä$p%»7S¹ê#À\0ğæıŸ~*|øIà?ÚZÒòîŞöëU7…Y¦µÊ›[©[9e¸c( ödÉ>aö§ösøé¤~Ñ?	<=ã}¤)Û«%”HÖWKÄ°9\0r§¦@Ê•lr+£ñ§Ã?xïáî£àÍcK†_Ù	l#@¨±c\ncåÛ…+ºUOjüºıüu­~Â?µŞ½ğ;Æ÷RÂ-¯^$——Ü>¥ê–<$©û·Á 63÷\0?]ÇJZ†Lƒ8ÅM@Q@\rn´£¥6œ:PÑE\0QE\0QE\0QE\0S°	§Ö‹µ™¼?áWR¶Ó.µ«›KY\'‹N³]Ó]:©+d¹\0Éï@ÿ\0ÁXÿ\0ié<!àÛOƒŞ•äñ\'Š¢VÔÄ\nZHôöb¢%ÇñÌë·üŠÃ8¯ı„¿fH¿f/‚vzEÜÂ]ª•¿×§Œ–İ9, Ÿá‰A7o?ÅšøÏöø9â_ÚKö˜ñ_Çÿ\0‰Ú|Ğ>‘ª¿Ù,n£Ù©ü¥cãpÚ\"¡Aä1Ÿ”çõm\">P\08¯µğ·ü;öWşŸèVbOøBšP¹ßw¦Œ´Ñ\0:²È¾Â@>ğ÷eE %N:”ògü›ö©_Ú/àŒ6Ú½ÏŸãOˆì5bF\Zt;…½Ï_ãD!÷ÑıE}nùâO†~.ı„¿oïê¿¼;¨k~ñ¤Ì¶ú.JÒ[HÈ.íÂŒa wYœ(^N7WëM»3Ã#?0Å\0Y¢Š(­J:VKx«Eï«Øûzüi¿ğ—è¿ô°ÿ\0À¸ÿ\0øª\0Ù¢±¿á.Ñ?è/§ÿ\0àTüUğ—hŸôÓÿ\0ğ*?ş*€6h¬oøK´Oúéÿ\0øÿ\0Gü%Ú\'ıôÿ\0ü\nÿ\0Š \rš+şíş‚úşGÿ\0ÅQÿ\0	v‰ÿ\0A}?ÿ\0£ÿ\0â¨fŠÆÿ\0„»Dÿ\0 ¾Ÿÿ\0Qÿ\0ñTÂ]¢Ğ_Oÿ\0À¨ÿ\0øª\0Ù¨Ş à‚2++şíş‚úşGÿ\0ÅQÿ\0	v‰ÿ\0A}?ÿ\0£ÿ\0â¨A-2ÅT)c¹ˆO©õ5`t¬øKt_úéÿ\0øÿ\0Gü%Ú\'ıôÿ\0ü\nÿ\0Š \ršB3Xÿ\0ğ—hŸôÓÿ\0ğ*?ş*øK´Oúéÿ\0øÿ\0@ŞÚ71A¸)PØäÔgĞà~B¬*â²?á-Ñè/§ÿ\0àTüUğ—hŸôÓÿ\0ğ*?ş*€6h¬oøK´Oúéÿ\0øÿ\0H<Y£±\nš­‹¹8\n.£$ŸO½@ƒÿ\0ğR/‡ø]ûJ]è~Ğl¼;¤&“e2ÙX¡XÃº¹fÁ\'“ùWÊ[P¸Ñ¸ÑE\0P¸Ñ¸ÑE\0P¸Ñ¸ÑE\0P¸Ñ¸ÑE\0P¸×_ğ~BŸ¼@®·dFGı<%PÿÙ');
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
