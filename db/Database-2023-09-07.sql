-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: concesionario
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbautos`
--

DROP TABLE IF EXISTS `tbautos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbautos` (
  `IDENTIFICADOR` varchar(20) NOT NULL,
  `MARCA` varchar(50) DEFAULT NULL,
  `MODELO` varchar(50) DEFAULT NULL,
  `Transmision` varchar(20) DEFAULT NULL,
  `AÑO` smallint DEFAULT NULL,
  `PRECIO` varchar(30) DEFAULT NULL,
  `TIPO` varchar(30) DEFAULT NULL,
  `COMBUSTIBLE` varchar(30) DEFAULT NULL,
  `ASIENTOS` smallint DEFAULT NULL,
  `TRACCION` varchar(30) DEFAULT NULL,
  `POTENCIA_MAXIMA` varchar(20) DEFAULT NULL,
  `CILINDRADA` varchar(20) DEFAULT NULL,
  `PESO` varchar(20) DEFAULT NULL,
  `USADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IDENTIFICADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbautos`
--

LOCK TABLES `tbautos` WRITE;
/*!40000 ALTER TABLE `tbautos` DISABLE KEYS */;
INSERT INTO `tbautos` VALUES ('fofi2016','Ford','Fiesta','Automática',2016,'45,000,000','Sedan','Gasolina',4,'Delantera','120 HP','1600','1300kg',_binary '\0'),('maz6','Mazda','6','Manual',2021,'180,000,000','Sedan','Gasolina',4,'Delantera','190 HP','2500','1600kg',_binary '\0'),('niqa23','Nissan','Qashqai','Automatica',2023,'90,000,000','Sedan','Gasolina',5,'Delantera','150 HP','2000','1400kg',_binary '');
/*!40000 ALTER TABLE `tbautos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbclientes`
--

DROP TABLE IF EXISTS `tbclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbclientes` (
  `DNI` varchar(30) NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `CORREO` varchar(100) DEFAULT NULL,
  `TELEFONO` varchar(30) DEFAULT NULL,
  `DIRECCION1` varchar(100) DEFAULT NULL,
  `DIRECCION2` varchar(100) DEFAULT NULL,
  `BARRIO` varchar(50) DEFAULT NULL,
  `CIUDAD` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(50) DEFAULT NULL,
  `CP` varchar(20) DEFAULT NULL,
  `EDAD` smallint DEFAULT NULL,
  `SEXO` char(1) DEFAULT NULL,
  `USUARIO_FRECUENTE` bit(1) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbclientes`
--

LOCK TABLES `tbclientes` WRITE;
/*!40000 ALTER TABLE `tbclientes` DISABLE KEYS */;
INSERT INTO `tbclientes` VALUES ('118886','Nombre648','correo177@email.com','7948539353','Dirección181','','Barrio4','Ciudad42','Estado2','617988',40,'F',_binary '','1978-09-11'),('121442','Nombre694','correo401@email.com','7933044139','Dirección422','','Barrio16','Ciudad20','Estado1','806890',52,'F',_binary '','1995-05-04'),('127132','Nombre105','correo438@email.com','7885772700','Dirección51','','Barrio31','Ciudad1','Estado12','140130',20,'M',_binary '\0','1997-08-08'),('128115','Nombre553','correo673@email.com','7734874489','Dirección507','','Barrio21','Ciudad29','Estado34','572986',29,'M',_binary '','1997-11-14'),('130956','Nombre154','correo671@email.com','7903875971','Dirección451','','Barrio28','Ciudad26','Estado45','856606',21,'F',_binary '','1974-02-07'),('134110','Nombre935','correo563@email.com','7109189635','Dirección361','','Barrio38','Ciudad39','Estado32','743894',35,'M',_binary '\0','1997-08-26'),('151190','Nombre972','correo691@email.com','7585695002','Dirección624','','Barrio25','Ciudad31','Estado34','440130',51,'M',_binary '','2000-01-19'),('160779','Nombre544','correo517@email.com','7961014144','Dirección230','','Barrio14','Ciudad35','Estado35','398430',23,'F',_binary '','1998-12-13'),('161423','Nombre368','correo640@email.com','7184795526','Dirección550','','Barrio23','Ciudad34','Estado3','221104',20,'F',_binary '','1982-04-26'),('169344','Nombre565','correo597@email.com','7363044278','Dirección667','','Barrio23','Ciudad15','Estado6','647012',36,'M',_binary '\0','1988-04-29'),('173543','Nombre245','correo983@email.com','7263957808','Dirección959','','Barrio12','Ciudad18','Estado4','319314',59,'F',_binary '','1971-02-06'),('182761','Nombre208','correo768@email.com','7294014153','Dirección772','','Barrio10','Ciudad38','Estado8','487154',35,'F',_binary '\0','2003-06-15'),('188557','Nombre864','correo25@email.com','7583098395','Dirección606','','Barrio21','Ciudad14','Estado8','869104',45,'M',_binary '','2002-02-06'),('198559','Nombre531','correo328@email.com','7144104106','Dirección259','','Barrio7','Ciudad48','Estado18','879332',81,'M',_binary '\0','2001-05-12'),('199315','Nombre859','correo965@email.com','7323518529','Dirección346','','Barrio49','Ciudad44','Estado24','695900',51,'M',_binary '\0','1999-12-26'),('212141','Nombre197','correo615@email.com','7534536393','Dirección568','','Barrio19','Ciudad13','Estado6','763185',89,'M',_binary '\0','1977-07-15'),('217232','Nombre43','correo824@email.com','7994575285','Dirección495','','Barrio24','Ciudad0','Estado25','497282',37,'F',_binary '','1994-02-02'),('227253','Nombre157','correo365@email.com','7419345967','Dirección676','','Barrio15','Ciudad28','Estado44','642498',94,'F',_binary '\0','1970-01-16'),('240847','Nombre921','correo135@email.com','7923992247','Dirección170','','Barrio5','Ciudad0','Estado38','732377',80,'F',_binary '\0','1995-09-02'),('247549','Nombre604','correo532@email.com','7862131493','Dirección637','','Barrio32','Ciudad15','Estado32','284706',69,'F',_binary '','1975-06-07'),('268730','Nombre552','correo200@email.com','7412113213','Dirección131','','Barrio30','Ciudad34','Estado28','691682',30,'F',_binary '','1971-08-14'),('276422','Nombre550','correo166@email.com','7262437426','Dirección402','','Barrio23','Ciudad7','Estado15','140514',86,'M',_binary '','1972-12-04'),('288122','Nombre831','correo531@email.com','7247957002','Dirección226','','Barrio31','Ciudad25','Estado31','556365',35,'F',_binary '\0','1981-01-02'),('299531','Nombre82','correo749@email.com','7549254946','Dirección247','','Barrio36','Ciudad47','Estado26','706876',46,'F',_binary '','1992-10-22'),('314859','Nombre371','correo140@email.com','7631465720','Dirección529','','Barrio43','Ciudad39','Estado17','314557',76,'F',_binary '\0','1972-03-06'),('326815','Nombre281','correo651@email.com','7470605752','Dirección105','','Barrio14','Ciudad6','Estado40','612076',96,'M',_binary '','1980-03-26'),('338510','Nombre575','correo84@email.com','7723506898','Dirección211','','Barrio49','Ciudad13','Estado19','159215',75,'M',_binary '','1987-12-30'),('345448','Nombre213','correo250@email.com','7650706342','Dirección307','','Barrio35','Ciudad29','Estado41','367150',62,'F',_binary '','1970-12-04'),('346777','Nombre753','correo946@email.com','7523035769','Dirección511','','Barrio7','Ciudad9','Estado27','175638',42,'M',_binary '','1988-04-15'),('358219','Nombre80','correo541@email.com','7520844240','Dirección712','','Barrio7','Ciudad33','Estado41','145276',44,'F',_binary '','1983-07-25'),('361894','Nombre658','correo418@email.com','7206628198','Dirección336','','Barrio16','Ciudad31','Estado6','699293',59,'F',_binary '\0','1996-12-02'),('362972','Nombre525','correo752@email.com','7264622709','Dirección658','','Barrio37','Ciudad37','Estado24','187492',65,'F',_binary '','2002-04-27'),('366183','Nombre758','correo905@email.com','7327408095','Dirección546','','Barrio48','Ciudad11','Estado11','382987',56,'F',_binary '','1981-06-24'),('369681','Nombre660','correo403@email.com','7134348747','Dirección978','','Barrio38','Ciudad48','Estado23','434911',100,'M',_binary '','1990-03-18'),('376350','Nombre591','correo34@email.com','7457917074','Dirección885','','Barrio11','Ciudad26','Estado45','890606',35,'F',_binary '','1983-02-22'),('386974','Nombre766','correo874@email.com','7165414896','Dirección740','','Barrio24','Ciudad10','Estado28','213168',57,'M',_binary '','1997-10-29'),('387679','Nombre315','correo618@email.com','7231802657','Dirección876','','Barrio47','Ciudad4','Estado29','661437',90,'F',_binary '\0','2003-04-03'),('394937','Nombre224','correo140@email.com','7123743765','Dirección711','','Barrio23','Ciudad13','Estado43','522447',41,'M',_binary '\0','1990-03-26'),('400306','Nombre400','correo2@email.com','7828310421','Dirección39','','Barrio38','Ciudad36','Estado16','455246',60,'F',_binary '','1995-09-16'),('401831','Nombre42','correo207@email.com','7916836477','Dirección916','','Barrio43','Ciudad27','Estado9','226892',77,'M',_binary '','1998-08-06'),('406637','Nombre71','correo334@email.com','7513570071','Dirección293','','Barrio4','Ciudad28','Estado27','44737',68,'M',_binary '','1996-06-17'),('411487','Nombre211','correo20@email.com','7519181837','Dirección268','','Barrio47','Ciudad45','Estado37','890283',76,'M',_binary '','1986-07-16'),('423916','Nombre212','correo980@email.com','7339513325','Dirección389','','Barrio7','Ciudad28','Estado20','338077',69,'M',_binary '\0','1995-05-30'),('434882','Nombre214','correo956@email.com','7225087113','Dirección825','','Barrio35','Ciudad3','Estado11','852606',21,'F',_binary '','2003-04-22'),('451292','Nombre806','correo860@email.com','7896242068','Dirección841','','Barrio27','Ciudad11','Estado26','860385',32,'F',_binary '','1979-11-18'),('459922','Nombre246','correo31@email.com','7476637132','Dirección998','','Barrio36','Ciudad34','Estado10','863528',34,'F',_binary '','1997-06-19'),('482885','Nombre669','correo70@email.com','7411251269','Dirección516','','Barrio27','Ciudad9','Estado13','696289',24,'F',_binary '\0','1988-06-30'),('495047','Nombre479','correo82@email.com','7975011524','Dirección614','','Barrio7','Ciudad46','Estado8','83927',96,'F',_binary '\0','1997-11-27'),('530158','Nombre75','correo945@email.com','7550103870','Dirección663','','Barrio40','Ciudad5','Estado3','9118',89,'F',_binary '','1981-12-01'),('533696','Nombre798','correo545@email.com','7397647344','Dirección18','','Barrio5','Ciudad22','Estado46','287931',84,'F',_binary '','1998-02-23'),('543159','Nombre730','correo172@email.com','7706640778','Dirección851','','Barrio11','Ciudad31','Estado21','253792',26,'M',_binary '\0','1980-11-12'),('544353','Nombre542','correo232@email.com','7581559810','Dirección977','','Barrio14','Ciudad23','Estado26','201422',61,'M',_binary '\0','1985-03-27'),('563755','Nombre946','correo186@email.com','7182255558','Dirección898','','Barrio10','Ciudad19','Estado16','443193',55,'M',_binary '\0','2002-03-30'),('579945','Nombre51','correo657@email.com','7218970914','Dirección689','','Barrio2','Ciudad8','Estado36','142400',65,'F',_binary '\0','1990-05-29'),('590767','Nombre471','correo722@email.com','7276584837','Dirección814','','Barrio24','Ciudad48','Estado20','148884',65,'F',_binary '\0','1979-02-28'),('593949','Nombre586','correo285@email.com','7702585529','Dirección490','','Barrio22','Ciudad37','Estado19','662009',59,'F',_binary '','1986-01-04'),('626246','Nombre971','correo102@email.com','7639754480','Dirección690','','Barrio32','Ciudad9','Estado49','370943',23,'F',_binary '\0','1990-05-15'),('626645','Nombre471','correo600@email.com','7629381028','Dirección139','','Barrio46','Ciudad12','Estado23','556167',72,'F',_binary '\0','1984-07-18'),('627598','Nombre110','correo792@email.com','7670552877','Dirección790','','Barrio2','Ciudad44','Estado14','677164',93,'F',_binary '','1970-07-23'),('636892','Nombre986','correo142@email.com','7779187382','Dirección344','','Barrio22','Ciudad13','Estado47','846235',89,'F',_binary '','1985-12-16'),('640900','Nombre517','correo782@email.com','7426962039','Dirección467','','Barrio12','Ciudad41','Estado21','613329',25,'F',_binary '','1975-08-23'),('679109','Nombre417','correo157@email.com','7580304305','Dirección196','','Barrio19','Ciudad16','Estado22','286683',36,'F',_binary '\0','1994-09-10'),('692926','Nombre28','correo163@email.com','7761263794','Dirección182','','Barrio35','Ciudad49','Estado41','172306',55,'M',_binary '\0','1974-12-28'),('696031','Nombre776','correo897@email.com','7241051701','Dirección91','','Barrio49','Ciudad32','Estado16','595194',45,'M',_binary '\0','1990-11-05'),('701192','Nombre110','correo546@email.com','7463969767','Dirección381','','Barrio34','Ciudad15','Estado25','535742',55,'F',_binary '','1995-06-05'),('704741','Nombre243','correo201@email.com','7348834551','Dirección778','','Barrio3','Ciudad48','Estado34','491418',71,'M',_binary '','1997-12-20'),('705923','Nombre717','correo570@email.com','7727498912','Dirección775','','Barrio39','Ciudad29','Estado32','378932',32,'M',_binary '\0','1984-12-29'),('717510','Nombre858','correo233@email.com','7633438421','Dirección262','','Barrio26','Ciudad44','Estado42','514604',43,'M',_binary '\0','1977-03-06'),('720610','Nombre447','correo170@email.com','7559329871','Dirección39','','Barrio33','Ciudad10','Estado2','589421',26,'M',_binary '\0','1990-10-07'),('731378','Nombre371','correo752@email.com','7684574859','Dirección989','','Barrio49','Ciudad1','Estado5','443521',28,'F',_binary '\0','1974-10-20'),('737910','Nombre487','correo309@email.com','7178527561','Dirección506','','Barrio13','Ciudad42','Estado19','408108',24,'F',_binary '','1989-09-03'),('759535','Nombre81','correo209@email.com','7824328796','Dirección394','','Barrio27','Ciudad29','Estado16','745631',31,'F',_binary '\0','1997-10-19'),('760370','Nombre655','correo77@email.com','7478289346','Dirección869','','Barrio4','Ciudad40','Estado41','590638',86,'F',_binary '\0','1981-09-01'),('761996','Nombre161','correo600@email.com','7565141877','Dirección783','','Barrio18','Ciudad24','Estado16','164519',95,'F',_binary '','1998-03-24'),('788547','Nombre576','correo588@email.com','7290015030','Dirección290','','Barrio41','Ciudad11','Estado35','741594',18,'M',_binary '','2004-02-08'),('813303','Nombre430','correo772@email.com','7616683812','Dirección551','','Barrio1','Ciudad26','Estado26','65008',81,'M',_binary '','2003-07-26'),('822640','Nombre141','correo296@email.com','7154988257','Dirección414','','Barrio44','Ciudad10','Estado18','208095',21,'M',_binary '\0','1981-06-20'),('832287','Nombre848','correo800@email.com','7509978628','Dirección877','','Barrio1','Ciudad23','Estado15','95616',68,'M',_binary '','1993-11-14'),('838680','Nombre179','correo435@email.com','7676179577','Dirección893','','Barrio27','Ciudad2','Estado31','12220',31,'M',_binary '\0','1996-08-06'),('855195','Nombre966','correo315@email.com','7710992082','Dirección447','','Barrio9','Ciudad32','Estado33','370788',20,'M',_binary '','2003-02-28'),('860408','Nombre91','correo923@email.com','7410095157','Dirección950','','Barrio36','Ciudad37','Estado29','652651',87,'F',_binary '','1981-07-07'),('862221','Nombre280','correo862@email.com','7523141368','Dirección763','','Barrio20','Ciudad37','Estado25','270429',99,'M',_binary '\0','1998-10-15'),('878323','Nombre403','correo422@email.com','7910577076','Dirección236','','Barrio24','Ciudad35','Estado3','178538',85,'F',_binary '','1976-05-12'),('879114','Nombre515','correo978@email.com','7413369963','Dirección804','','Barrio48','Ciudad24','Estado23','818056',28,'M',_binary '\0','1985-11-01'),('885611','Nombre241','correo588@email.com','7297888916','Dirección332','','Barrio0','Ciudad1','Estado4','377748',84,'M',_binary '\0','1970-11-12'),('889875','Nombre807','correo404@email.com','7639608751','Dirección784','','Barrio6','Ciudad13','Estado48','43663',45,'F',_binary '','2003-05-31'),('895780','Nombre832','correo509@email.com','7145695565','Dirección724','','Barrio23','Ciudad9','Estado26','49254',76,'F',_binary '','2004-09-14'),('898251','Nombre734','correo9@email.com','7861859696','Dirección203','','Barrio23','Ciudad38','Estado21','777474',18,'F',_binary '\0','1976-11-02'),('899852','Nombre537','correo22@email.com','7551057644','Dirección437','','Barrio34','Ciudad4','Estado22','842808',46,'M',_binary '\0','1978-05-15'),('908394','Nombre368','correo146@email.com','7666066307','Dirección704','','Barrio31','Ciudad3','Estado20','807665',37,'F',_binary '','1980-04-23'),('931311','Nombre541','correo936@email.com','7151930071','Dirección479','','Barrio11','Ciudad33','Estado35','489835',65,'F',_binary '','1975-12-23'),('932273','Nombre929','correo873@email.com','7621677828','Dirección277','','Barrio32','Ciudad20','Estado3','148938',67,'M',_binary '','1995-06-11'),('934917','Nombre485','correo642@email.com','7783363928','Dirección867','','Barrio2','Ciudad34','Estado15','373797',32,'M',_binary '','1999-09-12'),('936896','Nombre6','correo243@email.com','7279634209','Dirección266','','Barrio36','Ciudad43','Estado5','860820',56,'F',_binary '','1988-05-16'),('945232','Nombre280','correo587@email.com','7185299316','Dirección711','','Barrio13','Ciudad11','Estado15','789719',55,'M',_binary '','1993-08-28'),('946564','Nombre248','correo420@email.com','7420366420','Dirección519','','Barrio26','Ciudad4','Estado40','764848',83,'F',_binary '','1990-08-31'),('974820','Nombre623','correo202@email.com','7228519834','Dirección105','','Barrio4','Ciudad8','Estado29','412432',58,'F',_binary '','1984-01-28'),('982838','Nombre836','correo237@email.com','7711121195','Dirección682','','Barrio18','Ciudad41','Estado2','677402',68,'M',_binary '\0','1976-05-03'),('990615','Nombre517','correo620@email.com','7593260765','Dirección879','','Barrio37','Ciudad6','Estado18','447395',47,'F',_binary '\0','1996-10-29'),('997071','Nombre99','correo509@email.com','7323734443','Dirección713','','Barrio41','Ciudad48','Estado20','96646',44,'F',_binary '\0','1970-11-19');
/*!40000 ALTER TABLE `tbclientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-07 17:12:41
