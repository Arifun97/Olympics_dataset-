CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Temporary view structure for view `athlete_categories`
--

DROP TABLE IF EXISTS `athlete_categories`;
/*!50001 DROP VIEW IF EXISTS `athlete_categories`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `athlete_categories` AS SELECT 
 1 AS `athlete`,
 1 AS `sport_category`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `athlete_sport`
--

DROP TABLE IF EXISTS `athlete_sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athlete_sport` (
  `athlete_id` int DEFAULT NULL,
  `sport_id` int DEFAULT NULL,
  KEY `athlete_id_idx` (`athlete_id`),
  KEY `sport_id_idx` (`sport_id`),
  CONSTRAINT `athlete_key` FOREIGN KEY (`athlete_id`) REFERENCES `athletes` (`athlete_id`),
  CONSTRAINT `sport_key` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`sport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athlete_sport`
--

LOCK TABLES `athlete_sport` WRITE;
/*!40000 ALTER TABLE `athlete_sport` DISABLE KEYS */;
INSERT INTO `athlete_sport` VALUES (0,0),(1,0),(1,1),(2,0),(3,0),(3,1),(4,0),(5,0),(5,1),(6,0),(7,0),(7,1),(8,0),(8,1),(9,0),(9,1),(10,0),(11,0),(12,10),(13,10),(14,10),(15,10),(16,10),(17,10),(17,11),(18,10),(18,11),(19,10),(20,10),(20,11),(21,10),(21,11),(22,10),(22,11),(23,10),(23,11),(24,10),(24,12),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,11),(34,11),(35,11),(36,11),(36,12),(37,12),(38,12),(39,12),(40,12),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,12),(56,12),(57,12),(58,12),(59,12),(60,12),(61,12),(62,12),(63,12),(64,12),(65,12),(66,12),(67,3),(68,3),(69,3),(70,3),(71,3),(72,3),(73,3),(74,3),(75,3),(76,3),(77,3),(78,3),(78,4),(79,3),(80,3),(81,3),(82,3),(83,13),(84,13),(85,13),(85,14),(86,13),(87,13),(88,13),(89,13),(90,13),(91,13),(92,13),(93,13),(94,13),(95,13),(96,13),(97,4),(98,4),(98,5),(99,4),(100,4),(101,4),(102,4),(103,4),(104,4),(105,4),(106,4),(107,4),(108,4),(109,4),(110,14),(111,14),(112,14),(112,15),(113,14),(114,14),(115,14),(116,14),(117,14),(118,14),(119,14),(120,14),(121,14),(122,14),(123,14),(124,14),(124,15),(124,16),(125,5),(126,5),(127,5),(128,5),(128,6),(129,5),(129,7),(130,5),(131,5),(131,6),(132,5),(133,5),(134,5),(135,5),(136,5),(136,6),(137,5),(138,15),(139,15),(139,16),(140,15),(141,15),(142,15),(142,16),(143,15),(144,15),(144,16),(145,15),(146,15),(146,16),(147,15),(148,6),(149,6),(150,6),(151,6),(152,6),(153,6),(154,6),(154,7),(155,6),(156,6),(157,6),(158,6),(159,6),(160,16),(161,16),(162,16),(163,16),(164,16),(165,16),(166,16),(167,16),(168,16),(169,7),(170,7),(171,7),(172,7),(173,7),(174,7),(175,7),(176,7),(177,7),(178,7),(179,7),(180,7),(181,7),(182,7),(183,7),(184,17),(185,17),(186,17),(187,17),(188,17),(189,17),(190,17),(191,17),(192,17),(193,17),(194,17),(195,17),(196,17),(197,17),(198,17),(199,17),(200,17),(201,8),(201,9),(202,8),(203,8),(204,8),(205,8),(206,8),(207,8),(208,8),(209,8),(209,9),(210,8),(211,8),(212,8),(213,8),(214,8),(215,8),(216,8),(217,8),(218,18),(219,18),(220,18),(221,18),(222,18),(223,18),(224,18),(225,18),(226,18),(227,18),(228,18),(229,18),(230,18),(231,18),(232,18),(233,9),(234,9),(235,9),(236,9),(237,9),(238,9),(239,9),(240,9),(241,9),(242,9),(243,9),(244,9);
/*!40000 ALTER TABLE `athlete_sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `athletes`
--

DROP TABLE IF EXISTS `athletes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athletes` (
  `athlete_id` int NOT NULL,
  `country_id` int DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`athlete_id`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `country` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletes`
--

LOCK TABLES `athletes` WRITE;
/*!40000 ALTER TABLE `athletes` DISABLE KEYS */;
INSERT INTO `athletes` VALUES (0,0,'Maurice','Green','male'),(1,1,'Ato','Boldon','male'),(2,2,'Obadele','Thompson','male'),(3,0,'Justin','Gatlin','male'),(4,3,'Francis','Obikwelo','male'),(5,4,'Usain','Bolt','male'),(6,1,'Richard','Thompson','male'),(7,0,'Walter','Dix','male'),(8,4,'Yohan','Blake','male'),(9,5,'Andre','De Grasse','male'),(10,6,'Lamont','Jacobs','male'),(11,0,'Fred','Kerley','male'),(12,7,'Ekatarina','Thanou','female'),(13,4,'Tanya','Lawrence','female'),(14,4,'Merlene','Ottey','female'),(15,8,'Yuliya','Nestiarenko','female'),(16,0,'Lauryn','Williams','female'),(17,4,'Veronica','Campbell-Brown','female'),(18,4,'Shelly-Ann','Fraser-Pryce','female'),(19,4,'Sherone','Simpson','female'),(20,4,'Kerron','Stewart','female'),(21,0,'Carmelita','Jeter','female'),(22,4,'Elaine','Thompson-Herah','female'),(23,0,'Tori','Bowie','female'),(24,4,'Shericka','Jackson','female'),(25,7,'Konstantinos','Kenderis','male'),(26,9,'Darren','Campbell','male'),(27,0,'Shawn','Crawford','male'),(28,0,'Bernard','Williams','male'),(29,4,'Warren','Weir','male'),(30,10,'Cristophe','Lemaitre','male'),(31,0,'Kenneth','Bednarek','male'),(32,0,'Noah','Lyles','male'),(33,11,'Pauline','Davis-Thompson','female'),(34,12,'Susanthika','Jayasinghe','female'),(35,4,'Beverly','McDonald','female'),(36,0,'Allyson','Felix','female'),(37,11,'Debbie','Ferguson','female'),(38,13,'Daphne','Schippers','female'),(39,14,'Christine','Mboma','female'),(40,0,'Gabriele','Thomas','female'),(41,0,'Michael','Johnson','male'),(42,0,'Alvin','Harrison','male'),(43,4,'Gregory','Haughton','male'),(44,0,'Jeremy','Wariner','male'),(45,0,'Otis','Harris','male'),(46,0,'Derrick','Brew','male'),(47,0,'LaShawn','Merrit','male'),(48,0,'David','Neville','male'),(49,15,'Kirani','James','male'),(50,16,'Luguelin','Santos','male'),(51,1,'Lalonde','Gordon','male'),(52,17,'Wayde','van Niekerk','male'),(53,11,'Steven','Gardiner','male'),(54,18,'Anthony','Zambrano','male'),(55,19,'Cathy','Freeman','female'),(56,4,'Lorraine','Graham','female'),(57,9,'Katharine','Merry','female'),(58,11,'Tonique','Williams-Darling','female'),(59,20,'Ana','Guevara','female'),(60,21,'Natalya','Antyukh','female'),(61,9,'Christine','Ohuruogu','female'),(62,4,'Shericka','Williams','female'),(63,0,'Sanya','Richards-Ross','female'),(64,0,'DeeDee','Trotter','female'),(65,11,'Shaunae','Miller-Uibo','female'),(66,16,'Marileidy','Paulino','female'),(67,22,'Nils','Schumann','male'),(68,23,'Wilson','Kipketer','male'),(69,24,'Aissa','Said-Guerni','male'),(70,21,'Yuriy','Borzakovskiy','male'),(71,17,'Mbulaeni','Mulaudzi','male'),(72,25,'Wilfred','Bungei','male'),(73,26,'Ismail','Ahmed Ismail','male'),(74,25,'Alfred','Yego','male'),(75,25,'David','Rudisha','male'),(76,27,'Nijel','Amos','male'),(77,25,'Timothy','Kitum','male'),(78,24,'Taoufik','Makhloufi','male'),(79,0,'Clayton','Murphy','male'),(80,25,'Emmanuel','Korir','male'),(81,25,'Ferguson','Rotich','male'),(82,28,'Patryk','Dobek','male'),(83,29,'Maria','Mutola','female'),(84,30,'Stephanie','Graf','female'),(85,9,'Kelly','Holmes','female'),(86,31,'Hasna','Benhassi','female'),(87,32,'Jolanda','Ceplak','female'),(88,25,'Pamela','Jelimo','female'),(89,25,'Janeth','Busienei','female'),(90,17,'Caster','Semenya','female'),(91,21,'Ekaterina','Poistogova','female'),(92,33,'Francine','Niyonsaba','female'),(93,25,'Margaret','Wambui','female'),(94,0,'Athing','Mu','female'),(95,9,'Keely','Hodgkinson','female'),(96,0,'Raevyn','Rogers','female'),(97,25,'Noah','Ngeny','male'),(98,31,'Hicham','El Guerroj','male'),(99,25,'Bernard','Legat','male'),(100,3,'Rui','Silva','male'),(101,25,'Asbel','Kiprop','male'),(102,34,'Nicholas','Willis','male'),(103,10,'Mehdi','Baala','male'),(104,0,'Leonel','Manzano','male'),(105,31,'Abdalaati','Iguider','male'),(106,0,'Matthew','Centrowitz Jr.','male'),(107,35,'Jakob','Ingebrigsten','male'),(108,25,'Timothy','Cheruiyot','male'),(109,9,'Josh','Kerr','male'),(110,24,'Nouria','Merah-Benida','female'),(111,36,'Violeta','Szekely','female'),(112,36,'Gabriela','Szabo','female'),(113,21,'Tatyana','Tomashova','female'),(114,36,'Maria','Cioncan','female'),(115,25,'Nancy','Langat','female'),(116,37,'Iryna','Lishchynska','female'),(117,37,'Natalya','Tobias','female'),(118,38,'Maryam','Jamal','female'),(119,39,'Abeba','Aregawi','female'),(120,25,'Faith','Kipyegon','female'),(121,39,'Genzebe','Dibaba','female'),(122,0,'Jennifer','Simpson','female'),(123,9,'Laura','Muir','female'),(124,13,'Sifan','Hassan','female'),(125,39,'Millon','Wolde','male'),(126,24,'Ali','Saidi-Sief','male'),(127,31,'Brahim','Lahlafi','male'),(128,39,'Kenenisa','Bekele','male'),(129,25,'Eliud','Rotich','male'),(130,25,'Edwin','Soi','male'),(131,9,'Mohamed','Farah','male'),(132,39,'Dejen','Gebremeskel','male'),(133,25,'Thomas','Longosiwa','male'),(134,0,'Paul','Chelimo','male'),(135,39,'Hagos','Gebrhiwet','male'),(136,40,'Joshua','Cheptegei','male'),(137,5,'Mohamed','Ahmed','male'),(138,41,'Sonia','O\'Sullivan','female'),(139,39,'Gete','Wami','female'),(140,39,'Meseret','Defar','female'),(141,25,'Isabella','Ochichi','female'),(142,39,'Tirunesh','Dibaba','female'),(143,25,'Sylvia','Kibet','female'),(144,25,'Vivian','Cheruiyot','female'),(145,25,'Hellen','Obiri','female'),(146,39,'Almaz','Ayana','female'),(147,39,'Gudaf','Tsegay','female'),(148,39,'Haile','Gebrselassie','male'),(149,25,'Paul','Tergat','male'),(150,39,'Assefa','Mezgebu','male'),(151,39,'Sileshi','Sihine','male'),(152,42,'Zersenay','Tadesse','male'),(153,25,'Micah','Kogo','male'),(154,0,'Galen','Rupp','male'),(155,39,'Tariku','Bekele','male'),(156,25,'Paul','Tanui','male'),(157,39,'Tamirat','Tola','male'),(158,39,'Selemon','Barega','male'),(159,40,'Jacob','Kiplimo','male'),(160,39,'Derartu','Tulu','female'),(161,3,'Fernanda','Ribeiro','female'),(162,43,'Xing','Huina','female'),(163,39,'Ejegayahu','Dibaba','female'),(164,0,'Shalane','Flanagan','female'),(165,25,'Linet','Masai','female'),(166,25,'Sally','Kipyego','female'),(167,38,'Kalkidan','Gezaghegne','female'),(168,39,'Letesenbet','Gidey','female'),(169,39,'Gezahgne','Abera','male'),(170,25,'Eric','Wainaina','male'),(171,39,'Tesfaye','Tola','male'),(172,6,'Stefano','Baldini','male'),(173,0,'Mebrahtom','Keflezighi','male'),(174,44,'Vanderlei','de Lima','male'),(175,25,'Samuel','Wansiro','male'),(176,31,'Jaouad','Gharib','male'),(177,39,'Tsegay','Kebede','male'),(178,40,'Stephen','Kiprotich','male'),(179,25,'Abel','Kirui','male'),(180,25,'Wilson','Kiprotich','male'),(181,39,'Feyisa','Lilesa','male'),(182,13,'Abdi','Nageeye','male'),(183,45,'Bashir','Abdi','male'),(184,46,'Naoko','Takahashi','female'),(185,36,'Lidia','Simon','female'),(186,25,'Joyce','Chepchumba','female'),(187,46,'Mizuki','Noguchi','female'),(188,25,'Catherine','Nderaba','female'),(189,0,'Deena','Kastor','female'),(190,36,'Constantina','Tomescu','female'),(191,43,'Zhou','Chunxia','female'),(192,39,'Tiki','Gelana','female'),(193,25,'Priscah','Jeptoo','female'),(194,21,'Tatyana','Arkhipova','female'),(195,25,'Jemima','Sumgong','female'),(196,38,'Eunice','Kirwa','female'),(197,39,'Mare','Dibaba','female'),(198,25,'Peres','Jepchirchir','female'),(199,25,'Brigid','Kosgei','female'),(200,0,'Molly','Seidel','female'),(201,28,'Robert','Korzeniowski','male'),(202,20,'Noe','Hernandez','male'),(203,21,'Vladimir','Andreyev','male'),(204,6,'Ivano','Brugnetti','male'),(205,47,'Francisco','Fernandez','male'),(206,19,'Nathan','Deakes','male'),(207,21,'Valeriy','Borchin','male'),(208,48,'Jefferson','Perez','male'),(209,19,'Jared','Tallent','male'),(210,43,'Chen','Ding','male'),(211,49,'Erick','Barrondo','male'),(212,43,'Wang','Zhen','male'),(213,43,'Cai','Zhelin','male'),(214,19,'Dane','Bird-Smith','male'),(215,6,'Massimo','Stano','male'),(216,46,'Koki','Ikeda','male'),(217,46,'Toshikazu','Yamanishi','male'),(218,43,'Wang','Liping','female'),(219,35,'Kjersti','Platzer','female'),(220,47,'Maria','Vasco','female'),(221,7,'Athanasia','Tsoumelaka','female'),(222,21,'Olimpiada','Ivanova','female'),(223,19,'Jane','Saville','female'),(224,21,'Olga','Kaniskina','female'),(225,6,'Elisa','Riguado','female'),(226,21,'Elena','Lashmanova','female'),(227,43,'Qieyang','Shenjie','female'),(228,43,'Liu','Hong','female'),(229,20,'Maria','Gonzalez','female'),(230,43,'Lu','Xiuzhi','female'),(231,6,'Antonella','Palmisano','female'),(232,18,'Sandra','Arenas','female'),(233,50,'Aigars','Fadejevs','male'),(234,20,'Joel','Sanchez','male'),(235,21,'Denis','Nizhegorodov','male'),(236,21,'Aleksey','Voyevodin','male'),(237,6,'Alex','Schwazer','male'),(238,43,'Si','Tianfeng','male'),(239,41,'Robert','Heffernan','male'),(240,51,'Matej','Toth','male'),(241,46,'Hirooki','Arai','male'),(242,28,'Dawid','Tomala','male'),(243,22,'Jonathan','Hilbert','male'),(244,5,'Evan','Dunfee','male');
/*!40000 ALTER TABLE `athletes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (0,'USA'),(1,'Trinidad & Tobago'),(2,'Barbados'),(3,'Portugal'),(4,'Jamaica'),(5,'Canada'),(6,'Italy'),(7,'Greece'),(8,'Belarus'),(9,'Great Britain'),(10,'France'),(11,'Bahamas'),(12,'Sri Lanka'),(13,'Netherlands'),(14,'Namibia'),(15,'Grenada'),(16,'Dominican Republic'),(17,'South Africa'),(18,'Colombia'),(19,'Australia'),(20,'Mexico'),(21,'Russia'),(22,'Germany'),(23,'Denmark'),(24,'Algeria'),(25,'Kenya'),(26,'Sudan'),(27,'Botswana'),(28,'Poland'),(29,'Mozambique'),(30,'Austria'),(31,'Morocco'),(32,'Slovenia'),(33,'Burundi'),(34,'New Zealand'),(35,'Norway'),(36,'Romania'),(37,'Ukraine'),(38,'Bahrain'),(39,'Ethiopia'),(40,'Uganda'),(41,'Ireland'),(42,'Eritrea'),(43,'China'),(44,'Brazil'),(45,'Belgium'),(46,'Japan'),(47,'Spain'),(48,'Ecuador'),(49,'Guatemala'),(50,'Latvia'),(51,'Slovakia');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ethiopian_medals`
--

DROP TABLE IF EXISTS `ethiopian_medals`;
/*!50001 DROP VIEW IF EXISTS `ethiopian_medals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ethiopian_medals` AS SELECT 
 1 AS `country`,
 1 AS `sport`,
 1 AS `num_medals`,
 1 AS `sport_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `foreign_medal_winners`
--

DROP TABLE IF EXISTS `foreign_medal_winners`;
/*!50001 DROP VIEW IF EXISTS `foreign_medal_winners`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `foreign_medal_winners` AS SELECT 
 1 AS `athlete`,
 1 AS `country_name`,
 1 AS `num_medals`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `kenya_golds`
--

DROP TABLE IF EXISTS `kenya_golds`;
/*!50001 DROP VIEW IF EXISTS `kenya_golds`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kenya_golds` AS SELECT 
 1 AS `country`,
 1 AS `sport`,
 1 AS `num_gold`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `medals`
--

DROP TABLE IF EXISTS `medals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medals` (
  `medal_id` int NOT NULL,
  `athlete_id` int DEFAULT NULL,
  `sport_id` int DEFAULT NULL,
  `venue_id` int DEFAULT NULL,
  `medal_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`medal_id`),
  KEY `athlete_id_idx` (`athlete_id`),
  KEY `sport_id_idx` (`sport_id`),
  KEY `venue_id_idx` (`venue_id`),
  CONSTRAINT `athletes` FOREIGN KEY (`athlete_id`) REFERENCES `athletes` (`athlete_id`),
  CONSTRAINT `sports` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`sport_id`),
  CONSTRAINT `venues` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medals`
--

LOCK TABLES `medals` WRITE;
/*!40000 ALTER TABLE `medals` DISABLE KEYS */;
INSERT INTO `medals` VALUES (0,0,0,0,'Gold'),(1,0,0,1,'Bronze'),(2,1,0,0,'Silver'),(3,1,1,0,'Bronze'),(4,2,0,0,'Bronze'),(5,3,0,1,'Gold'),(6,3,0,3,'Bronze'),(7,3,0,4,'Silver'),(8,3,1,1,'Bronze'),(9,4,0,1,'Silver'),(10,5,0,2,'Gold'),(11,5,0,3,'Gold'),(12,5,0,4,'Gold'),(13,5,1,2,'Gold'),(14,5,1,3,'Gold'),(15,5,1,4,'Gold'),(16,6,0,2,'Silver'),(17,7,0,2,'Bronze'),(18,7,1,2,'Bronze'),(19,8,0,3,'Silver'),(20,8,1,3,'Silver'),(21,9,0,4,'Bronze'),(22,9,0,5,'Bronze'),(23,9,1,4,'Silver'),(24,9,1,5,'Gold'),(25,10,0,5,'Gold'),(26,11,0,5,'Silver'),(27,12,10,0,'Silver'),(28,13,10,0,'Silver'),(29,14,10,0,'Bronze'),(30,15,10,1,'Gold'),(31,16,10,1,'Silver'),(32,17,10,1,'Bronze'),(33,17,10,3,'Bronze'),(34,17,11,1,'Gold'),(35,17,11,2,'Gold'),(36,18,10,2,'Gold'),(37,18,10,3,'Gold'),(38,18,10,4,'Bronze'),(39,18,10,5,'Silver'),(40,18,11,3,'Silver'),(41,19,10,2,'Silver'),(42,20,10,2,'Silver'),(43,20,11,2,'Bronze'),(44,21,10,3,'Silver'),(45,21,11,3,'Bronze'),(46,22,10,4,'Gold'),(47,22,10,5,'Gold'),(48,22,11,4,'Gold'),(49,22,11,5,'Gold'),(50,23,10,4,'Silver'),(51,23,11,4,'Bronze'),(52,24,10,5,'Bronze'),(53,24,12,4,'Bronze'),(54,25,1,0,'Gold'),(55,26,1,0,'Silver'),(56,27,1,1,'Gold'),(57,27,1,2,'Silver'),(58,28,1,1,'Silver'),(59,29,1,3,'Bronze'),(60,30,1,4,'Bronze'),(61,31,1,5,'Silver'),(62,32,1,5,'Bronze'),(63,33,11,0,'Gold'),(64,34,11,0,'Silver'),(65,35,11,0,'Bronze'),(66,36,11,1,'Silver'),(67,36,11,2,'Silver'),(68,36,11,3,'Gold'),(69,36,12,4,'Silver'),(70,36,12,5,'Bronze'),(71,37,11,1,'Bronze'),(72,38,11,4,'Silver'),(73,39,11,5,'Silver'),(74,40,11,5,'Bronze'),(75,41,2,0,'Gold'),(76,42,2,0,'Silver'),(77,43,2,0,'Bronze'),(78,44,2,1,'Gold'),(79,44,2,2,'Silver'),(80,45,2,1,'Silver'),(81,46,2,1,'Bronze'),(82,47,2,2,'Gold'),(83,47,2,4,'Bronze'),(84,48,2,2,'Bronze'),(85,49,2,3,'Gold'),(86,49,2,4,'Silver'),(87,49,2,5,'Bronze'),(88,50,2,3,'Silver'),(89,51,2,3,'Bronze'),(90,52,2,4,'Gold'),(91,53,2,5,'Gold'),(92,54,2,5,'Silver'),(93,55,12,0,'Gold'),(94,56,12,0,'Silver'),(95,57,12,0,'Bronze'),(96,58,12,1,'Gold'),(97,59,12,1,'Silver'),(98,60,12,1,'Bronze'),(99,61,12,2,'Gold'),(100,61,12,3,'Silver'),(101,62,12,2,'Silver'),(102,63,12,2,'Bronze'),(103,63,12,3,'Gold'),(104,64,12,3,'Bronze'),(105,65,12,4,'Gold'),(106,65,12,5,'Gold'),(107,66,12,5,'Silver'),(108,67,3,0,'Gold'),(109,68,3,0,'Silver'),(110,68,3,1,'Bronze'),(111,69,3,0,'Bronze'),(112,70,3,1,'Gold'),(113,71,3,1,'Silver'),(114,72,3,2,'Gold'),(115,73,3,2,'Silver'),(116,74,3,2,'Bronze'),(117,75,3,3,'Gold'),(118,75,3,4,'Gold'),(119,76,3,3,'Silver'),(120,77,3,3,'Bronze'),(121,78,3,4,'Silver'),(122,78,4,3,'Gold'),(123,78,4,4,'Silver'),(124,79,3,4,'Bronze'),(125,80,3,5,'Gold'),(126,81,3,5,'Silver'),(127,82,3,5,'Bronze'),(128,83,13,0,'Gold'),(129,84,13,0,'Silver'),(130,85,13,0,'Bronze'),(131,85,13,1,'Gold'),(132,85,14,1,'Gold'),(133,86,13,1,'Silver'),(134,86,13,2,'Bronze'),(135,87,13,1,'Bronze'),(136,88,13,2,'Gold'),(137,88,13,3,'Bronze'),(138,89,13,2,'Silver'),(139,90,13,3,'Gold'),(140,90,13,4,'Gold'),(141,91,13,3,'Silver'),(142,92,13,4,'Silver'),(143,93,13,4,'Bronze'),(144,94,13,5,'Gold'),(145,95,13,5,'Silver'),(146,96,13,5,'Bronze'),(147,97,4,0,'Gold'),(148,98,4,0,'Silver'),(149,98,4,1,'Gold'),(150,98,5,1,'Gold'),(151,99,4,0,'Bronze'),(152,99,4,1,'Silver'),(153,100,4,1,'Bronze'),(154,101,4,2,'Gold'),(155,102,4,2,'Silver'),(156,102,4,4,'Bronze'),(157,103,4,2,'Bronze'),(158,104,4,3,'Silver'),(159,105,4,3,'Bronze'),(160,106,4,4,'Gold'),(161,107,4,5,'Gold'),(162,108,4,5,'Silver'),(163,109,4,5,'Bronze'),(164,110,14,0,'Gold'),(165,111,14,0,'Silver'),(166,112,14,0,'Bronze'),(167,112,15,0,'Gold'),(168,113,14,1,'Silver'),(169,113,14,3,'Silver'),(170,114,14,1,'Bronze'),(171,115,14,2,'Gold'),(172,116,14,2,'Silver'),(173,117,14,2,'Bronze'),(174,118,14,3,'Gold'),(175,119,14,3,'Bronze'),(176,120,14,4,'Gold'),(177,120,14,5,'Gold'),(178,121,14,4,'Silver'),(179,122,14,4,'Bronze'),(180,123,14,5,'Silver'),(181,124,14,5,'Bronze'),(182,124,15,5,'Gold'),(183,124,16,5,'Gold'),(184,125,5,0,'Gold'),(185,126,5,0,'Silver'),(186,127,5,0,'Bronze'),(187,128,5,1,'Silver'),(188,128,5,2,'Gold'),(189,128,6,1,'Gold'),(190,128,6,2,'Gold'),(191,129,5,1,'Bronze'),(192,129,5,2,'Silver'),(193,129,7,4,'Gold'),(194,129,7,5,'Gold'),(195,130,5,2,'Bronze'),(196,131,5,3,'Gold'),(197,131,5,4,'Gold'),(198,131,6,3,'Gold'),(199,131,6,4,'Gold'),(200,132,5,3,'Silver'),(201,133,5,3,'Bronze'),(202,134,5,4,'Silver'),(203,134,5,5,'Bronze'),(204,135,5,4,'Bronze'),(205,136,5,5,'Gold'),(206,136,6,5,'Silver'),(207,137,5,5,'Silver'),(208,138,15,0,'Silver'),(209,139,15,0,'Bronze'),(210,139,16,0,'Silver'),(211,140,15,1,'Gold'),(212,140,15,2,'Silver'),(213,140,15,3,'Gold'),(214,141,15,1,'Silver'),(215,142,15,1,'Bronze'),(216,142,15,2,'Gold'),(217,142,15,3,'Bronze'),(218,142,16,2,'Gold'),(219,142,16,3,'Gold'),(220,142,16,4,'Bronze'),(221,143,15,2,'Bronze'),(222,144,15,3,'Silver'),(223,144,15,4,'Gold'),(224,144,16,3,'Bronze'),(225,144,16,4,'Silver'),(226,145,15,4,'Silver'),(227,145,15,5,'Silver'),(228,146,15,4,'Bronze'),(229,146,16,4,'Gold'),(230,147,15,5,'Bronze'),(231,148,6,0,'Gold'),(232,149,6,0,'Silver'),(233,150,6,0,'Bronze'),(234,151,6,1,'Silver'),(235,151,6,2,'Silver'),(236,152,6,1,'Bronze'),(237,153,6,2,'Bronze'),(238,154,6,3,'Silver'),(239,154,7,4,'Bronze'),(240,155,6,3,'Bronze'),(241,156,6,4,'Silver'),(242,157,6,4,'Bronze'),(243,158,6,5,'Gold'),(244,159,6,5,'Bronze'),(245,160,16,0,'Gold'),(246,160,16,1,'Bronze'),(247,161,16,0,'Bronze'),(248,162,16,1,'Gold'),(249,163,16,1,'Silver'),(250,164,16,2,'Silver'),(251,165,16,2,'Bronze'),(252,166,16,3,'Silver'),(253,167,16,5,'Silver'),(254,168,16,5,'Bronze'),(255,169,7,0,'Gold'),(256,170,7,0,'Silver'),(257,171,7,0,'Bronze'),(258,172,7,1,'Gold'),(259,173,7,1,'Silver'),(260,174,7,1,'Bronze'),(261,175,7,2,'Gold'),(262,176,7,2,'Silver'),(263,177,7,2,'Bronze'),(264,178,7,3,'Gold'),(265,179,7,3,'Silver'),(266,180,7,3,'Bronze'),(267,181,7,4,'Silver'),(268,182,7,5,'Silver'),(269,183,7,5,'Bronze'),(270,184,17,0,'Gold'),(271,185,17,0,'Silver'),(272,186,17,0,'Bronze'),(273,187,17,1,'Gold'),(274,188,17,1,'Silver'),(275,188,17,2,'Silver'),(276,189,17,1,'Bronze'),(277,190,17,2,'Gold'),(278,191,17,2,'Bronze'),(279,192,17,3,'Gold'),(280,193,17,3,'Silver'),(281,194,17,3,'Bronze'),(282,195,17,4,'Gold'),(283,196,17,4,'Silver'),(284,197,17,4,'Bronze'),(285,198,17,5,'Gold'),(286,199,17,5,'Silver'),(287,200,17,5,'Bronze'),(288,201,8,0,'Gold'),(289,201,9,0,'Gold'),(290,201,9,1,'Gold'),(291,202,8,0,'Silver'),(292,203,8,0,'Bronze'),(293,204,8,1,'Gold'),(294,205,8,1,'Silver'),(295,206,8,1,'Bronze'),(296,207,8,2,'Gold'),(297,208,8,2,'Silver'),(298,209,8,2,'Bronze'),(299,209,9,2,'Silver'),(300,209,9,3,'Gold'),(301,209,9,4,'Silver'),(302,210,8,3,'Gold'),(303,211,8,3,'Silver'),(304,212,8,3,'Bronze'),(305,212,8,4,'Gold'),(306,213,8,4,'Silver'),(307,214,8,4,'Bronze'),(308,215,8,5,'Gold'),(309,216,8,5,'Silver'),(310,217,8,5,'Bronze'),(311,218,18,0,'Gold'),(312,219,18,0,'Silver'),(313,219,18,2,'Silver'),(314,220,18,0,'Bronze'),(315,221,18,1,'Gold'),(316,222,18,1,'Silver'),(317,223,18,1,'Bronze'),(318,224,18,2,'Gold'),(319,225,18,2,'Bronze'),(320,226,18,3,'Gold'),(321,227,18,3,'Silver'),(322,228,18,3,'Bronze'),(323,228,18,4,'Gold'),(324,228,18,5,'Bronze'),(325,229,18,4,'Silver'),(326,230,18,4,'Bronze'),(327,231,18,5,'Gold'),(328,232,18,5,'Silver'),(329,233,9,0,'Silver'),(330,234,9,0,'Bronze'),(331,235,9,1,'Silver'),(332,235,9,2,'Bronze'),(333,236,9,1,'Bronze'),(334,237,9,2,'Gold'),(335,238,9,3,'Silver'),(336,239,9,3,'Bronze'),(337,240,9,4,'Gold'),(338,241,9,4,'Bronze'),(339,242,9,5,'Gold'),(340,243,9,5,'Silver'),(341,244,9,5,'Bronze');
/*!40000 ALTER TABLE `medals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `most_female_medals`
--

DROP TABLE IF EXISTS `most_female_medals`;
/*!50001 DROP VIEW IF EXISTS `most_female_medals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_female_medals` AS SELECT 
 1 AS `Country`,
 1 AS `Gender`,
 1 AS `Total Medals`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `olympic_records`
--

DROP TABLE IF EXISTS `olympic_records`;
/*!50001 DROP VIEW IF EXISTS `olympic_records`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `olympic_records` AS SELECT 
 1 AS `athlete_name`,
 1 AS `gender`,
 1 AS `new_record`,
 1 AS `name`,
 1 AS `type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records` (
  `record_id` int NOT NULL,
  `athlete_id` int DEFAULT NULL,
  `sport_id` int DEFAULT NULL,
  `venue_id` int DEFAULT NULL,
  `new_record` time(2) DEFAULT NULL,
  `past_record` time(2) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `athlete_id_idx` (`athlete_id`),
  KEY `sport_id_idx` (`sport_id`),
  KEY `venue_id_idx` (`venue_id`),
  CONSTRAINT `athlete` FOREIGN KEY (`athlete_id`) REFERENCES `athletes` (`athlete_id`),
  CONSTRAINT `sport` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`sport_id`),
  CONSTRAINT `venue` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
INSERT INTO `records` VALUES (0,5,0,2,'00:00:09.69','00:00:09.72','World'),(1,5,0,3,'00:00:09.63','00:00:09.69','Olympic'),(2,22,10,5,'00:00:10.61','00:00:10.62','Olympic'),(3,5,1,2,'00:00:19.30','00:00:19.32','World'),(4,52,2,4,'00:00:43.03','00:00:43.18','World'),(5,75,3,3,'00:01:40.91','00:01:41.01','World'),(6,97,4,0,'00:03:32.07','00:03:32.53','Olympic'),(7,107,4,5,'00:03:28.32','00:03:32.07','Olympic'),(8,120,14,5,'00:03:53.11','00:03:53.96','Olympic'),(9,128,5,2,'00:12:57.82','00:13:05.59','Olympic'),(10,112,15,0,'00:14:40.79','00:14:59.88','Olympic'),(11,144,15,4,'00:14:26.17','00:14:40.79','Olympic'),(12,128,6,1,'00:27:05.10','00:27:07.34','Olympic'),(13,128,6,2,'00:27:01.17','00:27:05.10','Olympic'),(14,160,16,0,'00:30:17.49','00:31:01.63','Olympic'),(15,142,16,2,'00:29:54.66','00:30:17.49','Olympic'),(17,146,16,4,'00:29:17.45','00:29:31.78','World'),(18,175,7,2,'02:06:32.00','02:09:21.00','Olympic'),(19,184,17,0,'02:23:14.00','02:24:52.00','Olympic'),(20,192,17,3,'02:23:07.00','02:23:14.00','Olympic'),(21,201,8,0,'01:18:59.00','01:19:57.00','Olympic'),(22,210,8,3,'01:18:46.00','01:18:59.00','Olympic'),(23,224,18,2,'01:26:31.00','01:29:05.00','Olympic'),(24,237,9,2,'03:37:09.00','03:38:29.00','Olympic');
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport_type`
--

DROP TABLE IF EXISTS `sport_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sport_type` (
  `type_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport_type`
--

LOCK TABLES `sport_type` WRITE;
/*!40000 ALTER TABLE `sport_type` DISABLE KEYS */;
INSERT INTO `sport_type` VALUES (0,'sprints'),(1,'middle distance running'),(2,'long distance running'),(3,'race walking');
/*!40000 ALTER TABLE `sport_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `sport_id` int NOT NULL,
  `type_id` int DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sport_id`),
  KEY `type_id_idx` (`type_id`),
  CONSTRAINT `type` FOREIGN KEY (`type_id`) REFERENCES `sport_type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (0,0,'male','100 m M'),(1,0,'male','200 m M'),(2,0,'male','400 m M'),(3,1,'male','800 m M'),(4,1,'male','1500 m M'),(5,2,'male','5000 m M'),(6,2,'male','10000 m M'),(7,2,'male','Marathon M'),(8,3,'male','20 km Walk M'),(9,3,'male','50 km Walk M'),(10,0,'female','100 m W'),(11,0,'female','200 m W'),(12,0,'female','400 m W'),(13,1,'female','800 m W'),(14,1,'female','1500 m W'),(15,2,'female','5000 m W'),(16,2,'female','10000 m W'),(17,2,'female','Marathon W'),(18,3,'female','20 km Walk W');
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top_five_countries`
--

DROP TABLE IF EXISTS `top_five_countries`;
/*!50001 DROP VIEW IF EXISTS `top_five_countries`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_five_countries` AS SELECT 
 1 AS `country`,
 1 AS `num_gold`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues` (
  `venue_id` int NOT NULL,
  `country_id` int DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `year` year DEFAULT NULL,
  PRIMARY KEY (`venue_id`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues`
--

LOCK TABLES `venues` WRITE;
/*!40000 ALTER TABLE `venues` DISABLE KEYS */;
INSERT INTO `venues` VALUES (0,19,'Sydney',2000),(1,7,'Athens',2004),(2,43,'Beijing',2008),(3,9,'London',2012),(4,44,'Rio',2016),(5,46,'Tokyo',2020);
/*!40000 ALTER TABLE `venues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `athlete_categories`
--

/*!50001 DROP VIEW IF EXISTS `athlete_categories`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `athlete_categories` AS select distinct concat(`a`.`fname`,' ',`a`.`lname`) AS `athlete`,`st`.`name` AS `sport_category` from (((`athletes` `a` join `athlete_sport` `atp` on((`a`.`athlete_id` = `atp`.`athlete_id`))) join `sports` `s` on((`atp`.`sport_id` = `s`.`sport_id`))) join `sport_type` `st` on((`s`.`type_id` = `st`.`type_id`))) order by `athlete` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ethiopian_medals`
--

/*!50001 DROP VIEW IF EXISTS `ethiopian_medals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ethiopian_medals` AS select `c`.`name` AS `country`,`s`.`name` AS `sport`,count(`m`.`sport_id`) AS `num_medals`,`st`.`name` AS `sport_type` from ((((`medals` `m` join `athletes` `a` on((`m`.`athlete_id` = `a`.`athlete_id`))) join `countries` `c` on((`a`.`country_id` = `c`.`country_id`))) join `sports` `s` on((`m`.`sport_id` = `s`.`sport_id`))) join `sport_type` `st` on((`s`.`type_id` = `st`.`type_id`))) where (`c`.`name` = 'Ethiopia') group by `m`.`sport_id` order by `num_medals` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `foreign_medal_winners`
--

/*!50001 DROP VIEW IF EXISTS `foreign_medal_winners`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `foreign_medal_winners` AS select concat(`a`.`fname`,' ',`a`.`lname`) AS `athlete`,(select `c`.`name` from `countries` `c` where (`c`.`country_id` = `a`.`country_id`)) AS `country_name`,count(`m`.`medal_id`) AS `num_medals` from (`medals` `m` join `athletes` `a` on((`m`.`athlete_id` = `a`.`athlete_id`))) where ((select `c`.`name` from `countries` `c` where (`c`.`country_id` = `a`.`country_id`)) <> 'USA') group by `a`.`athlete_id` order by `num_medals` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kenya_golds`
--

/*!50001 DROP VIEW IF EXISTS `kenya_golds`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kenya_golds` AS select `c`.`name` AS `country`,`s`.`name` AS `sport`,count(`m`.`medal_id`) AS `num_gold` from ((((`medals` `m` join `athletes` `a` on((`m`.`athlete_id` = `a`.`athlete_id`))) join `countries` `c` on((`a`.`country_id` = `c`.`country_id`))) join `sports` `s` on((`m`.`sport_id` = `s`.`sport_id`))) join `sport_type` `st` on((`s`.`type_id` = `st`.`type_id`))) where ((`m`.`medal_type` = 'Gold') and (`c`.`name` = 'Kenya')) group by `s`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_female_medals`
--

/*!50001 DROP VIEW IF EXISTS `most_female_medals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_female_medals` AS select `c`.`name` AS `Country`,`a`.`gender` AS `Gender`,count(`m`.`medal_type`) AS `Total Medals` from ((`countries` `c` join `athletes` `a` on((`c`.`country_id` = `a`.`country_id`))) join `medals` `m` on((`a`.`athlete_id` = `m`.`athlete_id`))) where (`a`.`gender` = 'Female') group by `c`.`name` order by count(`m`.`medal_type`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `olympic_records`
--

/*!50001 DROP VIEW IF EXISTS `olympic_records`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `olympic_records` AS select concat(`a`.`fname`,' ',`a`.`lname`) AS `athlete_name`,`a`.`gender` AS `gender`,`r`.`new_record` AS `new_record`,`s`.`name` AS `name`,`r`.`type` AS `type` from ((`records` `r` join `athletes` `a` on((`a`.`athlete_id` = `r`.`athlete_id`))) join `sports` `s` on((`r`.`sport_id` = `s`.`sport_id`))) where (`r`.`type` <> 'World') order by `a`.`lname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_five_countries`
--

/*!50001 DROP VIEW IF EXISTS `top_five_countries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_five_countries` AS select `c`.`name` AS `country`,count(`m`.`medal_id`) AS `num_gold` from ((`medals` `m` join `athletes` `a` on((`m`.`athlete_id` = `a`.`athlete_id`))) join `countries` `c` on((`a`.`country_id` = `c`.`country_id`))) where (`m`.`medal_type` = 'Gold') group by `country` order by `num_gold` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11 22:06:31
