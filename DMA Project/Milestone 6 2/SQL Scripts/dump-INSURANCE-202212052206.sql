-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (arm64)
--
-- Host: localhost    Database: INSURANCE
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `bill_id` int NOT NULL,
  `date_of_admission` varchar(300) DEFAULT NULL,
  `date_of_discharge` varchar(300) DEFAULT NULL,
  `bill_amt` varchar(300) DEFAULT NULL,
  `injury_code` int DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `injury_code_idx` (`injury_code`),
  CONSTRAINT `injury_code` FOREIGN KEY (`injury_code`) REFERENCES `injury` (`infection_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'5/8/2023','6/2/2023','61340',200),(2,'10/21/2022','11/9/2022','76638',113),(3,'5/16/2023','6/9/2023','68065',145),(4,'4/29/2023','5/17/2023','44901',167),(5,'5/15/2023','5/21/2023','24172',195),(6,'11/17/2022','12/5/2022','67086',31),(7,'11/15/2022','12/7/2022','50661',182),(8,'11/20/2022','12/7/2022','92074',114),(9,'8/7/2022','8/12/2022','52317',52),(10,'11/1/2022','11/6/2022','13678',41),(11,'8/9/2022','8/16/2022','27851',199),(12,'1/28/2023','2/12/2023','38438',161),(13,'2/10/2023','2/20/2023','50373',67),(14,'5/16/2023','6/5/2023','22377',133),(15,'11/12/2022','11/21/2022','46767',183),(16,'5/5/2023','5/24/2023','97683',100),(17,'11/27/2022','12/2/2022','9441',35),(18,'3/13/2023','3/25/2023','57260',164),(19,'2/25/2023','3/21/2023','72711',90),(20,'7/21/2022','8/13/2022','89279',173),(21,'7/14/2022','8/6/2022','86744',105),(22,'11/22/2022','12/7/2022','15395',91),(23,'9/12/2022','9/20/2022','40760',136),(24,'8/11/2022','8/19/2022','79829',19),(25,'10/16/2022','10/25/2022','4713',175),(26,'6/24/2023','6/29/2023','47676',54),(27,'10/3/2022','10/5/2022','55688',118),(28,'11/9/2022','11/23/2022','45342',123),(29,'5/9/2023','6/1/2023','96455',184),(30,'10/24/2022','11/10/2022','42569',2),(31,'3/16/2023','4/7/2023','63334',141),(32,'8/22/2022','9/1/2022','11346',98),(33,'9/4/2022','9/13/2022','96498',86),(34,'11/29/2022','12/11/2022','18419',53),(35,'3/13/2023','3/22/2023','82800',43),(36,'4/5/2023','4/9/2023','74511',57),(37,'6/10/2023','6/18/2023','92240',13),(38,'1/29/2023','2/1/2023','56877',33),(39,'10/25/2022','11/17/2022','31386',34),(40,'8/29/2022','9/6/2022','96126',68),(41,'12/30/2022','1/23/2023','97157',75),(42,'3/13/2023','3/27/2023','71906',76),(43,'9/7/2022','10/1/2022','59143',51),(44,'1/19/2023','1/30/2023','82893',89),(45,'4/1/2023','4/4/2023','69776',22),(46,'5/11/2023','5/20/2023','56524',112),(47,'11/9/2022','11/27/2022','18048',101),(48,'12/23/2022','12/25/2022','33126',135),(49,'8/11/2022','9/2/2022','66458',160),(50,'5/12/2023','5/24/2023','45382',170),(51,'10/3/2022','10/22/2022','12314',48),(52,'9/14/2022','9/20/2022','96573',187),(53,'3/23/2023','3/25/2023','40002',59),(54,'5/25/2023','5/30/2023','36841',55),(55,'7/9/2022','7/12/2022','12744',69),(56,'3/28/2023','4/1/2023','30010',4),(57,'6/23/2023','6/27/2023','95469',157),(58,'10/29/2022','10/31/2022','85184',190),(59,'3/21/2023','3/29/2023','47848',3),(60,'7/14/2022','7/15/2022','30915',32),(61,'8/5/2022','8/16/2022','92173',39),(62,'6/13/2023','6/27/2023','80463',165),(63,'12/3/2022','12/26/2022','71722',44),(64,'9/5/2022','9/12/2022','88700',159),(65,'11/12/2022','11/14/2022','85698',171),(66,'11/5/2022','11/15/2022','53118',126),(67,'10/5/2022','10/13/2022','16145',179),(68,'10/26/2022','11/16/2022','11428',9),(69,'12/11/2022','12/24/2022','9614',60),(70,'9/22/2022','9/26/2022','87138',47),(71,'7/15/2022','7/28/2022','69673',130),(72,'1/18/2023','1/26/2023','82105',166),(73,'7/22/2022','8/9/2022','33229',108),(74,'3/8/2023','3/11/2023','21034',152),(75,'7/25/2022','8/4/2022','80531',156),(76,'12/17/2022','12/18/2022','12320',117),(77,'10/16/2022','11/5/2022','68724',12),(78,'2/7/2023','2/12/2023','44930',78),(79,'10/26/2022','11/18/2022','86326',132),(80,'10/30/2022','11/19/2022','23786',72),(81,'9/27/2022','10/3/2022','46999',163),(82,'2/14/2023','3/4/2023','50908',95),(83,'10/2/2022','10/15/2022','59096',28),(84,'3/25/2023','4/14/2023','46453',29),(85,'6/7/2023','6/27/2023','72591',46),(86,'4/20/2023','5/7/2023','14213',30),(87,'5/2/2023','5/12/2023','73729',138),(88,'2/6/2023','2/18/2023','99329',150),(89,'6/11/2023','6/19/2023','59151',5),(90,'1/26/2023','2/13/2023','71724',153),(91,'6/5/2023','6/23/2023','97940',21),(92,'10/30/2022','11/6/2022','63647',84),(93,'1/8/2023','1/25/2023','76544',127),(94,'12/1/2022','12/12/2022','89486',18),(95,'3/3/2023','3/10/2023','82632',162),(96,'5/5/2023','5/12/2023','15274',94),(97,'1/25/2023','2/3/2023','66519',169),(98,'6/25/2023','7/17/2023','69942',8),(99,'8/25/2022','9/4/2022','54364',139),(100,'1/31/2023','2/14/2023','33441',65),(101,'10/17/2022','10/24/2022','62230',143),(102,'8/28/2022','9/18/2022','59482',115),(103,'8/14/2022','8/24/2022','10525',134),(104,'5/31/2023','6/14/2023','83257',81),(105,'10/27/2022','11/8/2022','30967',193),(106,'2/1/2023','2/25/2023','68661',74),(107,'12/11/2022','12/27/2022','86825',192),(108,'2/16/2023','2/24/2023','74343',131),(109,'11/17/2022','11/18/2022','85394',14),(110,'6/4/2023','6/6/2023','71771',70),(111,'4/28/2023','5/19/2023','19783',151),(112,'6/28/2023','7/8/2023','37831',15),(113,'5/20/2023','5/21/2023','43231',188),(114,'6/27/2023','7/6/2023','25667',149),(115,'4/6/2023','4/19/2023','60732',77),(116,'5/24/2023','5/29/2023','77247',120),(117,'4/29/2023','5/20/2023','81913',106),(118,'6/15/2023','6/25/2023','44541',37),(119,'5/27/2023','6/21/2023','52307',50),(120,'12/19/2022','12/31/2022','3553',58),(121,'2/14/2023','3/6/2023','87912',155),(122,'6/29/2023','7/6/2023','23100',178),(123,'2/14/2023','3/2/2023','43094',110),(124,'12/27/2022','1/5/2023','41955',144),(125,'9/4/2022','9/11/2022','54136',146),(126,'9/19/2022','9/28/2022','78450',66),(127,'5/2/2023','5/8/2023','33266',154),(128,'3/15/2023','3/31/2023','56009',73),(129,'10/19/2022','11/13/2022','58482',45),(130,'6/13/2023','6/16/2023','8161',174),(131,'10/15/2022','10/25/2022','81206',116),(132,'12/12/2022','12/25/2022','15853',137),(133,'10/23/2022','11/17/2022','49002',93),(134,'6/5/2023','6/19/2023','29889',125),(135,'4/19/2023','5/9/2023','73674',63),(136,'5/25/2023','6/6/2023','19701',25),(137,'3/14/2023','3/18/2023','24503',189),(138,'11/20/2022','12/8/2022','77583',42),(139,'4/2/2023','4/22/2023','45260',99),(140,'12/12/2022','12/15/2022','86541',17),(141,'11/18/2022','11/28/2022','74145',142),(142,'8/6/2022','8/21/2022','96284',6),(143,'12/6/2022','12/26/2022','73832',88),(144,'4/26/2023','5/15/2023','77110',122),(145,'9/27/2022','9/29/2022','77978',26),(146,'2/15/2023','2/20/2023','72645',96),(147,'2/24/2023','3/18/2023','8288',16),(148,'8/25/2022','9/1/2022','49746',186),(149,'5/16/2023','6/5/2023','91803',128),(150,'4/19/2023','5/1/2023','66914',85),(151,'6/3/2023','6/20/2023','22013',124),(152,'8/20/2022','8/30/2022','57957',158),(153,'6/16/2023','7/10/2023','39189',92),(154,'2/17/2023','2/26/2023','35790',62),(155,'3/24/2023','4/16/2023','3149',79),(156,'6/17/2023','6/30/2023','71357',198),(157,'2/26/2023','3/2/2023','31887',185),(158,'3/8/2023','3/28/2023','16245',27),(159,'7/3/2022','7/10/2022','16739',80),(160,'10/1/2022','10/12/2022','87158',194),(161,'9/24/2022','10/4/2022','99501',20),(162,'6/12/2023','6/26/2023','67096',83),(163,'6/16/2023','7/2/2023','39578',7),(164,'2/17/2023','3/11/2023','10561',61),(165,'11/3/2022','11/17/2022','50866',119),(166,'11/12/2022','12/4/2022','55410',107),(167,'10/1/2022','10/20/2022','93279',176),(168,'11/27/2022','11/29/2022','80324',111),(169,'11/11/2022','11/13/2022','13843',147),(170,'5/2/2023','5/7/2023','26234',82),(171,'4/8/2023','4/24/2023','67061',181),(172,'10/24/2022','10/27/2022','24033',64),(173,'9/15/2022','9/21/2022','52881',87),(174,'8/5/2022','8/21/2022','78528',191),(175,'11/26/2022','11/28/2022','75496',148),(176,'7/13/2022','7/23/2022','18708',24),(177,'11/3/2022','11/13/2022','69534',11),(178,'6/22/2023','7/13/2023','39482',109),(179,'2/11/2023','2/25/2023','38449',49),(180,'10/13/2022','10/16/2022','24240',197),(181,'5/3/2023','5/18/2023','43469',56),(182,'4/24/2023','5/14/2023','29461',10),(183,'10/31/2022','11/21/2022','75726',104),(184,'4/14/2023','5/4/2023','80434',40),(185,'11/29/2022','12/6/2022','76697',71),(186,'1/7/2023','1/31/2023','81772',38),(187,'10/27/2022','11/13/2022','88356',15),(188,'12/20/2022','1/10/2023','49831',145),(189,'2/8/2023','3/3/2023','11022',130),(190,'2/14/2023','2/24/2023','92737',12),(191,'7/27/2022','8/13/2022','24721',165),(192,'12/22/2022','12/28/2022','90169',187),(193,'8/17/2022','8/24/2022','38597',29),(194,'5/30/2023','6/13/2023','17843',131),(195,'3/4/2023','3/5/2023','29746',16),(196,'12/24/2022','1/16/2023','31530',30),(197,'11/4/2022','11/8/2022','37301',94),(198,'12/15/2022','12/19/2022','82012',96),(199,'6/11/2023','7/2/2023','73254',129),(200,'10/31/2022','11/20/2022','55395',159);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_details`
--

DROP TABLE IF EXISTS `bill_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_details` (
  `bill_id` int DEFAULT NULL,
  `issued_date` varchar(300) DEFAULT NULL,
  `issued_amt` varchar(300) DEFAULT NULL,
  KEY `bill_id_idx` (`bill_id`),
  CONSTRAINT `bill_id` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
INSERT INTO `bill_details` VALUES (72,'6/4/2023','43466'),(115,'2/19/2023','15230'),(109,'12/23/2022','20381'),(31,'8/13/2022','15832'),(181,'8/10/2022','45170'),(67,'8/21/2022','36270'),(10,'3/23/2023','16337'),(143,'9/5/2022','16464'),(111,'5/7/2023','23216'),(133,'11/10/2022','11896'),(21,'9/23/2022','34390'),(64,'12/2/2022','6258'),(47,'9/25/2022','36555'),(113,'9/25/2022','23719'),(148,'6/5/2023','6964'),(51,'2/15/2023','1437'),(2,'3/24/2023','33831'),(154,'11/3/2022','7094'),(26,'12/13/2022','41851'),(5,'4/27/2023','24938'),(172,'6/23/2023','9965'),(92,'3/14/2023','13950'),(73,'8/14/2022','41565'),(168,'8/31/2022','17300'),(114,'12/4/2022','13187'),(50,'1/24/2023','35880'),(44,'4/12/2023','32848'),(142,'12/11/2022','18803'),(153,'12/27/2022','36551'),(138,'10/20/2022','3209'),(107,'3/26/2023','40936'),(95,'10/14/2022','18804'),(117,'12/28/2022','25749'),(184,'6/9/2023','28313'),(170,'6/2/2023','28860'),(185,'6/24/2023','15586'),(71,'12/23/2022','32410'),(149,'5/22/2023','6816'),(27,'4/26/2023','27868'),(93,'6/14/2023','45570'),(33,'3/8/2023','11713'),(11,'10/15/2022','4178'),(126,'5/23/2023','24532'),(190,'2/26/2023','18766'),(137,'7/17/2022','27907'),(104,'3/15/2023','16918'),(127,'8/11/2022','24387'),(43,'9/7/2022','16641'),(144,'9/17/2022','22236'),(103,'3/26/2023','26497'),(186,'2/8/2023','14482'),(147,'8/8/2022','35701'),(162,'2/3/2023','19370'),(34,'6/23/2023','6657'),(178,'12/2/2022','18461'),(55,'10/16/2022','14095'),(99,'3/25/2023','9771'),(75,'5/1/2023','28686'),(135,'9/13/2022','15770'),(177,'6/10/2023','12774'),(134,'5/30/2023','12082'),(86,'10/21/2022','14665'),(122,'6/27/2023','22940'),(118,'3/8/2023','42289'),(91,'9/16/2022','12962'),(152,'1/12/2023','47953'),(60,'3/19/2023','30431'),(164,'8/5/2022','46739'),(124,'4/23/2023','7780'),(84,'10/9/2022','41655'),(6,'6/15/2023','6768'),(25,'5/14/2023','49487'),(48,'2/11/2023','27645'),(158,'7/21/2022','17712'),(180,'9/15/2022','2318'),(123,'12/17/2022','21288'),(171,'5/5/2023','13829'),(76,'5/25/2023','48261'),(194,'5/20/2023','34301'),(83,'11/4/2022','19472'),(37,'7/4/2022','3949'),(197,'7/31/2022','37462'),(108,'2/28/2023','14296'),(20,'9/6/2022','37342'),(173,'1/30/2023','8423'),(166,'9/22/2022','32817'),(81,'11/13/2022','34875'),(12,'11/23/2022','23501'),(98,'5/16/2023','37737'),(198,'7/1/2022','3202'),(112,'7/14/2022','23170'),(87,'4/28/2023','28994'),(78,'9/2/2022','31593'),(130,'5/10/2023','9935'),(63,'9/22/2022','2888'),(29,'1/11/2023','47517'),(35,'4/18/2023','48887'),(40,'10/5/2022','48364'),(52,'9/11/2022','41558'),(15,'9/26/2022','44559'),(1,'12/31/2022','17525'),(14,'10/27/2022','38760'),(38,'7/24/2022','47752'),(157,'8/27/2022','10003'),(106,'4/12/2023','32665'),(156,'5/22/2023','30545'),(192,'4/15/2023','39371'),(13,'9/13/2022','21029'),(32,'3/10/2023','14783'),(77,'3/6/2023','30744'),(42,'10/21/2022','39891'),(19,'4/20/2023','35102'),(100,'11/18/2022','28702'),(128,'4/26/2023','19070'),(141,'2/18/2023','48581'),(23,'11/9/2022','9698'),(90,'5/14/2023','3021'),(70,'8/26/2022','2504'),(61,'9/16/2022','22315'),(79,'10/17/2022','31873'),(191,'12/20/2022','24256'),(105,'8/17/2022','46060'),(3,'6/18/2023','22896'),(89,'1/21/2023','14870'),(196,'10/14/2022','38844'),(132,'6/3/2023','32090'),(199,'3/5/2023','24714'),(68,'10/9/2022','9063'),(145,'11/16/2022','8256'),(45,'4/25/2023','46677'),(131,'5/23/2023','24711'),(187,'4/14/2023','19368'),(160,'4/28/2023','42276'),(59,'4/27/2023','36946'),(17,'10/14/2022','9845'),(41,'8/25/2022','5562'),(175,'9/20/2022','37258'),(110,'4/28/2023','37324'),(66,'11/13/2022','9584'),(58,'2/12/2023','45370'),(125,'8/12/2022','12252'),(146,'4/24/2023','3084'),(22,'1/29/2023','48287'),(200,'4/8/2023','33312'),(80,'6/24/2023','34517'),(120,'2/12/2023','39420'),(165,'7/14/2022','10501'),(49,'4/18/2023','47657'),(28,'8/26/2022','19093'),(88,'5/18/2023','36688'),(195,'11/11/2022','26157'),(16,'8/19/2022','47925'),(85,'1/22/2023','17033'),(129,'8/15/2022','15923'),(18,'11/25/2022','30891'),(193,'1/20/2023','35199'),(139,'8/6/2022','30445'),(179,'12/5/2022','12984'),(159,'2/4/2023','10517'),(24,'11/8/2022','32597'),(82,'9/27/2022','16436'),(155,'5/11/2023','26068'),(46,'12/16/2022','41053'),(8,'7/10/2022','19746'),(189,'6/23/2023','23430'),(182,'2/21/2023','6218'),(56,'10/7/2022','4417'),(140,'3/17/2023','6786'),(74,'9/23/2022','3541'),(39,'12/31/2022','3447'),(167,'8/4/2022','36057'),(97,'5/23/2023','8269'),(188,'10/1/2022','28142'),(57,'3/14/2023','30211'),(53,'4/18/2023','44123'),(102,'1/1/2023','7353'),(65,'8/11/2022','34454'),(9,'2/1/2023','46738'),(96,'5/13/2023','35260'),(30,'6/27/2023','46918'),(62,'12/24/2022','3066'),(116,'10/29/2022','43941'),(163,'5/6/2023','3766'),(169,'10/1/2022','49356'),(36,'5/9/2023','23982'),(80,'4/8/2023','5121'),(187,'2/12/2023','19218'),(64,'5/28/2023','12316'),(131,'5/25/2023','22303'),(54,'11/14/2022','11955'),(149,'1/22/2023','9066'),(190,'4/11/2023','36270'),(107,'9/21/2022','10230'),(57,'2/9/2023','2073'),(51,'6/1/2023','16901'),(157,'3/2/2023','30536'),(114,'6/7/2023','10662'),(91,'3/11/2023','41435'),(29,'11/12/2022','26932'),(46,'9/11/2022','23119');
/*!40000 ALTER TABLE `bill_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claim_details`
--

DROP TABLE IF EXISTS `claim_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claim_details` (
  `claim_id` int NOT NULL,
  `status` varchar(300) DEFAULT NULL,
  `claim_bill_id` int NOT NULL,
  PRIMARY KEY (`claim_id`),
  KEY `bill_id_idx` (`claim_bill_id`),
  CONSTRAINT `claim_bill_id` FOREIGN KEY (`claim_bill_id`) REFERENCES `bill` (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim_details`
--

LOCK TABLES `claim_details` WRITE;
/*!40000 ALTER TABLE `claim_details` DISABLE KEYS */;
INSERT INTO `claim_details` VALUES (1,'TRUE',37),(2,'TRUE',81),(3,'TRUE',149),(4,'TRUE',193),(5,'TRUE',118),(6,'TRUE',129),(7,'TRUE',42),(8,'TRUE',167),(9,'TRUE',119),(10,'TRUE',139),(11,'TRUE',94),(12,'FALSE',67),(13,'FALSE',169),(14,'TRUE',88),(15,'FALSE',9),(16,'TRUE',191),(17,'TRUE',99),(18,'TRUE',46),(19,'FALSE',80),(20,'TRUE',137),(21,'TRUE',162),(22,'FALSE',132),(23,'TRUE',143),(24,'TRUE',130),(25,'TRUE',89),(26,'TRUE',199),(27,'FALSE',184),(28,'TRUE',182),(29,'TRUE',144),(30,'FALSE',83),(31,'TRUE',78),(32,'FALSE',179),(33,'FALSE',165),(34,'TRUE',111),(35,'TRUE',125),(36,'TRUE',43),(37,'TRUE',142),(38,'TRUE',22),(39,'TRUE',4),(40,'TRUE',14),(41,'TRUE',200),(42,'TRUE',154),(43,'TRUE',65),(44,'TRUE',51),(45,'TRUE',121),(46,'FALSE',104),(47,'TRUE',70),(48,'FALSE',122),(49,'FALSE',163),(50,'TRUE',188),(51,'TRUE',197),(52,'TRUE',2),(53,'TRUE',16),(54,'TRUE',41),(55,'FALSE',113),(56,'TRUE',134),(57,'TRUE',164),(58,'TRUE',106),(59,'TRUE',26),(60,'FALSE',59),(61,'TRUE',95),(62,'TRUE',87),(63,'TRUE',194),(64,'TRUE',66),(65,'TRUE',140),(66,'TRUE',17),(67,'TRUE',156),(68,'FALSE',82),(69,'TRUE',171),(70,'TRUE',29),(71,'FALSE',158),(72,'TRUE',107),(73,'TRUE',160),(74,'FALSE',74),(75,'TRUE',183),(76,'FALSE',53),(77,'TRUE',181),(78,'TRUE',31),(79,'TRUE',103),(80,'TRUE',98),(81,'TRUE',8),(82,'TRUE',123),(83,'FALSE',166),(84,'FALSE',138),(85,'TRUE',38),(86,'TRUE',85),(87,'TRUE',25),(88,'TRUE',61),(89,'FALSE',34),(90,'TRUE',44),(91,'FALSE',128),(92,'TRUE',146),(93,'TRUE',49),(94,'TRUE',60),(95,'TRUE',13),(96,'TRUE',195),(97,'TRUE',79),(98,'TRUE',187),(99,'FALSE',73),(100,'TRUE',148),(101,'TRUE',147),(102,'TRUE',185),(103,'TRUE',114),(104,'TRUE',124),(105,'TRUE',1),(106,'TRUE',86),(107,'TRUE',63),(108,'TRUE',54),(109,'FALSE',48),(110,'FALSE',28),(111,'FALSE',155),(112,'TRUE',178),(113,'TRUE',21),(114,'FALSE',11),(115,'TRUE',47),(116,'TRUE',97),(117,'TRUE',115),(118,'FALSE',64),(119,'TRUE',145),(120,'TRUE',198),(121,'TRUE',84),(122,'TRUE',190),(123,'TRUE',96),(124,'TRUE',36),(125,'TRUE',141),(126,'TRUE',52),(127,'TRUE',176),(128,'TRUE',7),(129,'FALSE',40),(130,'TRUE',108),(131,'FALSE',168),(132,'TRUE',71),(133,'TRUE',127),(134,'FALSE',161),(135,'TRUE',50),(136,'FALSE',19),(137,'FALSE',39),(138,'TRUE',153),(139,'TRUE',56),(140,'TRUE',192),(141,'TRUE',173),(142,'TRUE',45),(143,'FALSE',90),(144,'TRUE',157),(145,'TRUE',5),(146,'TRUE',33),(147,'TRUE',112),(148,'TRUE',131),(149,'TRUE',110),(150,'TRUE',100),(151,'TRUE',189),(152,'TRUE',32),(153,'TRUE',92),(154,'TRUE',68),(155,'TRUE',69),(156,'TRUE',151),(157,'TRUE',109),(158,'TRUE',62),(159,'TRUE',57),(160,'TRUE',93),(161,'TRUE',23),(162,'TRUE',150),(163,'FALSE',15),(164,'TRUE',152),(165,'TRUE',102),(166,'TRUE',101),(167,'TRUE',55),(168,'TRUE',76),(169,'TRUE',10),(170,'TRUE',35),(171,'FALSE',159),(172,'FALSE',18),(173,'FALSE',3),(174,'FALSE',174),(175,'FALSE',72),(176,'TRUE',91),(177,'TRUE',24),(178,'FALSE',58),(179,'TRUE',180),(180,'FALSE',120),(181,'FALSE',117),(182,'TRUE',133),(183,'TRUE',170),(184,'FALSE',12),(185,'TRUE',174),(186,'TRUE',37),(187,'TRUE',102),(188,'TRUE',172),(189,'TRUE',39),(190,'TRUE',86),(191,'TRUE',60),(192,'FALSE',130),(193,'FALSE',88),(194,'FALSE',141),(195,'FALSE',10),(196,'TRUE',198),(197,'FALSE',188),(198,'FALSE',55),(199,'TRUE',68),(200,'TRUE',104);
/*!40000 ALTER TABLE `claim_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conducts`
--

DROP TABLE IF EXISTS `conducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conducts` (
  `hospital_id` int DEFAULT NULL,
  `test_code` int DEFAULT NULL,
  KEY `hospital_id_idx` (`hospital_id`),
  KEY `test_code_idx` (`test_code`),
  CONSTRAINT `hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hospital_id`),
  CONSTRAINT `test_code` FOREIGN KEY (`test_code`) REFERENCES `test` (`Test_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conducts`
--

LOCK TABLES `conducts` WRITE;
/*!40000 ALTER TABLE `conducts` DISABLE KEYS */;
INSERT INTO `conducts` VALUES (41,54),(56,129),(10,124),(8,137),(1,103),(47,91),(37,136),(42,194),(21,148),(61,184),(48,153),(27,95),(34,19),(60,82),(39,112),(45,197),(32,87),(17,169),(5,71),(6,67),(9,113),(51,111),(14,66),(44,21),(58,27),(33,147),(13,5),(43,3),(53,119),(49,63),(11,145),(19,51),(29,61),(2,22),(35,107),(38,15),(50,64),(16,75),(4,144),(31,92),(57,161),(46,97),(28,25),(26,140),(12,191),(36,138),(22,60),(20,4),(25,192),(30,69),(18,28),(15,55),(59,195),(3,85),(40,187),(55,6),(52,7),(24,172),(7,106),(54,96),(23,152),(15,49),(52,32),(9,130),(10,93),(39,149),(11,2),(34,178),(57,173),(16,193),(35,100),(22,89),(5,84),(25,186),(37,41),(54,156),(18,13),(26,151),(60,8),(47,31),(55,14),(1,154),(40,157),(56,34),(28,10),(32,135),(42,170),(36,72),(19,56),(24,168),(51,115),(4,159),(23,90),(20,37),(50,165),(14,177),(53,20),(59,189),(41,70),(29,121),(45,166),(44,181),(61,50),(7,40),(33,26),(21,48),(6,110),(30,158),(3,128),(2,43),(43,132),(46,171),(13,150),(49,105),(8,185),(38,76),(58,57),(12,139),(17,17),(48,163),(27,196),(31,88),(17,53),(15,80),(40,190),(8,42),(54,141),(49,79),(12,176),(33,180),(35,74),(47,199),(10,122),(16,86),(21,104),(14,188),(60,131),(56,127),(9,123),(3,118),(43,58),(41,44),(46,133),(4,23),(44,142),(11,62),(34,59),(29,73),(18,35),(55,33),(6,81),(58,126),(31,134),(22,109),(30,9),(48,39),(59,162),(23,183),(26,30),(53,116),(27,78),(25,143),(19,12),(61,46),(38,120),(2,77),(42,83),(45,102),(13,98),(39,179),(51,101),(20,175),(50,45),(24,38),(5,16),(36,200),(52,24),(57,29),(28,99),(32,36),(37,1),(1,47),(7,52),(55,149),(24,117),(39,120),(59,110),(45,166),(44,122),(34,85),(18,6),(20,50),(5,63),(40,89),(10,193),(33,103),(35,175),(12,2),(22,90),(60,97);
/*!40000 ALTER TABLE `conducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final_information`
--

DROP TABLE IF EXISTS `final_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_information` (
  `id_info` int NOT NULL,
  `zip` int NOT NULL,
  `city` varchar(18) NOT NULL,
  `Person_ID` int NOT NULL,
  `gender` varchar(6) NOT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_information`
--

LOCK TABLES `final_information` WRITE;
/*!40000 ALTER TABLE `final_information` DISABLE KEYS */;
INSERT INTO `final_information` VALUES (1,1810,'Andover',170,'male'),(2,2110,'Boston',129,'male'),(3,2482,'Wellesley',158,'male'),(4,2725,'Somerset',160,'male'),(5,2025,'Cohasset',166,'male'),(6,1605,'Worcester',21,'male'),(7,1949,'Middleton',57,'female'),(8,1095,'Wilbraham',148,'male'),(9,1266,'West Stockbridge',184,'female'),(10,1032,'Goshen',196,'female'),(11,2720,'Fall River',194,'male'),(12,1370,'Shelburne Falls',185,'female'),(13,1523,'Lancaster',172,'male'),(14,1904,'Lynn',133,'male'),(15,2030,'Dover',104,'male'),(16,1020,'Chicopee',177,'male'),(17,2141,'Cambridge',48,'male'),(18,1351,'Montague',4,'female'),(19,1506,'Brookfield',7,'male'),(20,2048,'Mansfield',54,'male'),(21,1929,'Essex',27,'male'),(22,2769,'Rehoboth',156,'male'),(23,1913,'Amesbury',179,'male'),(24,1031,'Gilbertville',99,'male'),(25,1826,'Dracut',103,'male'),(26,1830,'Haverhill',65,'male'),(27,2149,'Everett',98,'female'),(28,2360,'Plymouth',35,'female'),(29,1032,'Goshen',59,'female'),(30,2664,'South Yarmouth',109,'female'),(31,2215,'Boston',24,'male'),(32,1826,'Dracut',176,'male'),(33,1119,'Springfield',145,'male'),(34,2659,'South Chatham',32,'male'),(35,2460,'Newtonville',114,'male'),(36,1026,'Cummington',116,'female'),(37,2637,'Cummaquid',157,'male'),(38,1085,'Westfield',175,'female'),(39,1521,'Holland',43,'male'),(40,1226,'Dalton',85,'female'),(41,2071,'South Walpole',86,'male'),(42,1566,'Sturbridge',198,'male'),(43,1094,'Wheelwright',165,'female'),(44,1541,'Princeton',5,'male'),(45,2367,'Plympton',72,'male'),(46,1301,'Greenfield',1,'female'),(47,2190,'South Weymouth',33,'female'),(48,1346,'Heath',14,'male'),(49,2726,'Somerset',11,'male'),(50,2644,'Forestdale',10,'male'),(51,1775,'Stow',200,'female'),(52,1756,'Mendon',137,'male'),(53,2457,'Babson Park',195,'male'),(54,1003,'Amherst',31,'male'),(55,2703,'Attleboro',169,'female'),(56,1095,'Wilbraham',115,'female'),(57,1930,'Gloucester',6,'male'),(58,2660,'South Dennis',149,'male'),(59,1930,'Gloucester',62,'female'),(60,2562,'Sagamore Beach',163,'male'),(61,1752,'Marlborough',30,'male'),(62,1242,'Lenox Dale',73,'female'),(63,2642,'Eastham',96,'male'),(64,2364,'Kingston',68,'female'),(65,1826,'Dracut',186,'male'),(66,2367,'Plympton',110,'male'),(67,2554,'Nantucket',180,'male'),(68,1028,'East Longmeadow',178,'female'),(69,1096,'Williamsburg',146,'female'),(70,2163,'Boston',161,'male'),(71,2666,'Truro',2,'male'),(72,1229,'Glendale',67,'male'),(73,2637,'Cummaquid',100,'male'),(74,1339,'Charlemont',150,'male'),(75,2663,'South Wellfleet',126,'male'),(76,1518,'Fiskdale',39,'male'),(77,2760,'North Attleboro',119,'female'),(78,1440,'Gardner',90,'male'),(79,2740,'New Bedford',95,'male'),(80,2343,'Holbrook',151,'female'),(81,1106,'Longmeadow',61,'male'),(82,1084,'West Chesterfield',131,'female'),(83,1253,'Otis',97,'male'),(84,2657,'Provincetown',154,'male'),(85,1605,'Worcester',3,'male'),(86,2632,'Centerville',153,'male'),(87,2726,'Somerset',130,'male'),(88,2155,'Medford',70,'male'),(89,1230,'Great Barrington',117,'female'),(90,2535,'Chilmark',71,'female'),(91,1077,'Southwick',93,'male'),(92,1525,'Linwood',81,'male'),(93,2210,'Boston',45,'male'),(94,2322,'Avon',64,'female'),(95,2118,'Boston',87,'male'),(96,1719,'Boxborough',25,'male'),(97,1256,'Savoy',8,'male'),(98,2332,'Duxbury',182,'male'),(99,1103,'Springfield',79,'male'),(100,2184,'Braintree',44,'male'),(101,1355,'New Salem',121,'female'),(102,1585,'West Brookfield',173,'male'),(103,2367,'Plympton',63,'female'),(104,1092,'West Warren',199,'male'),(105,1879,'Tyngsboro',75,'female'),(106,2171,'Quincy',191,'female'),(107,2043,'Hingham',91,'male'),(108,1747,'Hopedale',138,'male'),(109,2189,'East Weymouth',135,'male'),(110,1430,'Ashburnham',38,'female'),(111,2032,'East Walpole',78,'male'),(112,1862,'North Billerica',167,'female'),(113,1810,'Andover',111,'male'),(114,2035,'Foxboro',74,'male'),(115,1144,'Springfield',40,'male'),(116,1097,'Woronoco',141,'male'),(117,1860,'Merrimac',77,'male'),(118,1801,'Woburn',174,'male'),(119,1529,'Millville',76,'male'),(120,2767,'Raynham',88,'female'),(121,1225,'Cheshire',124,'female'),(122,1772,'Southborough',106,'male'),(123,1337,'Bernardston',125,'female'),(124,2047,'Humarock',143,'male'),(125,1606,'Worcester',168,'male'),(126,1342,'Deerfield',19,'female'),(127,1503,'Berlin',164,'female'),(128,2779,'Berkley',56,'female'),(129,2664,'South Yarmouth',189,'male'),(130,1890,'Winchester',50,'male'),(131,1463,'Pepperell',127,'female'),(132,1259,'Southfield',55,'male'),(133,2746,'New Bedford',139,'male'),(134,2763,'Attleboro Falls',187,'male'),(135,1776,'Sudbury',113,'female'),(136,2445,'Brookline',37,'male'),(137,2542,'Buzzards Bay',42,'male'),(138,2537,'East Sandwich',46,'female'),(139,2720,'Fall River',41,'female'),(140,2019,'Bellingham',29,'male'),(141,2643,'East Orleans',120,'male'),(142,2467,'Chestnut Hill',162,'male'),(143,2379,'West Bridgewater',36,'male'),(144,1060,'Northampton',181,'male'),(145,1438,'East Templeton',105,'male'),(146,1376,'Turners Falls',26,'male'),(147,2703,'Attleboro',60,'male'),(148,1913,'Amesbury',89,'male'),(149,1886,'Westford',134,'male'),(150,1074,'South Barre',142,'female'),(151,1230,'Great Barrington',66,'female'),(152,2642,'Eastham',147,'male'),(153,1098,'Worthington',80,'male'),(154,1824,'Chelmsford',112,'male'),(155,2149,'Everett',28,'female'),(156,2131,'Roslindale',188,'male'),(157,1965,'Prides Crossing',13,'male'),(158,2382,'Whitman',53,'male'),(159,2176,'Melrose',128,'male'),(160,2464,'Newton Upper Falls',12,'male'),(161,1270,'Windsor',183,'male'),(162,2780,'Taunton',17,'female'),(163,2538,'East Wareham',107,'female'),(164,2738,'Marion',159,'female'),(165,1344,'Erving',83,'male'),(166,1605,'Worcester',52,'male'),(167,1464,'Shirley',108,'female'),(168,1937,'Hathorne',49,'male'),(169,2534,'Cataumet',69,'male'),(170,1062,'Florence',20,'male'),(171,2554,'Nantucket',140,'male'),(172,1757,'Milford',102,'male'),(173,2136,'Hyde Park',9,'male'),(174,1860,'Merrimac',155,'female'),(175,1005,'Barre',18,'male'),(176,1083,'Warren',190,'female'),(177,1033,'Granby',22,'male'),(178,2537,'East Sandwich',171,'female'),(179,1908,'Nahant',123,'male'),(180,2748,'South Dartmouth',58,'female'),(181,2657,'Provincetown',193,'male'),(182,2322,'Avon',118,'male'),(183,1129,'Springfield',136,'male'),(184,1570,'Webster',92,'male'),(185,2715,'Dighton',132,'male'),(186,1501,'Auburn',101,'female'),(187,2180,'Stoneham',84,'male'),(188,1451,'Harvard',144,'female'),(189,2563,'Sandwich',6,'female'),(190,1886,'Westford',188,'male'),(191,2152,'Winthrop',133,'male'),(192,2762,'Plainville',45,'female'),(193,2457,'Babson Park',175,'male'),(194,1469,'Townsend',153,'female'),(195,2155,'Medford',24,'female'),(196,2494,'Needham Heights',36,'male'),(197,2357,'North Easton',185,'male'),(198,2379,'West Bridgewater',74,'male'),(199,1721,'Ashland',41,'female'),(200,2542,'Buzzards Bay',32,'female');
/*!40000 ALTER TABLE `final_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_insurance`
--

DROP TABLE IF EXISTS `health_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health_insurance` (
  `insurance_type` varchar(300) NOT NULL,
  `benefits` varchar(300) DEFAULT NULL,
  `premium` varchar(300) DEFAULT NULL,
  `money_insured` varchar(300) DEFAULT NULL,
  `validity` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`insurance_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_insurance`
--

LOCK TABLES `health_insurance` WRITE;
/*!40000 ALTER TABLE `health_insurance` DISABLE KEYS */;
INSERT INTO `health_insurance` VALUES ('EPO','70%','100000','72931','1'),('HMO','80%','100000','87407','1'),('POS','90%','150000','74421','1'),('PPO','100%','200000','92254','1');
/*!40000 ALTER TABLE `health_insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `hospital_id` int NOT NULL,
  `hospital_name` varchar(56) NOT NULL,
  `h_address` varchar(45) NOT NULL,
  `isunderinsurance` varchar(5) NOT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'Anna Jaques Hospital','Newburyport, MA','FALSE'),(2,'Athol Hospital','Athol, MA','TRUE'),(3,'Baystate Franklin Medical Center','Greenfield, MA','TRUE'),(4,'Baystate Medical Center','Springfield, MA','TRUE'),(5,'Baystate Noble Hospital','Westfield, MA','TRUE'),(6,'Baystate Wing Hospital','Palmer, MA','FALSE'),(7,'Berkshire Medical Center','Pittsfield, MA','TRUE'),(8,'Beth Israel Deaconess Hospital - Milton','Milton, MA','TRUE'),(9,'Beth Israel Deaconess Hospital - Needham','Needham, MA','FALSE'),(10,'Beth Israel Deaconess Hospital - Plymouth','Plymouth, MA','TRUE'),(11,'Beth Israel Deaconess Medical Center','Boston, MA','TRUE'),(12,'Boston Children\'s Hospital','Boston, MA','FALSE'),(13,'Boston Medical Center','Boston, MA','TRUE'),(14,'Brigham and Women\'s Faulkner Hospital','Boston, MA','TRUE'),(15,'Brigham and Women\'s Hospital','Boston, MA','TRUE'),(16,'Cambridge Health Alliance','Cambridge, MA, Somerville, MA & Everett, MA','TRUE'),(17,'Cape Cod Hospital','Hyannis, MA','FALSE'),(18,'Cooley Dickinson Hospital','Northampton, MA','TRUE'),(19,'Dana-Farber Cancer Institute','Boston, MA','FALSE'),(20,'Emerson Hospital','Concord, MA','TRUE'),(21,'Fairview Hospital','Great Barrington, MA','TRUE'),(22,'Falmouth Hospital','Falmouth, MA','FALSE'),(23,'Harrington Memorial Hospital','Southbridge, MA','TRUE'),(24,'HealthAlliance-Clinton Hospital','Leominster, MA, Clinton, MA & Fitchburg, MA','TRUE'),(25,'Heywood Hospital','Gardner, MA','TRUE'),(26,'Holyoke Medical Center','Holyoke, MA','TRUE'),(27,'Lahey Hospital & Medical Center','Burlington, MA & Peabody, MA','TRUE'),(28,'Lawrence General Hospital','Lawrence, MA','FALSE'),(29,'Lowell General Hospital','Lowell, MA','TRUE'),(30,'Marlborough Hospital','Marlborough, MA','TRUE'),(31,'Martha\'s Vineyard Hospital','Oak Bluffs, MA','TRUE'),(32,'Massachusetts Eye and Ear Infirmary','Boston, MA','TRUE'),(33,'Massachusetts General Hospital','Boston, MA','TRUE'),(34,'Melrose Wakefield Healthcare','Medford, MA & Melrose, MA','TRUE'),(35,'Mercy Medical Center','Springfield, MA','FALSE'),(36,'MetroWest Medical Center','Framingham, MA & Natick, MA','FALSE'),(37,'Milford Regional Medical Center','Milford, MA','TRUE'),(38,'Morton Hospital, A Steward Family Hospital','Taunton, MA','TRUE'),(39,'Mount Auburn Hospital','Cambridge, MA','TRUE'),(40,'Nantucket Cottage Hospital','Nantucket, MA','TRUE'),(41,'Nashoba Valley Medical Center, A Steward Family Hospital','Ayer, MA','TRUE'),(42,'New England Baptist Hospital','Boston, MA','FALSE'),(43,'Newton-Wellesley Hospital','Newton, MA','TRUE'),(44,'North Shore Medical Center','Salem, MA & Lynn, MA','TRUE'),(45,'Northeast Hospital','Beverly, MA, Gloucester, MA & Lynn, MA','TRUE'),(46,'Saint Vincent Hospital','Worcester, MA','TRUE'),(47,'Shriners Hospitals for Children - Boston','Boston, MA','FALSE'),(48,'Shriners Hospitals for Children - Springfield','Springfield, MA','TRUE'),(49,'Signature Healthcare Brockton Hospital','Brockton, MA','TRUE'),(50,'South Shore Hospital','South Weymouth, MA','TRUE'),(51,'Southcoast Hospitals Group','Fall River, MA, New Bedford, MA & Wareham, MA','TRUE'),(52,'Steward Carney Hospital','Dorchester, MA','FALSE'),(53,'Steward Good Samaritan Medical Center','Brockton, MA','TRUE'),(54,'Steward Holy Family Hospital','Methuen, MA','TRUE'),(55,'Steward Norwood Hospital','Norwood, MA','TRUE'),(56,'Steward Saint Anne\'s Hospital','Fall River, MA','TRUE'),(57,'Steward St. Elizabeth\'s Medical Center','Brighton, MA','TRUE'),(58,'Sturdy Memorial Hospital','Attleboro, MA','FALSE'),(59,'Tufts Medical Center','Boston, MA','TRUE'),(60,'UMass Memorial Medical Center','Worcester, MA','TRUE'),(61,'Winchester Hospital','Winchester, MA','TRUE');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infected`
--

DROP TABLE IF EXISTS `infected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infected` (
  `person_id` int DEFAULT NULL,
  `infection_cod` int DEFAULT NULL,
  KEY `person_id_idx` (`person_id`),
  KEY `infection_cod_idx` (`infection_cod`),
  CONSTRAINT `infection_cod` FOREIGN KEY (`infection_cod`) REFERENCES `injury` (`infection_code`),
  CONSTRAINT `person_id` FOREIGN KEY (`person_id`) REFERENCES `patient_info` (`Person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infected`
--

LOCK TABLES `infected` WRITE;
/*!40000 ALTER TABLE `infected` DISABLE KEYS */;
INSERT INTO `infected` VALUES (194,119),(76,152),(147,26),(126,21),(59,89),(44,164),(164,158),(62,193),(137,147),(89,98),(7,159),(149,126),(125,183),(25,178),(193,72),(6,17),(179,57),(127,199),(63,142),(168,194),(160,23),(57,14),(21,163),(122,18),(67,2),(51,128),(28,191),(64,101),(163,51),(75,100),(83,130),(136,116),(82,15),(188,135),(181,55),(61,197),(135,150),(108,189),(24,179),(37,104),(45,145),(185,58),(42,7),(182,66),(77,177),(8,122),(105,28),(19,181),(128,92),(92,83),(170,1),(107,84),(169,9),(200,11),(116,30),(134,42),(197,52),(29,80),(22,68),(131,22),(98,31),(81,60),(187,3),(190,160),(96,95),(140,75),(49,180),(36,139),(121,37),(145,155),(144,169),(100,195),(93,27),(50,99),(73,24),(154,36),(17,88),(120,120),(123,69),(152,19),(23,74),(113,93),(173,166),(167,140),(65,73),(146,143),(129,162),(88,39),(3,25),(5,125),(199,102),(55,141),(38,118),(112,134),(2,97),(110,67),(52,8),(20,198),(74,132),(69,186),(35,182),(158,161),(68,29),(72,110),(91,5),(114,71),(79,174),(99,184),(162,187),(15,167),(180,45),(192,156),(40,12),(54,76),(80,168),(104,131),(14,59),(78,96),(4,63),(31,188),(33,117),(13,171),(41,13),(174,16),(97,48),(56,35),(53,108),(132,185),(195,111),(70,77),(138,90),(139,124),(111,196),(71,138),(18,33),(109,114),(48,170),(177,61),(16,192),(32,190),(58,40),(95,165),(12,157),(85,64),(153,149),(191,82),(1,112),(94,46),(39,54),(106,62),(157,65),(186,86),(151,70),(101,85),(156,173),(118,91),(143,121),(198,200),(165,107),(124,176),(10,136),(102,127),(159,105),(9,153),(150,56),(130,129),(161,115),(90,10),(86,103),(119,41),(30,81),(196,44),(27,53),(87,4),(84,172),(66,20),(184,47),(103,148),(47,79),(60,50),(183,175),(171,185),(178,133),(133,24),(26,130),(115,148),(83,16),(151,32),(121,188),(88,116),(142,23),(18,191),(69,95),(111,74),(66,163),(16,177),(22,136),(91,88),(198,173),(191,129);
/*!40000 ALTER TABLE `infected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `injury`
--

DROP TABLE IF EXISTS `injury`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `injury` (
  `infection_code` int NOT NULL,
  `Injury_Name` varchar(60) NOT NULL,
  PRIMARY KEY (`infection_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `injury`
--

LOCK TABLES `injury` WRITE;
/*!40000 ALTER TABLE `injury` DISABLE KEYS */;
INSERT INTO `injury` VALUES (1,'Congenital hypotonia'),(2,'Sltr-haris Type IV physl fx low end humer, l arm, 7thK'),(3,'Disp fx of l radial styloid pro, 7thF'),(4,'Stress fx, unsp tibia and fibula, subs for fx w malunion'),(5,'Unilateral inguinal hernia, without obstruction or gangrene'),(6,'Non-pressure chronic ulcer of unspecified ankle'),(7,'Adverse effect of aspirin, initial encounter'),(8,'Disp fx of med malleolus of unsp tibia, 7thG'),(9,'Subluxation of C4/C5 cervical vertebrae, initial encounter'),(10,'Puncture wound without foreign body of unsp wrist, sequela'),(11,'Unspecified glaucoma'),(12,'Incomplete lesion of L3 level of lumbar spinal cord'),(13,'Unspecified subluxation of unspecified hip'),(14,'Acute suppr otitis media w spon rupt ear drum, recur, l ear'),(15,'Car driver injured in collision w 2/3-whl mv nontraf, init'),(16,'Conjunctival adhesions and strands (localized), left eye'),(17,'Struck by cow, initial encounter'),(18,'Oth injury of vein at forearm level, unsp arm, init encntr'),(19,'Disp fx of med phalanx of unsp less toe(s), 7thD'),(20,'Poisoning by unsp topical agent, undetermined, subs encntr'),(21,'Displ commnt fx r patella, 7thR'),(22,'Passenger injured in collision w unsp mv in traf, subs'),(23,'Unspecified fracture of head of right femur'),(24,'Rheumatoid bursitis, left hand'),(25,'Pnctr w/o fb of r frnt wl of thorax w penet thor cav, subs'),(26,'Penetrating wound with foreign body of unsp eyeball, sequela'),(27,'Laceration of vein at forearm level, left arm'),(28,'Oth fracture of unsp ilium, init encntr for closed fracture'),(29,'Pnctr w/o foreign body of r idx fngr w damage to nail'),(30,'Underdosing of unspecified systemic antibiotic, init encntr'),(31,'Superficial foreign body, left thigh, initial encounter'),(32,'Sepsis, unspecified organism'),(33,'I/I react d/t nephrostomy catheter'),(34,'Unsp opn wnd abd wall, r upper q w/o penet perit cav, init'),(35,'Occup of bus injured in collision w ped/anml in traf'),(36,'Laceration w/o fb of r idx fngr w/o damage to nail, init'),(37,'Neoplasm of uncertain behavior of left breast'),(38,'Type 1 diab w mild nonprlf diabetic rtnop w macular edema'),(39,'NIHSS score 0'),(40,'Matern care for known or susp placntl insuff, 2nd tri, fts1'),(41,'Acquired stenosis of bilateral nasolacrimal duct'),(42,'Corrosion of first degree of right knee, initial encounter'),(43,'Pre-existing type 1 diabetes, in pregnancy, first trimester'),(44,'Opioid abuse with opioid-induced psychotic disorder, unsp'),(45,'Oth fx shaft of r fibula, 7thQ'),(46,'Corrosion of unspecified degree of neck'),(47,'Sltr-haris Type III physeal fx upper end of humer, unsp arm'),(48,'Unsp fx low end unsp tibia, 7thF'),(49,'Displ spiral fx shaft of r tibia, 7thR'),(50,'Disp fx of fifth metatarsal bone, left foot, sequela'),(51,'Poisoning by immunoglobulin, intentional self-harm, init'),(52,'Encounter for routine and ritual male circumcision'),(53,'Other secondary chronic gout, right hand'),(54,'Unsp focal TBI w LOC >24 hr w ret consc lev, init'),(55,'Poisoning by oth antiprotozoal drugs, accidental, init'),(56,'Traumatic amputation of shoulder and upper arm, level unsp'),(57,'Acute (reversible) ischemia of small intestine'),(58,'Transient synovitis, unspecified shoulder'),(59,'Oth extrartic fx low end r rad, 7thQ'),(60,'Oth fx fifth MC bone, left hand, subs for fx w delay heal'),(61,'Person outside hv veh inj in clsn w pedl cyc nontraf, subs'),(62,'Contusion of unspecified forearm'),(63,'Unspecified injury of dorsal vein of left foot'),(64,'Oth osteopor w crnt path fx, verteb, 7thG'),(65,'Strain of musc/fasc/tend at thigh level, left thigh, sequela'),(66,'Partial traumatic MCP amputation of unsp finger, subs'),(67,'Laceration of unsp blood vessel at ankle and foot level'),(68,'Other burn on board passenger vessel'),(69,'Polyhydramnios, second trimester, other fetus'),(70,'Corrosion of first deg mult sites of left ank/ft, subs'),(71,'Echinococcus multilocularis infection, multiple sites'),(72,'Oth fracture of unsp acetabulum, subs for fx w nonunion'),(73,'Poisoning by oth topical agents, accidental, init'),(74,'Other symptoms and signs concerning food and fluid intake'),(75,'Corrosion of second degree of left lower leg, init encntr'),(76,'Arthritis due to other bacteria, ankle and foot'),(77,'Disp fx of coracoid process, r shldr, subs for fx w nonunion'),(78,'Exposure to tanning bed'),(79,'Personal history of malignant neoplasm of urinary tract'),(80,'Felty\'s syndrome, right elbow'),(81,'War operations involving flamethrower, civilian, init encntr'),(82,'Enteropathy-type (intestinal) T-cell lymphoma'),(83,'Mtrcy rider (driver) injured in oth transport acc, subs'),(84,'Kaposi\'s sarcoma of right lung'),(85,'Postimmunization arthropathy, unspecified elbow'),(86,'Nondisp commnt fx shaft of unsp femr, 7thE'),(87,'Algoneurodystrophy, upper arm'),(88,'NIHSS score 40-42'),(89,'Poisoning by angiotens-convert-enzyme inhibitors, self-harm'),(90,'Fracture of unspecified part of body of left mandible, 7thB'),(91,'Toxic effect of aflatoxin and oth mycotoxin food contamnt'),(92,'Contusion of bladder'),(93,'Unsp open wound of left cheek and TMJ area, sequela'),(94,'Burn first deg of unsp site left lower limb, except ank/ft'),(95,'Ulnar collateral ligament sprain of unsp elbow, init encntr'),(96,'Dry eye syndrome of left lacrimal gland'),(97,'Unsp car occupant injured in collision w oth mv nontraf'),(98,'Poisoning by oth narcotics, accidental (unintentional), init'),(99,'Person outside bus injured in clsn w ped/anml in traf, init'),(100,'Cholera, unspecified'),(101,'Toxic effect of petroleum products, self-harm, init'),(102,'Stable burst fracture of T7-T8 vertebra, init for clos fx'),(103,'Accidental pnctr & lac of skin, subcu during a procedure'),(104,'Lac w/o fb of left lesser toe(s) w/o damage to nail, sequela'),(105,'Military operations involving other explosions and fragments'),(106,'Nondisp fx of hook pro of hamate bone, unsp wrs, 7thD'),(107,'Unsp nondisp fx of sixth cervical vertebra, init for opn fx'),(108,'Displ assoc transv/post fx r acetab, 7thD'),(109,'Muscle wasting and atrophy, NEC, right ankle and foot'),(110,'Disruption of external operation (surgical) wound, NEC, subs'),(111,'Disp fx of olecran pro w/o intartic extn r ulna, 7thK'),(112,'Other specified osteochondropathies, right forearm'),(113,'Viral hepatitis compl preg/chldbrth'),(114,'Oth psychoactive substance abuse w oth disorders'),(115,'Puncture wound with foreign body, left knee, init encntr'),(116,'Displacement of intrauterine contraceptive device, sequela'),(117,'Dysarthria following other cerebrovascular disease'),(118,'Poisoning by appetite depressants, self-harm, sequela'),(119,'Oth fx shaft of unsp tibia, subs for clos fx w delay heal'),(120,'Pain due to genitourinary prosth dev/grft, initial encounter'),(121,'Nondisp fx of proximal phalanx of right little finger'),(122,'Stable burst fx third thor vert, subs for fx w delay heal'),(123,'Oth physl fx upper end rad, r arm, subs for fx w nonunion'),(124,'Other effects of lightning, sequela'),(125,'Ulcerative blepharitis left eye, unspecified eyelid'),(126,'Lichen striatus'),(127,'Unspecified sprain of elbow'),(128,'Strain of flexor musc/fasc/tend l thm at forarm lv, init'),(129,'Poisoning by histamine H2-receptor blockers, undet, subs'),(130,'Subluxation and dislocation of T8/T9-T9/T10 thor vertebra'),(131,'Strain of musc/fasc/tend long head of biceps, left arm'),(132,'Other disorders of cornea'),(133,'Adverse effect of antivaric drugs, including scler agents'),(134,'Twin pregnancy, monochorionic/diamniotic, unsp trimester'),(135,'Inj musc/tend anterior grp at lower leg level, unsp leg'),(136,'Scrotal pain'),(137,'Torus fx lower end of unsp ulna, subs for fx w nonunion'),(138,'Displ midcervical fx r femr, 7thM'),(139,'Displaced comminuted fx shaft of humerus, left arm, init'),(140,'Unsp trochan fx r femr, 7thF'),(141,'Abnormal lead level in blood'),(142,'Disp fx of 4th metatarsal bone, unsp ft, 7thG'),(143,'Parastc cyst of iris, ciliary body or ant chamber, right eye'),(144,'Displaced fracture of lunate, unspecified wrist, sequela'),(145,'Displ spiral fx shaft of ulna, r arm, 7thF'),(146,'Skeletal fluorosis, right thigh'),(147,'Chronic osteomyelitis with draining sinus, left hand'),(148,'Contusion of right forearm, initial encounter'),(149,'Corrosion of third degree of neck, subsequent encounter'),(150,'Fracture of mandible, unsp, subs for fx w routn heal'),(151,'Nondisp fx of lateral cuneiform of left foot, init'),(152,'Adverse effect of antineoplastic and immunosup drugs, init'),(153,'Disorders of retroperitoneum'),(154,'Mech compl of implnt electrnc stimultr of nervous sys, subs'),(155,'Drug-induced chronic gout, right ankle and foot, with tophus'),(156,'Benign neoplasm of connective and oth soft tissue of abdomen'),(157,'Unspecified injury of foot'),(158,'Mtrcy driver injured in collision w unsp mv in traf, subs'),(159,'Partial retinal artery occlusion, right eye'),(160,'Nondisp spiral fx shaft of rad, l arm, 7thE'),(161,'Assault by push/place victim in front of moving object, init'),(162,'Poisoning by predom beta-adrenocpt agonists, acc, sequela'),(163,'Inj oth blood vessels at lower leg level, left leg, sequela'),(164,'Accidental malfunction from oth firearms, init encntr'),(165,'Other specified disorders of synovium and tendon, knee'),(166,'Athscl native arteries of extremities w rest pain, left leg'),(167,'Unsp fracture of navicular bone of right wrist, sequela'),(168,'Sprain of tibiofibular ligament of unsp ankle, sequela'),(169,'Burn of third degree of abdominal wall'),(170,'Unspecified fracture of left patella'),(171,'Glucocorticoids and synthetic analogues'),(172,'Atherosclerosis of native arteries of right leg w ulceration'),(173,'Unspecified child maltreatment, confirmed, subs encntr'),(174,'Crush betw fish boat and oth wtrcrft/obj due to clsn, subs'),(175,'Accidental handgun malfunction, subsequent encounter'),(176,'Fracture oth prt scapula, r shoulder, subs for fx w malunion'),(177,'Poisoning by pertuss vaccine, inc combin w pertuss, assault'),(178,'Corneal deposits in metabolic disorders, left eye'),(179,'Lac w fb of abd wall, right upper quadrant w penet perit cav'),(180,'Neoplasm of uncertain behavior of digestive organ, unsp'),(181,'Other snow-ski accident'),(182,'Neuronal ceroid lipofuscinosis'),(183,'Nondisp fx of olecran pro w intartic extn l ulna, 7thP'),(184,'Allergy status to unsp drug/meds/biol subst status'),(185,'Osteonecrosis due to previous trauma, left femur'),(186,'Corrosion of first degree of female genital region'),(187,'Malignant neoplasm of appendix'),(188,'Lacerat unsp blood vessel at wrs/hnd lv of left arm, sequela'),(189,'Nondisplaced fracture of body of scapula, right shoulder'),(190,'Hang-glider collision injuring occupant, initial encounter'),(191,'Nondisp fx of base of 4th MC bone, l hand, 7thK'),(192,'Nondisp fx of med wall of r acetab, subs for fx w nonunion'),(193,'Torus fx lower end of left radius, subs for fx w delay heal'),(194,'Scratched by cat, initial encounter'),(195,'Disp fx of lateral malleolus of unsp fibula, 7thK'),(196,'Other problems related to social environment'),(197,'Unspecified acquired deformity of left forearm'),(198,'Occup of pk-up/van injured in collision w oth mv in traf'),(199,'Assault by smoke, fire and flames, subsequent encounter'),(200,'Non-prs chronic ulc unsp prt of l low leg w necros muscle');
/*!40000 ALTER TABLE `injury` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_type`
--

DROP TABLE IF EXISTS `insurance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_type` (
  `insurance_id` int NOT NULL,
  `insurance_type` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`insurance_id`),
  KEY `insurance_type_idx` (`insurance_type`),
  CONSTRAINT `insurance_type` FOREIGN KEY (`insurance_type`) REFERENCES `health_insurance` (`insurance_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_type`
--

LOCK TABLES `insurance_type` WRITE;
/*!40000 ALTER TABLE `insurance_type` DISABLE KEYS */;
INSERT INTO `insurance_type` VALUES (3,'EPO'),(7,'EPO'),(10,'EPO'),(15,'EPO'),(18,'EPO'),(22,'EPO'),(27,'EPO'),(29,'EPO'),(33,'EPO'),(38,'EPO'),(44,'EPO'),(48,'EPO'),(49,'EPO'),(54,'EPO'),(59,'EPO'),(61,'EPO'),(65,'EPO'),(69,'EPO'),(73,'EPO'),(79,'EPO'),(84,'EPO'),(88,'EPO'),(91,'EPO'),(95,'EPO'),(100,'EPO'),(103,'EPO'),(106,'EPO'),(112,'EPO'),(115,'EPO'),(117,'EPO'),(124,'EPO'),(128,'EPO'),(131,'EPO'),(133,'EPO'),(138,'EPO'),(143,'EPO'),(147,'EPO'),(151,'EPO'),(154,'EPO'),(157,'EPO'),(162,'EPO'),(168,'EPO'),(171,'EPO'),(176,'EPO'),(177,'EPO'),(181,'EPO'),(186,'EPO'),(192,'EPO'),(194,'EPO'),(198,'EPO'),(4,'HMO'),(8,'HMO'),(12,'HMO'),(16,'HMO'),(20,'HMO'),(21,'HMO'),(26,'HMO'),(31,'HMO'),(36,'HMO'),(39,'HMO'),(41,'HMO'),(45,'HMO'),(50,'HMO'),(56,'HMO'),(58,'HMO'),(63,'HMO'),(66,'HMO'),(70,'HMO'),(75,'HMO'),(80,'HMO'),(82,'HMO'),(85,'HMO'),(92,'HMO'),(94,'HMO'),(99,'HMO'),(101,'HMO'),(105,'HMO'),(111,'HMO'),(116,'HMO'),(118,'HMO'),(123,'HMO'),(126,'HMO'),(130,'HMO'),(134,'HMO'),(137,'HMO'),(142,'HMO'),(148,'HMO'),(150,'HMO'),(153,'HMO'),(160,'HMO'),(164,'HMO'),(166,'HMO'),(170,'HMO'),(175,'HMO'),(178,'HMO'),(184,'HMO'),(185,'HMO'),(189,'HMO'),(193,'HMO'),(199,'HMO'),(2,'POS'),(5,'POS'),(9,'POS'),(14,'POS'),(17,'POS'),(23,'POS'),(28,'POS'),(32,'POS'),(34,'POS'),(40,'POS'),(43,'POS'),(46,'POS'),(52,'POS'),(55,'POS'),(60,'POS'),(64,'POS'),(67,'POS'),(72,'POS'),(76,'POS'),(78,'POS'),(81,'POS'),(87,'POS'),(89,'POS'),(93,'POS'),(98,'POS'),(104,'POS'),(107,'POS'),(110,'POS'),(114,'POS'),(119,'POS'),(121,'POS'),(127,'POS'),(132,'POS'),(136,'POS'),(140,'POS'),(141,'POS'),(146,'POS'),(152,'POS'),(156,'POS'),(159,'POS'),(163,'POS'),(167,'POS'),(172,'POS'),(174,'POS'),(180,'POS'),(183,'POS'),(187,'POS'),(190,'POS'),(195,'POS'),(200,'POS'),(1,'PPO'),(6,'PPO'),(11,'PPO'),(13,'PPO'),(19,'PPO'),(24,'PPO'),(25,'PPO'),(30,'PPO'),(35,'PPO'),(37,'PPO'),(42,'PPO'),(47,'PPO'),(51,'PPO'),(53,'PPO'),(57,'PPO'),(62,'PPO'),(68,'PPO'),(71,'PPO'),(74,'PPO'),(77,'PPO'),(83,'PPO'),(86,'PPO'),(90,'PPO'),(96,'PPO'),(97,'PPO'),(102,'PPO'),(108,'PPO'),(109,'PPO'),(113,'PPO'),(120,'PPO'),(122,'PPO'),(125,'PPO'),(129,'PPO'),(135,'PPO'),(139,'PPO'),(144,'PPO'),(145,'PPO'),(149,'PPO'),(155,'PPO'),(158,'PPO'),(161,'PPO'),(165,'PPO'),(169,'PPO'),(173,'PPO'),(179,'PPO'),(182,'PPO'),(188,'PPO'),(191,'PPO'),(196,'PPO'),(197,'PPO');
/*!40000 ALTER TABLE `insurance_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insure`
--

DROP TABLE IF EXISTS `insure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insure` (
  `insurance_id` int DEFAULT NULL,
  `claim_id` int DEFAULT NULL,
  KEY `insurance_id_idx` (`insurance_id`),
  KEY `claim_id_idx` (`claim_id`),
  CONSTRAINT `claim_id` FOREIGN KEY (`claim_id`) REFERENCES `claim_details` (`claim_id`),
  CONSTRAINT `insurance_id` FOREIGN KEY (`insurance_id`) REFERENCES `insurance_type` (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insure`
--

LOCK TABLES `insure` WRITE;
/*!40000 ALTER TABLE `insure` DISABLE KEYS */;
INSERT INTO `insure` VALUES (116,156),(84,41),(178,193),(10,72),(13,150),(183,169),(150,135),(155,164),(88,35),(187,53),(143,15),(45,52),(74,96),(152,90),(122,12),(55,174),(60,19),(159,87),(48,129),(63,59),(114,21),(123,116),(158,148),(130,133),(87,179),(58,197),(2,47),(108,9),(196,82),(94,24),(174,170),(195,4),(26,184),(20,158),(65,33),(138,46),(6,1),(15,132),(169,95),(8,105),(75,183),(173,113),(86,166),(136,65),(190,185),(181,69),(16,171),(151,186),(53,50),(192,16),(135,157),(33,128),(137,117),(18,45),(120,165),(7,125),(1,195),(199,196),(82,112),(62,73),(101,79),(32,39),(40,136),(119,81),(102,10),(126,109),(154,194),(95,23),(39,176),(162,108),(175,175),(85,200),(186,40),(168,189),(92,188),(98,182),(148,192),(50,199),(29,75),(27,146),(69,119),(105,30),(198,43),(41,8),(125,11),(3,160),(141,3),(191,83),(31,44),(127,123),(78,134),(153,111),(128,172),(51,91),(188,86),(21,100),(110,103),(72,124),(160,180),(109,126),(132,141),(80,118),(184,6),(61,190),(70,167),(146,163),(73,88),(76,102),(113,110),(124,99),(54,154),(9,26),(149,2),(19,51),(197,74),(47,66),(165,121),(11,61),(44,92),(52,57),(161,142),(89,147),(107,181),(115,42),(25,122),(56,48),(156,20),(163,76),(112,77),(180,144),(5,13),(66,187),(140,155),(23,70),(93,60),(17,153),(166,89),(30,130),(164,84),(42,107),(68,49),(131,5),(171,151),(172,17),(96,114),(193,93),(118,32),(97,198),(28,120),(99,161),(134,31),(35,37),(57,22),(79,85),(81,62),(90,54),(121,127),(64,159),(37,162),(194,28),(129,139),(189,137),(4,55),(185,145),(170,29),(104,115),(22,38),(83,18),(12,178),(24,34),(59,27),(177,104),(142,152),(38,94),(139,101),(46,191),(36,106),(133,56),(167,7),(14,25),(77,98),(144,149),(100,131),(106,58),(157,140),(179,4),(43,42),(71,131),(9,73),(25,9),(65,173),(185,199),(43,195),(1,127),(159,164),(85,76),(162,39),(166,196),(12,160),(20,51);
/*!40000 ALTER TABLE `insure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insure_data`
--

DROP TABLE IF EXISTS `insure_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insure_data` (
  `insure_person_id` int DEFAULT NULL,
  `insure_insurance_id` int NOT NULL,
  KEY `person_id_idx` (`insure_person_id`),
  KEY `insurance_id_idx` (`insure_insurance_id`),
  CONSTRAINT `insure_insurance_id` FOREIGN KEY (`insure_insurance_id`) REFERENCES `insurance_type` (`insurance_id`),
  CONSTRAINT `insure_person_id` FOREIGN KEY (`insure_person_id`) REFERENCES `patient_info` (`Person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insure_data`
--

LOCK TABLES `insure_data` WRITE;
/*!40000 ALTER TABLE `insure_data` DISABLE KEYS */;
INSERT INTO `insure_data` VALUES (182,36),(17,32),(108,31),(147,176),(107,58),(30,57),(155,68),(47,16),(16,73),(18,10),(72,170),(137,151),(166,187),(42,120),(26,5),(119,100),(125,110),(172,190),(157,53),(29,95),(131,173),(97,171),(2,109),(52,18),(105,46),(35,41),(101,141),(173,195),(1,69),(45,185),(78,184),(117,59),(189,52),(188,50),(163,93),(106,191),(46,112),(121,147),(93,15),(171,139),(126,4),(197,72),(168,102),(91,126),(176,30),(127,182),(63,122),(116,164),(110,131),(23,70),(66,172),(94,76),(132,6),(51,99),(122,24),(187,124),(37,198),(164,39),(81,85),(103,193),(200,83),(19,28),(90,140),(174,177),(144,67),(179,189),(134,1),(58,196),(162,163),(165,37),(43,165),(79,162),(149,104),(123,133),(70,111),(28,11),(111,48),(21,55),(138,119),(14,157),(102,27),(154,175),(191,105),(10,90),(64,106),(27,33),(161,155),(170,96),(76,98),(192,114),(50,12),(177,8),(152,168),(41,86),(118,49),(62,134),(112,89),(98,13),(109,167),(65,107),(129,188),(53,121),(193,91),(11,197),(96,38),(6,108),(59,51),(175,88),(85,54),(124,143),(55,169),(74,101),(186,21),(143,20),(68,65),(183,103),(44,125),(71,153),(151,80),(159,194),(180,129),(22,17),(75,62),(184,60),(38,113),(169,127),(24,71),(84,34),(136,117),(104,158),(40,22),(15,154),(140,116),(89,146),(49,192),(178,178),(36,166),(130,78),(113,47),(160,25),(33,118),(56,180),(86,63),(69,84),(141,150),(142,135),(25,142),(153,130),(34,81),(145,179),(114,43),(77,23),(73,148),(32,29),(88,144),(5,92),(9,200),(133,26),(54,152),(135,156),(185,149),(167,183),(115,145),(181,181),(128,66),(158,160),(3,199),(146,19),(61,97),(150,45),(139,35),(99,7),(83,115),(148,132),(80,14),(190,82),(194,42),(39,40),(12,79),(198,3),(95,44),(92,123),(114,74),(186,161),(52,89),(148,6),(18,65),(181,151),(48,64),(197,191),(44,179),(42,86),(60,36),(170,49),(5,43),(32,24),(189,130),(46,189),(30,61),(79,58);
/*!40000 ALTER TABLE `insure_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `Patient_Name` varchar(21) NOT NULL,
  `Contact_details` varchar(12) NOT NULL,
  PRIMARY KEY (`Patient_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('Aaron Hallgarth','119-159-2277'),('Abie Pucker','486-171-9738'),('Addie Brodbin','374-291-8780'),('Aida Portugal','658-642-1371'),('Aigneis Hunnicot','793-447-5114'),('Aile Coggell','679-728-5439'),('Aili Tesseyman','681-628-2827'),('Aime Bullock','240-879-8623'),('Aldrich Gymblett','871-128-5594'),('Alfreda De Laspee','432-426-3156'),('Algernon Copcott','781-791-9982'),('Alic Windaybank','153-426-3309'),('Anderson Lambrook','961-668-5998'),('Andria Gong','520-777-0672'),('Anestassia Tailour','525-833-3546'),('Aprilette Castagnaro','189-557-7451'),('Arin Lehrmann','544-878-0641'),('Arlie Gothliff','369-805-8481'),('Arni Storrar','251-368-6125'),('Ashley Temlett','776-133-7410'),('Aurelie Hewins','249-615-1536'),('Aviva Besant','412-290-3807'),('Avrom Olerenshaw','791-533-4936'),('Barry Purches','183-562-9792'),('Bartlett Casaroli','878-823-4146'),('Belvia Glavias','322-803-5007'),('Benedicta Cobbledick','434-955-2186'),('Benito Ortega','947-467-5064'),('Bethany Sawell','704-139-9088'),('Bette-ann Gillbard','452-791-3058'),('Bill Glave','839-587-2055'),('Blaine Barehead','485-921-8568'),('Bobbi Ambrus','700-671-3722'),('Brendon Blazewicz','547-473-1085'),('Brice Shitliff','125-989-3135'),('Brit Harnes','316-368-8687'),('Burnard Suter','982-958-1115'),('Callie Danbi','509-300-1067'),('Caren Coey','900-931-1993'),('Carly Luetkemeyers','278-129-5372'),('Carlyn Lythgoe','605-149-2835'),('Carol-jean Hewkin','492-316-8408'),('Caspar Faas','714-655-2321'),('Cassondra Chismon','995-628-5772'),('Celia Di Franceschi','911-579-2737'),('Cesya Corroyer','429-306-2445'),('Chariot Hamal','591-642-9022'),('Charissa Tunny','483-344-3415'),('Chicky Alton','726-115-2197'),('Clareta Korneichik','840-411-9253'),('Clementina Ahern','305-864-2708'),('Cointon Orbine','141-447-1015'),('Corny Bondley','944-835-7448'),('Cosimo Pattesall','933-751-3080'),('Dacy Farres','916-130-7141'),('Darelle O\'Scully','418-170-5472'),('Dario Keable','347-797-2658'),('Deane Douch','781-960-5590'),('Debora Gally','356-558-8814'),('Deborah Elderkin','446-845-9555'),('Della Clawson','233-326-9330'),('Delphinia Dering','524-109-8889'),('Denys Beddoe','739-657-8738'),('Devy Isworth','703-157-1857'),('Dore Valentetti','570-905-8303'),('Dru Bowdon','760-152-9953'),('Durward Rivard','893-590-0333'),('Dusty Rykert','583-545-5340'),('Ediva Risen','280-936-5843'),('Elizabet Hillhouse','901-863-9882'),('Ellary Parkisson','715-543-9004'),('Emlyn Siseland','669-839-5036'),('Ericka Keilty','758-389-4058'),('Farrah Brackenridge','612-338-3318'),('Faun Fielder','258-152-0529'),('Faydra Shynn','146-844-4429'),('Filip Pashley','450-464-1692'),('Florance Olin','626-382-5876'),('Francine Creamer','958-290-7053'),('Franny Yitshak','739-454-1234'),('Gabbie Flippelli','876-561-9539'),('Gabriell Langfield','511-307-5226'),('Garrot Tellenbrok','511-351-1275'),('Gearalt Redit','992-525-6253'),('Georgia Biasini','310-287-5718'),('Geri Nibley','240-852-6717'),('Gianni Dainton','605-722-6407'),('Gilbertine Prantoni','320-940-7377'),('Giselle Langlais','454-133-0201'),('Hamilton Lacoste','659-929-7787'),('Hamnet LeEstut','605-845-6789'),('Hansiain Schooley','519-573-3070'),('Harriott Jeanin','939-716-1805'),('Haywood Dettmar','794-914-5650'),('Herculie Cavolini','106-531-2841'),('Huntley Dumbelton','481-265-7477'),('Hyacintha Witt','871-871-0344'),('Ichabod Richings','647-914-2800'),('Ilise Spencer','804-766-8334'),('Imelda Kellen','521-664-5333'),('Iosep Ricciardo','774-919-6536'),('Itch McDougall','201-317-5012'),('Jamey Hamill','839-716-6639'),('Janette Lau','712-207-9193'),('Jen Bransdon','439-218-6963'),('Jeramie Krzysztof','332-164-8170'),('Jerrome O\'Lyhane','141-533-8821'),('Joete McTurk','429-787-0239'),('Joseito Smalls','987-462-5563'),('Katrine Groll','360-346-7631'),('Kaye Berardt','678-286-1206'),('Kennie Priter','983-378-7229'),('Kev Cousens','903-392-0457'),('Kippy Richard','682-323-3082'),('Kristoforo Comolli','867-978-7972'),('Leda Pattullo','253-651-6775'),('Leland Winkworth','591-930-4002'),('Lishe Readwing','674-742-0205'),('Loise Huckle','441-470-5287'),('Loni Hucke','306-811-5503'),('Lotty Adkin','536-954-3911'),('Louisa Sandbatch','414-821-9154'),('Marnia Creek','493-207-1433'),('Martie Vanini','987-409-3820'),('Maryellen Ower','690-281-1014'),('Maura Cyson','328-677-5731'),('Maximilian Bottleston','296-547-1038'),('Maximilien O\'Keefe','756-479-4608'),('Merill Fookes','992-871-6796'),('Merrily Wooderson','981-668-4255'),('Milly Brettle','838-260-7087'),('Mina Haig','787-766-4984'),('Moyna Brunnstein','410-263-7738'),('Myrtie Musslewhite','637-467-2250'),('Niki Carmody','173-812-2828'),('Nikolaos Clemence','844-357-2624'),('Nilson Nunes Nabarro','494-859-2410'),('Noel Bullimore','852-169-3016'),('Nonie Reinhardt','802-862-0522'),('Osborn Fyers','671-241-3889'),('Otis Stapylton','461-428-8104'),('Owen Braim','409-375-6308'),('Peirce McGonigal','312-328-1941'),('Philippe Pessel','208-413-0383'),('Phip Allmen','761-471-6286'),('Raddie Loachhead','968-408-4279'),('Regan Campanelli','638-918-4614'),('Reggi Yardy','763-217-4739'),('Reinaldos Willard','215-319-0700'),('Renaldo Skipperbottom','791-594-6528'),('Ricard Haddinton','582-901-8162'),('Robers Gallifont','208-274-5377'),('Robina Oaten','864-189-9166'),('Robinetta Robinett','191-303-4832'),('Rockie Vasile','656-174-6346'),('Rodge Camsey','134-704-8574'),('Russ Lamplugh','638-888-2154'),('Saree Low','475-794-2350'),('Selie Santus','695-585-4910'),('Sheffield Ockenden','188-692-7773'),('Sherman Ashmore','299-423-0381'),('Shirley Neve','157-233-6897'),('Slade Bouldstridge','100-651-0268'),('Spike Bradbury','814-265-3098'),('Stacie Yglesia','729-167-4942'),('Stan Signe','790-400-3120'),('Stanleigh Prescote','326-899-4872'),('Stephi Rooze','490-876-8921'),('Tally Dmytryk','127-430-5676'),('Teddie Missington','180-425-6883'),('Temp Stratz','718-323-3559'),('Teriann O\' Hern','617-766-9807'),('Terrel Snyder','765-291-4161'),('Terry Austick','837-487-1369'),('Terry Blackhurst','149-817-9497'),('Theadora Ethersey','357-582-0222'),('Timi Westmore','799-910-1379'),('Timotheus Thurstance','542-582-2897'),('Tisha Scarlon','281-323-3314'),('Tonye Camerello','663-781-1456'),('Tory Biaggelli','840-655-0730'),('Travers Lount','279-243-3940'),('Trefor Gerleit','933-645-3760'),('Tristam Sutherns','968-663-9009'),('Trix Cashman','152-119-9768'),('Trstram Lepard','526-152-2030'),('Trudi Facey','843-183-0820'),('Tyrone Gutridge','620-245-4221'),('Udale Kyrkeman','309-260-0881'),('Vicki Leversha','426-917-0369'),('Vittoria Woollett','759-836-3410'),('Wandie MacFadin','612-832-1257'),('Way Merrien','609-998-3247'),('Weidar Olekhov','548-680-4335'),('Willi Sibary','613-604-5724'),('Winnie Leyrroyd','410-207-9701'),('Yoshiko Assard','145-730-5658'),('Zechariah Jess','618-251-8507'),('Zeke Lapping','567-576-5219'),('Zita Kitcatt','448-211-3041');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_info`
--

DROP TABLE IF EXISTS `patient_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_info` (
  `Person_ID` int NOT NULL,
  `Info_ID` int NOT NULL,
  `Medical_History` varchar(60) NOT NULL,
  `email` varchar(33) NOT NULL,
  `Date_of_Birth` varchar(10) NOT NULL,
  `Status` varchar(5) NOT NULL,
  `P_Name` varchar(21) NOT NULL,
  PRIMARY KEY (`Person_ID`),
  KEY `Info_ID_idx` (`Info_ID`),
  KEY `P_Name_idx` (`P_Name`),
  CONSTRAINT `info_id` FOREIGN KEY (`Info_ID`) REFERENCES `final_information` (`id_info`),
  CONSTRAINT `P_Name` FOREIGN KEY (`P_Name`) REFERENCES `patient` (`Patient_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_info`
--

LOCK TABLES `patient_info` WRITE;
/*!40000 ALTER TABLE `patient_info` DISABLE KEYS */;
INSERT INTO `patient_info` VALUES (1,156,'Postprocedural  cardiogenic shock, initial encounter','esaul0@upenn.edu','1/22/1994','true','Caye Barnsdale'),(2,147,'Puncture wound with foreign body of left elbow','hkynge1@census.gov','7/8/2001','true','Tessi Raywood'),(3,199,'External constriction, right lower leg, subsequent encounter','gmolineaux2@zdnet.com','11/8/1995','false','Wallie Ezzell'),(4,54,'Vitreous abscess (chronic), right eye','mdalliwater3@deliciousdays.com','2/13/2002','true','Frederic Blake'),(5,49,'Displ transverse fx shaft of r rad, 7thN','smazin4@un.org','3/11/1998','true','Jesse Young'),(6,17,'Combined hypermobility of urethra and intrns sphincter defic','rnickels5@nationalgeographic.com','6/11/1995','false','Abey Collison'),(7,103,'Infct fol oth infusion, tranfs and theraputc inject, sequela','rpadefield6@blog.com','3/18/1999','false','Louie Rikard'),(8,125,'Displaced fracture of anterior column of left acetabulum','ptrimble7@ftc.gov','7/20/1998','true','Sandy Scougal'),(9,183,'Pnctr w/o fb of l frnt wl of thorax w penet thor cav, sqla','ovaszoly8@trellian.com','11/16/2000','false','Phyllys Hollyman'),(10,191,'Oth specific arthropathies, NEC, left shoulder','idrayson9@harvard.edu','4/30/1997','true','Cilka Frances'),(11,11,'Chronic gout due to renal impairment, unsp hip, w/o tophus','kdarlisona@networkadvertising.org','8/15/2000','false','Oswell Halliburton'),(12,30,'Tricyclic antidepressants','cmacclureb@virginia.edu','12/26/1996','true','Gawain Prugel'),(13,36,'Disorder of ligament, hip','bkulicc@1und1.de','1/1/2002','false','Bonnibelle Vedeniktov'),(14,173,'Disp fx of dist phalanx of unsp less toe(s), 7thP','smercikd@jigsy.com','5/17/1996','true','Jeremy De Vaux'),(15,127,'Disp fx of prox phalanx of l lit fngr, 7thP','arickerseye@squidoo.com','11/5/2001','true','Ruy Presland'),(16,120,'Chronic petrositis','abynethf@4shared.com','7/21/1996','true','Basile Southan'),(17,170,'Acute lacrimal canaliculitis of left lacrimal passage','rjagoeg@java.com','4/3/1998','true','Marylou Folan'),(18,87,'Pathological fracture, right toe(s), sequela','tcrepelh@salon.com','4/11/2000','true','Tony Deackes'),(19,121,'Milt op involving unsp weapon of mass destruction, subs','lmacklami@microsoft.com','2/1/2001','false','Teddy Rains'),(20,26,'Leakage of biological heart valve graft, subs encntr','jkochj@umn.edu','12/22/1994','true','Goldie Astill'),(21,193,'Cannabis dependence with intoxication, uncomplicated','swalderk@japanpost.jp','12/4/2001','true','Bruce Sarson'),(22,138,'Insect bite (nonvenomous) of lip, subsequent encounter','mjoostl@google.es','9/24/1998','true','Binky Marousek'),(23,78,'Other superficial bite of unspecified thigh','alukeschm@amazon.de','7/24/1996','true','Davey Winspire'),(24,189,'Displaced bicondylar fracture of left tibia, sequela','adurrann@parallels.com','3/11/1996','false','Reynolds Tofful'),(25,38,'Unsp superficial injury of unspecified foot, subs encntr','dreboulo@stanford.edu','10/13/1998','false','Cassy McGuffie'),(26,194,'Sprain of other ligament of left ankle, initial encounter','ptwinep@va.gov','4/26/1995','false','Leshia Josuweit'),(27,157,'Dementia in other diseases classified elsewhere','fcastroq@columbia.edu','4/14/2003','true','Sanders Northleigh'),(28,145,'Drown due to being washed overboard from unsp wtrcrft, init','eklaaassenr@myspace.com','1/27/2003','false','Maurice Trower'),(29,174,'Disp fx of medial phalanx of left index finger, sequela','flegens@jigsy.com','2/10/2003','false','Kristien Trask'),(30,105,'Minor laceration of left external jugular vein, init encntr','lrylandt@time.com','5/9/1999','true','Mariellen Adamoli'),(31,161,'Encephalitis and encephalomyelitis in diseases classd elswhr','slaurandu@facebook.com','12/25/1998','false','Chrystel Newbury'),(32,18,'Hemorrhage from tracheostomy stoma','lwillshawv@prweb.com','12/25/2001','true','Seline Iacovaccio'),(33,200,'Bathroom in oth non-institutional residence as place','ayukhovw@slashdot.org','1/27/1999','false','Kathy Illsley'),(34,4,'Nondisp fx of unsp radial styloid pro, 7thQ','egumaryx@accuweather.com','4/20/2000','false','Yehudit Bogies'),(35,101,'Underdosing of hemostatic drugs, initial encounter','lavony@telegraph.co.uk','11/18/1996','true','Waldemar Shirtliff'),(36,7,'Adverse effect of unsp antipsychot/neurolept, sequela','bschustlz@feedburner.com','2/22/1999','true','Berke Astill'),(37,113,'Juvenile rheumatoid arthritis with systemic onset, wrist','mwetwood10@ed.gov','6/27/2003','false','Marinna Tonn'),(38,152,'Laceration with foreign body of wrist','lryburn11@vimeo.com','10/12/1995','false','Rudd Kennady'),(39,159,'Coma scale, best motor response, obeys commands, unsp time','kevett12@bloomberg.com','10/20/1996','true','Shelden Murricanes'),(40,168,'Jump/div into natrl body of wtr strk botm cause drown, sqla','mlongstreet13@nymag.com','10/22/1999','false','Marquita Crosio'),(41,142,'Torus fracture of lower end of left ulna','sbarneville14@goodreads.com','4/8/1999','false','Noll Sayton'),(42,13,'Other displaced fracture of lower end of left humerus','lfraczek15@freewebs.com','1/19/1997','true','Linnea Kiffin'),(43,115,'Displ oblique fx shaft of humer, l arm, 7thG','hstathor16@aol.com','4/30/1995','false','Meris Dunster'),(44,37,'Pnctr w/o fb of left eyelid and periocular area, subs','rmcgreary17@nature.com','2/22/2002','false','Vivia Heaps'),(45,140,'Unsp fracture of upper end of unsp humerus, init for clos fx','kaickin18@amazonaws.com','8/13/1997','false','Rutter Baldwin'),(46,181,'Rheu lung disease w rheumatoid arthritis of right ank/ft','swevell19@devhub.com','3/4/2002','false','Kiersten Moulson'),(47,62,'Nondisplaced fracture of lateral malleolus of left fibula','mpeert1a@domainmarket.com','12/11/1995','true','Janina Figin'),(48,99,'Vertebro-basilar artery syndrome','ckyles1b@bloglines.com','5/9/1994','true','Abigail Swyn'),(49,130,'Shop (commercial) as place','lwynett1c@newyorker.com','3/31/1998','false','Hanna Connechie'),(50,15,'Type III occipital condyle fracture, unsp side, sequela','hpinfold1d@symantec.com','8/16/1996','true','Giles Rhys'),(51,119,'Chronic petrositis, bilateral','emacilriach1e@webnode.com','5/13/1997','false','Eleni Biaggioli'),(52,12,'Nondisp commnt fx shaft of l fibula, 7thK','lmcnicol1f@gnu.org','5/21/2002','false','Amalie Salmon'),(53,41,'Mucopolysaccharidosis, type I','elangridge1g@geocities.jp','5/17/1997','false','Tabb Borleace'),(54,198,'Postp hematoma of a nervous sys org fol a nervous sys proc','cdurant1h@wufoo.com','3/9/1999','true','Erina Nodes'),(55,83,'Pnctr w/o fb of r frnt wl of thorax w penet thor cav, subs','lspofforth1i@mayoclinic.com','11/28/2002','false','Mehetabel Steer'),(56,110,'Other displaced fracture of lower end of left humerus','gashtonhurst1j@mayoclinic.com','6/13/1996','false','Cesar MacQuaker'),(57,187,'Infct of amniotic sac and membrns, unsp, third tri, oth','npostle1k@canalblog.com','8/3/2001','true','Laurie Blaker'),(58,96,'Anorexia nervosa, restricting type','lsmitton1l@hp.com','5/19/2001','true','Roselia Rhule'),(59,133,'Frostbite with tissue necrosis of right knee and lower leg','mlammenga1m@house.gov','12/23/1999','true','Elinore Tordoff'),(60,24,'Disorder of glycine metabolism, unspecified','awoodwin1n@amazon.co.uk','11/15/1996','true','Kendrick Fowls'),(61,29,'Other specified injuries of left hip, sequela','amoral1o@creativecommons.org','11/2/1994','true','Nikaniki Richarz'),(62,188,'Nondisp oblique fx shaft of l ulna, 7thP','ppodmore1p@washington.edu','3/16/1994','true','Candis Varvara'),(63,92,'Injury of axillary nerve, unspecified arm, sequela','pcovington1q@auda.org.au','2/26/2002','false','Bartlett Durek'),(64,166,'Disorders of muscle tone of newborn','smcfadzean1r@chron.com','4/29/2002','true','Jessie Whiteman'),(65,39,'Retinopathy of prematurity, stage 0, right eye','hmcgreil1s@howstuffworks.com','8/10/1995','false','Genna Leaver'),(66,42,'Asphyxiation due to hanging, accidental, initial encounter','jsermin1t@twitter.com','4/26/2000','false','Mercie Ellcome'),(67,21,'Oth injuries of pharynx and cervical esophagus, subs encntr','tskynner1u@netvibes.com','11/9/2001','true','Katina Pepall'),(68,9,'Oth fracture of lower end of right ulna, init for clos fx','etarbin1v@wp.com','11/24/2001','true','Donal Vassie'),(69,47,'Superficial frostbite of neck, initial encounter','meborall1w@goo.gl','12/22/1997','false','Gunther Rickets'),(70,90,'Matern care for disproprtn d/t deformity of matern pelv bone','jpail1x@wikipedia.org','11/23/1997','false','Andrew Inglesant'),(71,116,'Anisocoria','fzavattari1y@unesco.org','4/17/1998','true','Gannie Sherrington'),(72,27,'Mech compl of intraperitoneal dialysis catheter, sequela','imetcalf1z@seesaa.net','6/5/2003','true','Devon Gilvear'),(73,95,'Strain msl/tnd lng extn msl toe at ank/ft lev, l foot, init','jbeggini20@ocn.ne.jp','8/15/1999','true','Miles Dradey'),(74,86,'Contus/lac cereb, w loss of consciousness of 1-5 hrs 59 min','mgerrelt21@un.org','5/21/2002','false','Demetre Holtom'),(75,88,'Oth osteopor w crnt path fx, l shldr, 7thG','rmizzen22@multiply.com','1/19/2003','false','Jerrie Drache'),(76,44,'Rheumatic aortic valve diseases','ndenyukhin23@independent.co.uk','8/1/2002','false','Beverlee Boggis'),(77,20,'Unspecified subluxation of right wrist and hand, subs encntr','hmegson24@biglobe.ne.jp','5/14/1999','false','Alfredo Wrightham'),(78,180,'Other instability, left hand','dpullen25@yellowpages.com','4/8/2002','false','Corrine Duns'),(79,182,'Toxic eff of corrosv acids and acid-like substnc, acc, sqla','divanitsa26@npr.org','3/28/2003','false','Ferris Trustrie'),(80,23,'Pressure ulcer of left elbow, stage 2','sknowlys27@economist.com','7/11/2003','true','Massimo Pietrzyk'),(81,82,'Postprocedural shock unspecified','hkhidr28@discovery.com','11/7/1997','false','Kristy Cheetam'),(82,79,'Other displaced dens fracture, init encntr for open fracture','fdast29@ihg.com','1/29/2003','false','Giselle Messager'),(83,67,'Iridodialysis','fthormann2a@wisc.edu','12/21/1997','true','Laurent Penzer'),(84,77,'Frostbite with tissue necrosis of other part of head','smoncey2b@wikipedia.org','11/25/1997','true','Nonie O\'Doogan'),(85,8,'Pain in right leg','kyushachkov2c@state.tx.us','1/14/1999','true','Shir Pudsall'),(86,46,'Prolapse and hernia of ovary and fallop, unspecified side','rpeoples2d@tripod.com','2/15/1994','true','Conway Blase'),(87,154,'Car pasngr injured in nonclsn trnsp accident in traf, init','vmomford2e@webmd.com','6/17/1998','false','Isabelita Ovitts'),(88,5,'Other decreased white blood cell count','emcharry2f@hugedomains.com','3/24/2000','true','Nickey Pache'),(89,31,'Laceration of muscle and tendon of head, sequela','shitzmann2g@example.com','1/7/2001','true','Fremont Sexton'),(90,111,'Enlargement of left orbit','enewstead2h@digg.com','7/19/1995','true','Emylee Dorward'),(91,69,'Disp fx of lateral malleolus of l fibula, 7thF','sballard2i@netscape.com','4/12/1994','true','Gregor Catchpole'),(92,76,'Bitten by orca','wcobbe2j@github.com','11/13/1997','true','Dorisa Fehner'),(93,117,'Cont preg aft uterin dth of one fetus or more, 2nd tri, fts5','gmenham2k@ameblo.jp','12/6/1997','false','Lutero Thrush'),(94,124,'Anterior dislocation of unsp sternoclavicular joint, init','delliss2l@blogtalkradio.com','12/5/1995','false','Krisha Norcott'),(95,108,'Insect bite (nonvenomous) of lower back and pelvis','ggoldstone2m@senate.gov','6/11/2001','true','Imogene Ivashinnikov'),(96,150,'Burn of unspecified degree of back of left hand, sequela','gmulberry2n@netvibes.com','7/16/2003','true','Olly Oxnam'),(97,141,'Displ osteochon fx left patella, subs for clos fx w nonunion','hbeynke2o@youtu.be','3/11/2000','false','Addie Madsen'),(98,68,'Other neurofibromatosis','jrogers2p@bizjournals.com','11/15/1995','false','Lorilee Odom'),(99,176,'Myositis ossificans traumatica, unspecified forearm','callicock2q@t.co','10/8/2003','false','Glen Falvey'),(100,71,'Traum rupt of unsp ligmt of r idx fngr at MCP/IP jt, sequela','agronous2r@opera.com','6/8/1998','false','Lynsey Hradsky'),(101,56,'Cervical disc disorder w radiculopathy, mid-cervical region','iwayne2s@shareasale.com','11/6/1997','true','Brit Fessions'),(102,139,'Contusion of unspecified part of colon, subsequent encounter','ikristufek2t@nytimes.com','1/2/1994','false','Cortney Wayne'),(103,126,'Nondisp oblique fx shaft of r rad, 7thC','rcambridge2u@opera.com','12/13/2000','false','Efrem Fleckney'),(104,136,'Disp fx of base of nk of l femr, subs for clos fx w malunion','nlebarr2v@harvard.edu','3/14/2003','false','Shaun Camus'),(105,10,'Open bite of forearm','nspyvye2w@ca.gov','1/28/1995','true','Lindi Goulbourne'),(106,22,'Fracture of subcondylar process of right mandible, 7thK','wavann2x@abc.net.au','10/29/2003','true','Krystyna Quirk'),(107,143,'Underdosing of methadone, subsequent encounter','bventham2y@infoseek.co.jp','5/30/1998','false','Wakefield Swinburne'),(108,81,'Diffuse TBI w LOC >24 hr w return to conscious levels, init','cbracknell2z@about.me','9/7/1995','false','Kelbee Trorey'),(109,185,'Contusion of bronchus, bilateral','rbrehat30@nba.com','10/29/1999','false','Layne Hagergham'),(110,75,'Obstructed labor due to breech presentation, unsp','cmacinerney31@webs.com','10/31/2000','false','Roch Robion'),(111,85,'Major laceration of head of pancreas, subsequent encounter','rgrece32@earthlink.net','1/9/1996','false','Lyndsey Steers'),(112,6,'War operations involving oth dest arcrft, civilian, sequela','cbruyntjes33@goo.gl','10/8/2000','false','Emelia Peare'),(113,53,'Poisoning by antipruritics, accidental (unintentional)','lbebis34@nba.com','4/9/2003','false','Claudia Tissington'),(114,165,'Inj oth blood vessels at wrs/hnd lv of unsp arm, sequela','cokker35@arizona.edu','8/12/1998','false','Rheta Vasic'),(115,192,'Toxic effect of glycols, accidental (unintentional), subs','bcogman36@canalblog.com','11/5/2002','false','Wynne Jermyn'),(116,80,'Burn of third degree of left knee, subsequent encounter','mpydcock37@hugedomains.com','5/20/1995','true','Bren Aizikovitch'),(117,153,'Suberosis','jfumagallo38@edublogs.org','1/8/2002','false','Brander Erridge'),(118,104,'Nonrheumatic tricuspid (valve) stenosis with insufficiency','cferrarini39@oracle.com','9/4/1998','false','Ray Ottosen'),(119,98,'Sltr-haris Type I physeal fx unspecified metatarsal, 7thD','khague3a@slate.com','10/21/2003','false','Jacinda Shelliday'),(120,172,'Obst due to fb acc left in body fol kidney dialysis, init','cgoodby3b@scribd.com','4/22/2001','true','Papagena Hassen'),(121,151,'Post disp fx of sternal end r clavicle, 7thG','pparzis3c@amazon.co.uk','3/24/2002','false','Albert Sanches'),(122,43,'Blister (nonthermal) of eyelid and periocular area','kellens3d@networksolutions.com','8/29/2002','false','Blinni Buttner'),(123,135,'Poisoning by antimalari/drugs acting on bld protzoa, undet','lgerhardt3e@gmpg.org','8/23/2003','false','Manya Lapsley'),(124,1,'Opioid depend w opioid-induc psychotic disorder w delusions','jmcbeath3f@ask.com','5/16/1998','false','Marci Grundle'),(125,129,'Corros 2nd deg mul left fingers (nail), not including thumb','rsnewin3g@smh.com.au','5/15/1997','true','Xylina Smith'),(126,175,'Personal history of congenital malform of face and neck','aleek3h@1688.com','8/21/1996','false','Guinna Gounet'),(127,197,'Unsp injury of intercostal blood vessels, left side, init','jconstanza3i@studiopress.com','2/2/1994','true','Estevan Jaume'),(128,55,'Contus/lac r cereb w LOC w dth d/t oth cause bf consc, sqla','filymanov3j@de.vu','9/27/2003','true','Kylila Game'),(129,72,'Glider (nonpowered) fire injuring occupant, subs encntr','sstrover3k@lycos.com','7/24/2002','true','Stewart Vahey'),(130,35,'Fracture of coronoid process of right mandible, 7thG','aandreucci3l@mapy.cz','11/13/1995','false','Erena O\' Shea'),(131,2,'Abuse of laxatives','sschiell3m@merriam-webster.com','10/27/2003','false','Ursola Lies'),(132,155,'Breakdown (mechanical) of urinary catheter','cpero3n@discovery.com','6/26/2001','true','Stacia Sutty'),(133,162,'Stenosis due to internal orthopedic prosth dev/grft, subs','lhullah3o@deliciousdays.com','2/1/2003','false','Bunnie Crosswaite'),(134,52,'Unspecified open wound of oral cavity, initial encounter','eoxx3p@ezinearticles.com','7/4/1994','false','Laryssa Trowill'),(135,171,'Burn of first degree of right scapular region','dphettis3q@skype.com','5/15/2003','false','Stesha Curnok'),(136,158,'Zygomatic fracture, right side, sequela','ilukianovich3r@jigsy.com','11/21/1995','false','Erena Gilhoolie'),(137,59,'Other superficial bite of hand of right hand, subs encntr','aevreux3s@umich.edu','5/15/2002','true','Shellysheldon Richel'),(138,65,'Corrosion of unspecified degree of chest wall, subs encntr','nskrzynski3t@dailymail.co.uk','5/17/2002','false','Barbara-anne Parbrook'),(139,84,'Systemic lupus erythematosus w organ or system involvement','htimewell3u@chicagotribune.com','5/23/2003','true','Dionne Shortall'),(140,89,'Intraop hemor/hemtom of a circ sys org comp card bypass','gcolles3v@microsoft.com','4/14/2000','false','Perceval Vain'),(141,34,'Disord of muscle in diseases classd elswhr, unsp lower leg','trenyard3w@is.gd','8/20/1999','true','Marleen Attenborough'),(142,19,'Milt op w direct blast effect of nuclear weapon, milt','afoat3x@virginia.edu','10/30/1994','false','Quint Orans'),(143,160,'Adverse effect of electrolytic/caloric/wtr-bal agnt, init','cmolesworth3y@photobucket.com','3/19/1998','true','Chad Trulocke'),(144,16,'Nondisp unsp condyle fx low end r femr, 7thC','jharly3z@wp.com','6/26/1994','false','Amy Leahy'),(145,64,'Unsp fx the low end l rad, 7thF','nwestrip40@lulu.com','2/7/1999','false','Nert Chevis'),(146,32,'Other variants of Turner\'s syndrome','dsandom41@paypal.com','11/25/2002','false','Kristofer Rosenfelder'),(147,107,'Pnctr w fb of abd wall, l upr q w penet perit cav, sequela','nnuttey42@msn.com','5/11/1998','true','Chrisy Hessentaler'),(148,63,'Polyhydramnios, first trimester, fetus 1','jparslow43@aboutads.info','10/10/2000','true','Dru Ledgerton'),(149,137,'Prem separtn of placenta w dissem intravasc coag, second tri','jbardill44@ow.ly','6/21/1996','true','Koral Annesley'),(150,66,'Contact with edge of stiff paper, sequela','kmacphee45@loc.gov','12/26/1995','true','Cora Stollberg'),(151,148,'Other dislocation of unspecified radial head, init encntr','cseiller46@taobao.com','7/14/2003','false','Georgetta Yesson'),(152,93,'Complete lesion at C4 level of cervical spinal cord, sequela','cgrimmett47@jugem.jp','3/11/1995','false','Lucienne Vondrasek'),(153,196,'Anejaculatory orgasm','jshevlin48@surveymonkey.com','8/16/1996','true','Ronnica Heckner'),(154,51,'Poisn by slctv serotonin reuptake inhibtr, self-harm, subs','nfriman49@comcast.net','1/25/1998','true','Vinni Trunkfield'),(155,109,'Agoraphobia with panic disorder','cguthrum4a@sourceforge.net','1/21/2003','false','Darrelle Cocozza'),(156,177,'Parachutist injured on landing','ymccrann4b@independent.co.uk','8/26/2000','true','Renelle Misson'),(157,128,'Follicular cyst of left ovary','lgyppes4c@usgs.gov','11/4/2001','false','Humfried Colecrough'),(158,50,'Subluxation of proximal interphaln joint of r mid finger','hpackham4d@de.vu','7/23/1994','true','Sherman Joint'),(159,48,'Coma scale, best motor response, obeys commands, 24+hrs','mgasticke4e@google.co.uk','10/15/1997','true','Bobina Culcheth'),(160,73,'Displ oth extrartic fx r calcaneus, subs for fx w routn heal','mfarnes4f@icq.com','8/24/2000','false','Zacharie Milliere'),(161,61,'Jump/div from boat striking bottom causing oth injury, subs','ovanderbaaren4g@chron.com','6/10/1999','true','Carlos Gillam'),(162,28,'Oth fx head/neck of unsp femr, 7thE','xlere4h@amazon.de','2/28/2001','false','Ambrosio Bartleet'),(163,178,'Cognitive communication deficit','zstudart4i@gizmodo.com','4/4/2002','false','Arni Dewdney'),(164,33,'Laceration w fb of unsp toe(s) w damage to nail, init','prylett4j@ox.ac.uk','1/21/1996','true','Douglass Lownsbrough'),(165,102,'Extreme immaturity of NB, gestatnl age < 23 completed weeks','whabard4k@comcast.net','5/17/2002','false','Fredi Mapledoram'),(166,114,'Incomplete lesion of sacral spinal cord, subs encntr','rswansbury4l@spotify.com','3/1/1996','false','Reagan Arrigucci'),(167,169,'Dacryops of bilateral lacrimal glands','ihindrich4m@nba.com','10/2/2002','true','Florrie Glasheen'),(168,122,'Nondisp fx of less tuberosity of unsp humer, 7thG','clewknor4n@photobucket.com','9/13/1997','false','Klemens Bannon'),(169,163,'Unsp superficial injury of unsp lesser toe(s), sequela','ecurdell4o@photobucket.com','3/8/1999','true','Eve MacNeill'),(170,3,'Activity, ice hockey','khully4p@liveinternet.ru','11/7/1998','false','Gerianna Dacombe'),(171,57,'Lac w/o fb of l frnt wl of thorax w penet thor cavity, subs','rburge4q@blogspot.com','7/30/1999','true','Quillan Buzin'),(172,58,'Traumatic metacarpophalangeal amputation of thumb','duccelli4r@ucsd.edu','4/15/2001','false','Margaretha Buchett'),(173,94,'Other symptoms and signs involving appearance and behavior','bwildgoose4s@free.fr','4/12/2000','true','Fraser Seddon'),(174,149,'Poisn by androgens and anabolic congeners, assault, sequela','abendall4t@biblegateway.com','1/21/1994','false','Emelina Perrins'),(175,112,'Underdosing of nonsteroidal anti-inflammatory drugs, init','celsom4u@pbs.org','1/28/2000','true','Victoir Aloshechkin'),(176,190,'Inj musc/tend peroneal grp at low leg level, unsp leg, subs','lgladdolph4v@goodreads.com','2/8/2003','false','Margaretha Muckeen'),(177,146,'Nondisp commnt fx shaft of l tibia, 7thP','gleggan4w@nymag.com','1/27/1996','true','Maren Leipoldt'),(178,164,'Broken internal right hip prosthesis, subsequent encounter','jotridge4x@vimeo.com','3/26/2001','true','Perla Lafont'),(179,131,'Ped on sktbrd injured in collision w pedl cyc nontraf, init','lcryer4y@flickr.com','10/20/1994','true','Cullan Bloxland'),(180,106,'Drown due to unpowr wtrcrft overturning, subs','jnequest4z@businessweek.com','12/23/1998','false','Erina Wye'),(181,74,'Disp fx of neck of fifth metacarpal bone, right hand, init','lbyforth50@marriott.com','8/4/1994','true','Gretna Rhoades'),(182,144,'Oth fx l low leg, subs for opn fx type 3A/B/C w malunion','lreyner51@amazon.com','3/16/2001','false','Werner Oneil'),(183,14,'Disp fx of prox 3rd of navic bone of l wrs, 7thP','egiacobo52@comsenz.com','10/26/2001','false','Roselia Pymer'),(184,25,'Complete traumatic amp of unsp lower leg, level unsp, init','atreby53@vk.com','12/3/1997','false','Aylmer Tinniswood'),(185,130,'Nondisplaced trimalleolar fracture of left lower leg','crawling54@tamu.edu','9/28/1997','false','Sergei Sturridge'),(186,155,'Toxic effect of taipan venom, undetermined','lvernazza55@nyu.edu','12/12/1998','false','Otha Cawte'),(187,53,'Nondisp longitud fx l patella, 7thR','mmacconneely56@google.cn','11/23/2003','false','Jackie Bernardotti'),(188,137,'Non-pressure chronic ulcer of unspecified heel and midfoot','mrowcliffe57@vimeo.com','10/30/2003','true','Ripley Abbate'),(189,178,'Anticholinesterase agents','tchesney58@noaa.gov','3/3/1997','false','Ripley Abbate'),(190,82,'Osteopathy in diseases classified elsewhere, unsp lower leg','eruggiero59@163.com','8/7/1997','false','Bobina Culcheth'),(191,9,'Unsp subluxation of unspecified wrist and hand, init encntr','stogwell5a@nbcnews.com','11/25/1995','false','Erina Nodes'),(192,62,'Unsp injury of superficial palmar arch of unsp hand, init','npyffe5b@example.com','4/5/1998','true','Jacinda Shelliday'),(193,25,'Disp fx of dist phalanx of r lit fngr, 7thG','rcantwell5c@desdev.cn','5/7/1996','false','Rutter Baldwin'),(194,145,'Person outsd pk-up/van inj in clsn w pedl cyc in traf, subs','fludlom5d@alibaba.com','4/25/2001','true','Efrem Fleckney'),(195,18,'Drug induced acute pancreatitis with uninfected necrosis','glefleming5e@cpanel.net','8/24/1995','true','Roselia Pymer'),(196,15,'Passenger of special industr vehicle injured in traf, subs','acollocott5f@naver.com','2/6/1996','false','Laurent Penzer'),(197,44,'Laceration w fb of unsp lesser toe(s) w damage to nail, init','atiddeman5g@mediafire.com','12/18/1994','false','Cassy McGuffie'),(198,61,'Lacerat blood vessels at wrs/hnd lv of left arm, sequela','moakeby5h@biblegateway.com','1/6/1995','false','Dru Ledgerton'),(199,7,'Type III traum spondylolysis of 2nd cervcal vert, 7thD','bmccormack5i@sitemeter.com','12/23/1995','false','Lynsey Hradsky'),(200,58,'War op w explosn of sea-based artlry shell, civilian, subs','sferrige5j@qq.com','6/26/1995','true','Krystyna Quirk');
/*!40000 ALTER TABLE `patient_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `personID` int NOT NULL,
  `person_insurance_id` int NOT NULL,
  KEY `personID_idx` (`personID`),
  KEY `insurance_id_idx` (`person_insurance_id`),
  CONSTRAINT `person_insurance_id` FOREIGN KEY (`person_insurance_id`) REFERENCES `insurance_type` (`insurance_id`),
  CONSTRAINT `personID` FOREIGN KEY (`personID`) REFERENCES `patient_info` (`Person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (4,12),(142,100),(28,21),(24,46),(141,154),(78,32),(74,68),(54,103),(156,113),(87,187),(11,50),(81,3),(183,200),(117,89),(57,123),(15,67),(139,147),(75,197),(181,91),(20,99),(25,192),(121,157),(79,25),(16,155),(109,108),(112,191),(52,189),(145,127),(38,182),(137,193),(44,1),(180,6),(146,140),(103,105),(60,26),(110,104),(115,47),(10,30),(46,87),(123,165),(188,174),(53,184),(158,131),(129,180),(36,13),(19,130),(85,11),(108,175),(144,139),(116,40),(14,72),(135,144),(61,190),(124,136),(49,63),(185,185),(90,93),(175,142),(92,71),(96,35),(31,137),(172,69),(2,116),(65,164),(82,52),(33,90),(134,29),(157,119),(132,51),(91,27),(111,85),(143,151),(40,122),(150,22),(56,126),(165,135),(170,145),(43,132),(197,53),(199,102),(37,4),(69,163),(27,96),(9,31),(93,156),(166,124),(48,97),(178,7),(70,150),(99,10),(168,14),(8,19),(29,168),(114,160),(155,65),(66,66),(177,9),(21,188),(152,186),(5,161),(32,110),(131,18),(62,159),(1,86),(6,57),(195,81),(190,101),(76,48),(151,143),(26,60),(47,55),(174,80),(95,106),(126,95),(39,196),(41,41),(64,23),(23,84),(148,33),(13,129),(86,28),(160,77),(192,177),(104,109),(179,170),(73,125),(182,78),(167,118),(98,58),(88,167),(51,43),(138,141),(140,107),(12,8),(161,152),(153,2),(17,15),(7,34),(173,44),(89,36),(154,20),(162,176),(106,149),(118,158),(107,70),(169,45),(18,183),(67,128),(147,195),(77,42),(105,5),(163,17),(58,62),(187,37),(189,16),(113,24),(63,162),(119,153),(42,133),(149,198),(72,134),(34,74),(171,38),(84,82),(127,61),(35,73),(102,148),(59,92),(45,54),(122,75),(186,166),(97,138),(83,120),(198,39),(164,181),(94,115),(193,83),(101,59),(3,111),(191,169),(196,117),(22,146),(133,173),(200,114),(125,46),(30,102),(71,66),(96,92),(146,198),(177,171),(71,117),(4,168),(80,158),(53,10),(144,13),(189,27),(184,142),(135,69),(17,99),(78,42);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provides`
--

DROP TABLE IF EXISTS `provides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provides` (
  `provides_insurance_id` int NOT NULL,
  `provides_claim_id` int NOT NULL,
  KEY `insurance_id_idx` (`provides_insurance_id`),
  KEY `claim_id_idx` (`provides_claim_id`),
  CONSTRAINT `provides_claim_id` FOREIGN KEY (`provides_claim_id`) REFERENCES `claim_details` (`claim_id`),
  CONSTRAINT `provides_insurance_id` FOREIGN KEY (`provides_insurance_id`) REFERENCES `insurance_type` (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provides`
--

LOCK TABLES `provides` WRITE;
/*!40000 ALTER TABLE `provides` DISABLE KEYS */;
INSERT INTO `provides` VALUES (179,97),(178,10),(183,100),(29,56),(129,91),(55,17),(20,173),(149,48),(26,176),(131,1),(13,34),(83,164),(152,156),(143,189),(61,115),(155,45),(119,192),(64,95),(141,180),(95,162),(33,117),(114,174),(125,69),(190,63),(48,142),(88,15),(8,108),(171,31),(102,7),(38,86),(111,75),(170,103),(168,64),(17,88),(191,37),(93,99),(133,178),(54,112),(87,4),(71,157),(94,134),(91,107),(62,191),(139,139),(96,40),(115,183),(199,145),(121,98),(198,49),(148,166),(116,130),(145,83),(127,168),(157,79),(153,194),(31,2),(105,104),(63,154),(43,16),(175,177),(112,102),(12,198),(36,184),(144,70),(45,121),(159,87),(25,50),(120,106),(126,6),(42,105),(4,181),(167,60),(80,21),(24,71),(28,193),(156,110),(163,172),(106,66),(21,41),(22,3),(79,136),(172,197),(41,143),(99,170),(113,23),(53,59),(169,140),(109,30),(50,152),(30,96),(132,43),(47,39),(23,46),(180,42),(118,25),(73,146),(146,199),(197,80),(84,114),(101,18),(184,51),(11,188),(110,11),(56,78),(81,92),(134,169),(195,20),(35,158),(188,123),(137,128),(37,58),(194,116),(151,90),(128,127),(82,32),(74,165),(174,73),(103,167),(193,118),(150,84),(107,72),(75,94),(185,111),(68,155),(85,35),(34,62),(65,8),(66,13),(19,5),(164,149),(60,195),(9,67),(138,76),(89,9),(136,54),(69,109),(3,161),(57,196),(76,171),(18,135),(77,38),(166,47),(158,150),(192,131),(40,124),(2,120),(98,14),(142,200),(49,26),(1,125),(122,24),(176,129),(135,179),(78,29),(161,126),(186,82),(14,74),(177,148),(44,141),(160,153),(173,187),(92,19),(46,93),(154,137),(187,77),(100,163),(90,159),(70,119),(130,101),(117,28),(6,160),(97,122),(51,113),(72,89),(15,57),(16,33),(86,12),(7,138),(104,133),(140,44),(59,144),(52,76),(162,24),(58,39),(175,147),(128,115),(108,185),(89,50),(190,75),(126,69),(180,40),(135,9),(10,130),(18,128),(157,7),(7,43),(147,27),(167,112),(125,23),(81,157);
/*!40000 ALTER TABLE `provides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `purchases_person_id` int NOT NULL,
  `start_date` varchar(10) NOT NULL,
  `end_date` varchar(10) NOT NULL,
  PRIMARY KEY (`purchases_person_id`),
  CONSTRAINT `purchases_person_id` FOREIGN KEY (`purchases_person_id`) REFERENCES `patient_info` (`Person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,'7/13/2022','7/13/2023'),(2,'7/28/2022','7/28/2023'),(3,'7/24/2022','7/24/2023'),(4,'8/3/2022','8/3/2023'),(5,'8/2/2022','8/2/2023'),(7,'8/9/2022','8/9/2023'),(8,'7/9/2022','7/9/2023'),(9,'7/5/2022','7/5/2023'),(10,'8/8/2022','8/8/2023'),(11,'8/16/2022','8/16/2023'),(12,'7/31/2022','7/31/2023'),(13,'8/2/2022','8/2/2023'),(14,'7/5/2022','7/5/2023'),(15,'8/23/2022','8/23/2023'),(16,'7/29/2022','7/29/2023'),(17,'7/26/2022','7/26/2023'),(18,'8/24/2022','8/24/2023'),(19,'7/5/2022','7/5/2023'),(20,'7/31/2022','7/31/2023'),(21,'8/4/2022','8/4/2023'),(22,'8/26/2022','8/26/2023'),(23,'8/19/2022','8/19/2023'),(24,'8/19/2022','8/19/2023'),(25,'7/1/2022','7/1/2023'),(26,'8/30/2022','8/30/2023'),(27,'8/10/2022','8/10/2023'),(28,'7/22/2022','7/22/2023'),(29,'7/31/2022','7/31/2023'),(31,'8/4/2022','8/4/2023'),(32,'8/17/2022','8/17/2023'),(34,'7/16/2022','7/16/2023'),(35,'8/13/2022','8/13/2023'),(36,'7/10/2022','7/10/2023'),(37,'8/24/2022','8/24/2023'),(38,'7/2/2022','7/2/2023'),(39,'8/28/2022','8/28/2023'),(40,'7/14/2022','7/14/2023'),(41,'8/10/2022','8/10/2023'),(42,'8/6/2022','8/6/2023'),(43,'8/26/2022','8/26/2023'),(44,'7/29/2022','7/29/2023'),(45,'7/14/2022','7/14/2023'),(46,'8/25/2022','8/25/2023'),(47,'8/19/2022','8/19/2023'),(48,'8/18/2022','8/18/2023'),(49,'8/30/2022','8/30/2023'),(50,'8/26/2022','8/26/2023'),(51,'8/2/2022','8/2/2023'),(52,'7/4/2022','7/4/2023'),(53,'8/13/2022','8/13/2023'),(54,'8/3/2022','8/3/2023'),(55,'7/15/2022','7/15/2023'),(56,'8/15/2022','8/15/2023'),(57,'8/3/2022','8/3/2023'),(58,'8/18/2022','8/18/2023'),(59,'8/23/2022','8/23/2023'),(60,'7/10/2022','7/10/2023'),(61,'8/20/2022','8/20/2023'),(62,'7/10/2022','7/10/2023'),(63,'7/11/2022','7/11/2023'),(64,'8/3/2022','8/3/2023'),(65,'7/9/2022','7/9/2023'),(66,'8/15/2022','8/15/2023'),(67,'8/1/2022','8/1/2023'),(68,'7/9/2022','7/9/2023'),(69,'7/21/2022','7/21/2023'),(70,'7/23/2022','7/23/2023'),(71,'7/3/2022','7/3/2023'),(72,'8/11/2022','8/11/2023'),(73,'7/8/2022','7/8/2023'),(74,'8/26/2022','8/26/2023'),(75,'7/2/2022','7/2/2023'),(76,'7/7/2022','7/7/2023'),(77,'7/14/2022','7/14/2023'),(78,'8/24/2022','8/24/2023'),(79,'8/21/2022','8/21/2023'),(80,'7/2/2022','7/2/2023'),(81,'8/16/2022','8/16/2023'),(82,'7/19/2022','7/19/2023'),(85,'8/15/2022','8/15/2023'),(87,'8/24/2022','8/24/2023'),(88,'8/16/2022','8/16/2023'),(89,'8/18/2022','8/18/2023'),(90,'8/30/2022','8/30/2023'),(91,'7/13/2022','7/13/2023'),(92,'7/26/2022','7/26/2023'),(93,'7/29/2022','7/29/2023'),(94,'7/29/2022','7/29/2023'),(95,'8/29/2022','8/29/2023'),(96,'8/28/2022','8/28/2023'),(97,'8/1/2022','8/1/2023'),(99,'8/13/2022','8/13/2023'),(101,'7/7/2022','7/7/2023'),(102,'8/5/2022','8/5/2023'),(103,'8/13/2022','8/13/2023'),(104,'8/21/2022','8/21/2023'),(105,'7/1/2022','7/1/2023'),(106,'7/31/2022','7/31/2023'),(107,'7/28/2022','7/28/2023'),(108,'7/14/2022','7/14/2023'),(110,'7/22/2022','7/22/2023'),(111,'7/19/2022','7/19/2023'),(112,'8/7/2022','8/7/2023'),(113,'8/17/2022','8/17/2023'),(114,'8/9/2022','8/9/2023'),(115,'8/16/2022','8/16/2023'),(116,'7/2/2022','7/2/2023'),(117,'8/10/2022','8/10/2023'),(118,'7/20/2022','7/20/2023'),(120,'7/21/2022','7/21/2023'),(121,'8/26/2022','8/26/2023'),(122,'8/28/2022','8/28/2023'),(123,'7/21/2022','7/21/2023'),(124,'8/1/2022','8/1/2023'),(125,'7/29/2022','7/29/2023'),(126,'8/3/2022','8/3/2023'),(127,'8/1/2022','8/1/2023'),(128,'7/10/2022','7/10/2023'),(129,'8/27/2022','8/27/2023'),(130,'8/10/2022','8/10/2023'),(131,'8/3/2022','8/3/2023'),(132,'8/25/2022','8/25/2023'),(133,'8/15/2022','8/15/2023'),(134,'8/29/2022','8/29/2023'),(135,'8/5/2022','8/5/2023'),(136,'8/24/2022','8/24/2023'),(137,'7/20/2022','7/20/2023'),(138,'8/30/2022','8/30/2023'),(139,'8/22/2022','8/22/2023'),(140,'8/3/2022','8/3/2023'),(141,'7/4/2022','7/4/2023'),(142,'7/2/2022','7/2/2023'),(143,'7/2/2022','7/2/2023'),(144,'8/18/2022','8/18/2023'),(145,'8/22/2022','8/22/2023'),(146,'8/28/2022','8/28/2023'),(147,'8/17/2022','8/17/2023'),(148,'7/13/2022','7/13/2023'),(150,'8/1/2022','8/1/2023'),(151,'7/30/2022','7/30/2023'),(152,'8/28/2022','8/28/2023'),(153,'7/27/2022','7/27/2023'),(154,'7/25/2022','7/25/2023'),(155,'8/28/2022','8/28/2023'),(156,'8/1/2022','8/1/2023'),(157,'8/22/2022','8/22/2023'),(158,'8/27/2022','8/27/2023'),(159,'7/17/2022','7/17/2023'),(160,'8/11/2022','8/11/2023'),(161,'8/17/2022','8/17/2023'),(162,'7/9/2022','7/9/2023'),(163,'8/29/2022','8/29/2023'),(164,'7/25/2022','7/25/2023'),(165,'8/3/2022','8/3/2023'),(166,'8/14/2022','8/14/2023'),(167,'7/31/2022','7/31/2023'),(168,'7/23/2022','7/23/2023'),(169,'7/9/2022','7/9/2023'),(170,'8/19/2022','8/19/2023'),(171,'8/2/2022','8/2/2023'),(172,'7/25/2022','7/25/2023'),(173,'8/13/2022','8/13/2023'),(174,'7/30/2022','7/30/2023'),(175,'8/27/2022','8/27/2023'),(176,'8/13/2022','8/13/2023'),(177,'7/28/2022','7/28/2023'),(178,'8/2/2022','8/2/2023'),(179,'7/20/2022','7/20/2023'),(180,'8/16/2022','8/16/2023'),(181,'7/26/2022','7/26/2023'),(182,'7/3/2022','7/3/2023'),(183,'8/27/2022','8/27/2023'),(185,'7/8/2022','7/8/2023'),(186,'8/1/2022','8/1/2023'),(187,'7/11/2022','7/11/2023'),(188,'8/11/2022','8/11/2023'),(189,'7/29/2022','7/29/2023'),(190,'7/1/2022','7/1/2023'),(191,'8/18/2022','8/18/2023'),(192,'7/16/2022','7/16/2023'),(193,'7/5/2022','7/5/2023'),(194,'8/18/2022','8/18/2023'),(195,'8/7/2022','8/7/2023'),(196,'7/16/2022','7/16/2023'),(197,'7/26/2022','7/26/2023'),(198,'8/8/2022','8/8/2023'),(199,'7/28/2022','7/28/2023'),(200,'8/12/2022','8/12/2023');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `Test_code` int NOT NULL,
  `billid` int NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`Test_code`),
  KEY `billid_idx` (`billid`),
  CONSTRAINT `billid` FOREIGN KEY (`billid`) REFERENCES `bill` (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,26,8677),(2,17,3440),(3,64,8622),(4,89,2955),(5,165,7672),(6,192,6732),(7,57,984),(8,101,4706),(9,69,9830),(10,36,1739),(11,83,4353),(12,76,1902),(13,170,9851),(14,148,6121),(15,58,9438),(16,124,2637),(17,141,7633),(18,96,1713),(19,49,1493),(20,61,6086),(21,32,6225),(22,19,2910),(23,63,3939),(24,176,2045),(25,78,487),(26,55,4898),(27,81,7872),(28,53,5689),(29,184,6482),(30,38,7484),(31,113,8050),(32,35,835),(33,181,8603),(34,43,6956),(35,6,7369),(36,173,9857),(37,128,3447),(38,33,9215),(39,24,3535),(40,97,1726),(41,172,1852),(42,39,1046),(43,180,2434),(44,106,5887),(45,41,7275),(46,163,7785),(47,88,2069),(48,195,1688),(49,126,2762),(50,198,7095),(51,145,6239),(52,82,4515),(53,160,1250),(54,9,401),(55,143,9131),(56,71,8601),(57,120,6976),(58,161,9685),(59,200,9909),(60,179,204),(61,149,9655),(62,1,3574),(63,14,6804),(64,144,9962),(65,109,1506),(66,86,4018),(67,168,7165),(68,167,4319),(69,85,1524),(70,34,2454),(71,99,2290),(72,44,8105),(73,60,2531),(74,77,7610),(75,169,5644),(76,23,7645),(77,27,9717),(78,50,8105),(79,51,460),(80,159,7943),(81,12,6633),(82,13,100),(83,48,4241),(84,139,992),(85,151,3317),(86,11,6039),(87,130,638),(88,5,8060),(89,157,7466),(90,62,8297),(91,37,1059),(92,100,7129),(93,183,6721),(94,30,8854),(95,92,6452),(96,136,8947),(97,112,6454),(98,166,593),(99,182,3842),(100,191,4190),(101,105,1629),(102,154,5594),(103,177,2238),(104,80,3812),(105,134,3452),(106,102,4256),(107,68,9413),(108,125,2243),(109,137,3031),(110,158,1883),(111,59,7087),(112,31,5792),(113,171,1067),(114,73,6567),(115,21,4529),(116,103,1251),(117,147,8033),(118,199,8109),(119,123,5567),(120,70,2984),(121,74,2235),(122,66,8160),(123,135,1728),(124,10,7230),(125,153,8460),(126,28,7811),(127,98,9807),(128,121,2170),(129,45,9930),(130,40,405),(131,189,7322),(132,52,4947),(133,175,5308),(134,46,5354),(135,8,8770),(136,187,8508),(137,93,4444),(138,67,2126),(139,119,6706),(140,196,2026),(141,91,6693),(142,95,3862),(143,116,7877),(144,47,5098),(145,142,1758),(146,2,132),(147,115,6974),(148,131,4829),(149,164,9248),(150,104,856),(151,18,9170),(152,110,1362),(153,197,2533),(154,188,6674),(155,174,7786),(156,193,463),(157,108,8505),(158,87,7634),(159,138,7433),(160,84,5699),(161,129,5211),(162,133,2839),(163,190,2052),(164,94,7377),(165,15,119),(166,111,4861),(167,155,1612),(168,79,8866),(169,152,7766),(170,65,171),(171,16,7742),(172,127,8809),(173,185,6856),(174,140,9770),(175,90,5159),(176,4,7581),(177,146,8264),(178,132,6042),(179,29,6753),(180,7,6446),(181,20,6425),(182,114,9318),(183,178,9654),(184,156,6010),(185,150,5343),(186,186,1699),(187,54,3101),(188,117,204),(189,111,997),(190,76,4458),(191,152,3430),(192,32,146),(193,132,9944),(194,68,9938),(195,18,2017),(196,70,1300),(197,100,2556),(198,180,925),(199,15,1023),(200,65,933);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment` (
  `infection_code` int NOT NULL,
  `treatment_hospital_id` int NOT NULL,
  `treatment_code` int NOT NULL,
  PRIMARY KEY (`treatment_code`),
  KEY `infection_code_idx` (`infection_code`),
  KEY `hospital_id_idx` (`treatment_hospital_id`),
  CONSTRAINT `infection_code` FOREIGN KEY (`infection_code`) REFERENCES `injury` (`infection_code`),
  CONSTRAINT `treatment_hospital_id` FOREIGN KEY (`treatment_hospital_id`) REFERENCES `hospital` (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (23,44,1),(130,1,2),(159,6,3),(172,41,4),(167,35,5),(144,13,6),(6,21,7),(84,51,8),(117,7,9),(110,17,10),(70,16,11),(38,60,12),(26,38,13),(76,23,14),(192,42,15),(79,49,16),(127,53,17),(85,20,18),(68,36,19),(105,19,20),(16,30,21),(151,59,22),(140,50,23),(91,34,24),(115,32,25),(7,61,26),(98,15,27),(27,28,28),(170,5,29),(52,46,30),(149,27,31),(71,33,32),(157,8,33),(174,22,34),(109,54,35),(197,56,36),(181,48,37),(42,58,38),(107,18,39),(3,12,40),(90,26,41),(156,9,42),(175,29,43),(72,45,44),(155,39,45),(108,52,46),(160,2,47),(165,40,48),(33,10,49),(44,25,50),(47,47,51),(80,3,52),(20,57,53),(179,31,54),(10,37,55),(74,11,56),(169,4,57),(73,55,58),(184,14,59),(58,43,60),(132,24,61),(30,11,62),(19,32,63),(121,61,64),(125,31,65),(37,15,66),(67,16,67),(143,48,68),(12,27,69),(148,2,70),(188,13,71),(14,49,72),(97,1,73),(81,56,74),(17,37,75),(118,55,76),(101,4,77),(122,52,78),(171,17,79),(163,26,80),(112,60,81),(45,50,82),(96,57,83),(40,53,84),(166,7,85),(185,30,86),(104,18,87),(31,10,88),(75,36,89),(154,6,90),(55,21,91),(50,35,92),(190,14,93),(146,8,94),(194,28,95),(183,58,96),(69,43,97),(100,38,98),(123,5,99),(49,24,100),(15,25,101),(193,39,102),(99,20,103),(153,51,104),(78,41,105),(28,40,106),(83,45,107),(186,9,108),(142,46,109),(106,22,110),(126,23,111),(196,33,112),(59,3,113),(82,42,114),(13,34,115),(48,12,116),(39,54,117),(133,19,118),(87,44,119),(1,59,120),(150,29,121),(145,47,122),(198,36,123),(62,17,124),(176,19,125),(131,55,126),(21,49,127),(53,31,128),(139,28,129),(116,51,130),(24,6,131),(95,58,132),(191,30,133),(4,39,134),(103,21,135),(93,56,136),(65,35,137),(63,54,138),(152,42,139),(51,2,140),(34,20,141),(189,43,142),(46,33,143),(64,15,144),(11,18,145),(128,53,146),(168,32,147),(86,11,148),(177,29,149),(92,59,150),(114,22,151),(158,7,152),(57,60,153),(43,47,154),(199,27,155),(8,45,156),(9,8,157),(60,24,158),(187,44,159),(137,3,160),(200,34,161),(136,14,162),(2,16,163),(180,23,164),(162,37,165),(161,50,166),(5,46,167),(66,10,168),(111,57,169),(22,1,170),(36,40,171),(129,13,172),(134,25,173),(89,48,174),(182,41,175),(29,26,176),(195,4,177),(102,52,178),(120,9,179),(164,5,180),(25,61,181),(113,12,182),(173,38,183),(18,36,184),(138,24,185),(100,17,186),(116,2,187),(106,59,188),(146,18,189),(66,53,190),(38,27,191),(179,15,192),(60,28,193),(44,19,194),(71,13,195),(43,43,196),(24,41,197),(51,34,198),(86,14,199),(45,23,200);
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treats`
--

DROP TABLE IF EXISTS `treats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treats` (
  `treats_infection_code` int NOT NULL,
  `treats_hospital_id` int NOT NULL,
  KEY `infection_code_idx` (`treats_infection_code`),
  KEY `hospital_id_idx` (`treats_hospital_id`),
  CONSTRAINT `treats_hospital_id` FOREIGN KEY (`treats_hospital_id`) REFERENCES `hospital` (`hospital_id`),
  CONSTRAINT `treats_infection_code` FOREIGN KEY (`treats_infection_code`) REFERENCES `injury` (`infection_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treats`
--

LOCK TABLES `treats` WRITE;
/*!40000 ALTER TABLE `treats` DISABLE KEYS */;
INSERT INTO `treats` VALUES (199,22),(167,33),(120,61),(105,59),(83,16),(95,37),(22,52),(46,40),(183,7),(108,48),(50,56),(38,34),(75,46),(106,49),(70,18),(59,58),(192,8),(176,12),(186,11),(78,13),(159,2),(169,15),(24,32),(84,29),(19,38),(52,21),(44,30),(124,54),(7,44),(110,47),(97,51),(130,24),(20,55),(65,20),(152,9),(121,17),(156,14),(88,5),(163,10),(175,4),(51,31),(89,19),(14,3),(36,1),(13,23),(5,26),(142,43),(173,50),(162,6),(17,45),(109,28),(123,41),(178,53),(132,36),(181,39),(170,42),(80,25),(41,60),(197,27),(90,35),(26,57),(141,57),(30,15),(79,47),(157,29),(172,21),(12,10),(40,53),(135,50),(115,7),(29,1),(76,58),(35,18),(1,36),(98,22),(66,2),(15,54),(187,43),(21,9),(47,41),(101,33),(155,56),(87,35),(32,39),(154,17),(62,59),(136,14),(63,51),(18,38),(165,4),(119,30),(200,16),(184,28),(9,48),(103,61),(53,20),(11,12),(125,42),(107,40),(56,19),(137,34),(2,11),(72,44),(67,32),(140,25),(55,3),(190,27),(82,52),(189,55),(198,6),(48,31),(3,45),(33,26),(158,24),(128,49),(100,8),(60,23),(144,13),(148,46),(102,37),(37,60),(69,5),(149,43),(43,54),(113,30),(16,8),(86,36),(185,28),(195,27),(4,32),(180,35),(146,19),(73,42),(39,52),(171,18),(92,31),(58,26),(139,58),(34,55),(71,50),(112,57),(6,38),(129,33),(81,3),(77,22),(54,53),(99,23),(179,16),(27,39),(117,29),(118,24),(10,21),(31,13),(188,4),(193,9),(196,17),(74,40),(68,25),(191,51),(45,5),(131,60),(161,34),(160,7),(23,15),(133,45),(177,10),(114,41),(164,48),(174,6),(138,37),(96,56),(122,61),(49,59),(126,47),(85,2),(104,14),(168,46),(182,1),(145,20),(127,49),(8,11),(31,12),(55,44),(143,49),(105,29),(112,31),(183,42),(71,52),(186,2),(41,8),(65,48),(79,59),(181,39),(135,34),(133,35),(40,12),(16,20),(32,27),(46,40),(17,41);
/*!40000 ALTER TABLE `treats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'INSURANCE'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 22:06:08
