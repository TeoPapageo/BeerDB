-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: beerdb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `beer`
--

DROP TABLE IF EXISTS `beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beer` (
  `beerID` int NOT NULL,
  `companyID` int NOT NULL,
  `IBU` int DEFAULT NULL,
  `ABV` decimal(3,3) DEFAULT NULL,
  `beerStyle` enum('Altbier','Amber Ale','Barley Wine','Berliner Weisse','Biere de Garde','Pilsener/Pilsner/Pils','Dunkel','Stout','Weissbier','Oktoberfestbier','Witbier','Redale','Blonde Ale','Weizenbock','Hefeweizen') DEFAULT NULL,
  `beerName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`beerID`,`companyID`),
  KEY `fk_BEER_COMPANY1_idx` (`companyID`),
  CONSTRAINT `fk_BEER_COMPANY1` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beer`
--

LOCK TABLES `beer` WRITE;
/*!40000 ALTER TABLE `beer` DISABLE KEYS */;
INSERT INTO `beer` VALUES (1,1,20,0.050,'Pilsener/Pilsner/Pils','Vergina'),(2,1,15,0.054,'Hefeweizen','Vergina Weiss'),(3,1,25,0.055,'Stout','Vergina Black'),(4,1,28,0.058,'Pilsener/Pilsner/Pils','Vergina Red'),(5,2,34,0.040,'Stout','Murphy\'s'),(6,2,20,0.050,'Pilsener/Pilsner/Pils','ALFA'),(7,2,16,0.045,'Pilsener/Pilsner/Pils','SOL'),(8,3,22,0.050,'Pilsener/Pilsner/Pils','Mythos'),(9,3,45,0.042,'Stout','Guinness'),(10,3,14,0.054,'Weissbier','Schneider Weisse'),(11,4,20,0.060,'Oktoberfestbier','Paulaner Oktoberfest Bier'),(12,4,28,0.079,'Pilsener/Pilsner/Pils','Paulaner Salvator'),(13,4,12,0.053,'Dunkel','Paulaner Dunkel'),(14,5,21,0.049,'Pilsener/Pilsner/Pils','Becks'),(15,5,22,0.046,'Pilsener/Pilsner/Pils','Corona'),(16,5,18,0.041,'Witbier','Bacata Blanca'),(17,6,20,0.050,'Blonde Ale','Molson Stock Ale'),(18,6,27,0.050,'Pilsener/Pilsner/Pils','Staropramen'),(19,6,25,0.059,'Redale','Keystone V9'),(20,7,10,0.053,'Dunkel','Erdinger Dunkel'),(21,7,10,0.073,'Weizenbock','Erdinger Pikantus'),(22,7,11,0.056,'Hefeweizen','Erdinger SchneeweiÃŸe');
/*!40000 ALTER TABLE `beer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `beers & companies`
--

DROP TABLE IF EXISTS `beers & companies`;
/*!50001 DROP VIEW IF EXISTS `beers & companies`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `beers & companies` AS SELECT 
 1 AS `Beer`,
 1 AS `Company`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `breweries & companies`
--

DROP TABLE IF EXISTS `breweries & companies`;
/*!50001 DROP VIEW IF EXISTS `breweries & companies`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `breweries & companies` AS SELECT 
 1 AS `Brewery`,
 1 AS `Company`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `brewery`
--

DROP TABLE IF EXISTS `brewery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brewery` (
  `breweryID` int NOT NULL,
  `companyID` int NOT NULL,
  `breweryName` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `street` varchar(35) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`breweryID`,`companyID`),
  KEY `fk_BREWERY_COMPANY_idx` (`companyID`),
  CONSTRAINT `fk_BREWERY_COMPANY` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brewery`
--

LOCK TABLES `brewery` WRITE;
/*!40000 ALTER TABLE `brewery` DISABLE KEYS */;
INSERT INTO `brewery` VALUES (1,1,'Komotini Brewery','Komotini','Industrial Area','69150'),(2,1,'Thessaloniki Brewery','Thessaloniki','Industrial Area','57022'),(3,1,'Athenian Vergina Branch','Athens','Leof. Spaton 187','15351'),(4,2,'Athenian Brewery','Athens','Aigaleo','12241'),(5,3,'Olympic Brewery Sindos','Thessaloniki','Industrial Area','57022'),(6,3,'Olympic Brewery Ritsonas','Ritsona','Athens-Lamia N.Road','32009'),(7,3,'Olympic Brewery Crete','Heraclion','N.Alikarnassos 34','71601'),(8,4,'Paulaner Brewery','Munich','Kapuzinerpl. 5','80337'),(9,5,'AB InBev Italia','Milan','Via Fratelli Castiglioni 8','20154'),(10,5,'AB InBev Czech','Prague','V.Parku 2326','14800'),(11,6,'Coors Brewery UK','Burton-on-Trent','137 High','DE14 1JZ'),(12,7,'Erdinger Brewery','Erding','Franz-Brombach Str.1','85435');
/*!40000 ALTER TABLE `brewery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brewery_brews_beer`
--

DROP TABLE IF EXISTS `brewery_brews_beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brewery_brews_beer` (
  `BEER_beerID` int NOT NULL,
  `BEER_companyID` int NOT NULL,
  `BREWERY_breweryID` int NOT NULL,
  `BREWERY_companyID` int NOT NULL,
  `fermentationTechnique` enum('warm','cool','spontaneous') DEFAULT NULL,
  PRIMARY KEY (`BEER_beerID`,`BEER_companyID`,`BREWERY_breweryID`,`BREWERY_companyID`),
  KEY `fk_BEER_has_BREWERY_BREWERY1_idx` (`BREWERY_breweryID`,`BREWERY_companyID`),
  KEY `fk_BEER_has_BREWERY_BEER1_idx` (`BEER_beerID`,`BEER_companyID`),
  CONSTRAINT `fk_BEER_has_BREWERY_BEER1` FOREIGN KEY (`BEER_beerID`, `BEER_companyID`) REFERENCES `beer` (`beerID`, `companyID`),
  CONSTRAINT `fk_BEER_has_BREWERY_BREWERY1` FOREIGN KEY (`BREWERY_breweryID`, `BREWERY_companyID`) REFERENCES `brewery` (`breweryID`, `companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brewery_brews_beer`
--

LOCK TABLES `brewery_brews_beer` WRITE;
/*!40000 ALTER TABLE `brewery_brews_beer` DISABLE KEYS */;
INSERT INTO `brewery_brews_beer` VALUES (1,1,1,1,'cool'),(1,1,2,1,'cool'),(1,1,3,1,'cool'),(2,1,1,1,'cool'),(2,1,2,1,'cool'),(2,1,3,1,'cool'),(3,1,1,1,'warm'),(3,1,2,1,'warm'),(3,1,3,1,'warm'),(4,1,1,1,'cool'),(4,1,2,1,'cool'),(4,1,3,1,'cool'),(5,2,4,2,'warm'),(6,2,4,2,'cool'),(7,2,4,2,'cool'),(8,3,5,3,'cool'),(8,3,6,3,'cool'),(8,3,7,3,'cool'),(9,3,5,3,'warm'),(9,3,6,3,'warm'),(9,3,7,3,'warm'),(10,3,5,3,'spontaneous'),(10,3,6,3,'spontaneous'),(10,3,7,3,'spontaneous'),(11,4,8,4,'cool'),(12,4,8,4,'cool'),(13,4,8,4,'cool'),(14,5,9,5,'cool'),(14,5,10,5,'cool'),(15,5,9,5,'cool'),(16,5,10,5,'warm'),(17,6,11,6,'warm'),(18,6,11,6,'cool'),(19,6,11,6,'warm'),(20,7,12,7,'cool'),(21,7,12,7,'spontaneous'),(22,7,12,7,'spontaneous');
/*!40000 ALTER TABLE `brewery_brews_beer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brewery_supplies_distributor`
--

DROP TABLE IF EXISTS `brewery_supplies_distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brewery_supplies_distributor` (
  `DISTRIBUTOR_distributorID` int NOT NULL,
  `BREWERY_breweryID` int NOT NULL,
  `BREWERY_companyID` int NOT NULL,
  PRIMARY KEY (`DISTRIBUTOR_distributorID`,`BREWERY_breweryID`,`BREWERY_companyID`),
  KEY `fk_DISTRIBUTOR_has_BREWERY_BREWERY1_idx` (`BREWERY_breweryID`,`BREWERY_companyID`),
  KEY `fk_DISTRIBUTOR_has_BREWERY_DISTRIBUTOR1_idx` (`DISTRIBUTOR_distributorID`),
  CONSTRAINT `fk_DISTRIBUTOR_has_BREWERY_BREWERY1` FOREIGN KEY (`BREWERY_breweryID`, `BREWERY_companyID`) REFERENCES `brewery` (`breweryID`, `companyID`),
  CONSTRAINT `fk_DISTRIBUTOR_has_BREWERY_DISTRIBUTOR1` FOREIGN KEY (`DISTRIBUTOR_distributorID`) REFERENCES `distributor` (`distributorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brewery_supplies_distributor`
--

LOCK TABLES `brewery_supplies_distributor` WRITE;
/*!40000 ALTER TABLE `brewery_supplies_distributor` DISABLE KEYS */;
INSERT INTO `brewery_supplies_distributor` VALUES (1,9,5),(1,10,5),(2,11,6),(3,5,3),(3,6,3),(3,7,3),(4,8,4),(5,4,2),(5,5,3),(5,6,3),(5,7,3),(5,9,5),(5,10,5),(6,12,7),(7,1,1),(7,2,1),(7,3,1);
/*!40000 ALTER TABLE `brewery_supplies_distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `companyID` int NOT NULL,
  `companyName` varchar(25) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Macedonian Thrace Brewery','Greece'),(2,'Heineken N.V','Holland'),(3,'Carslberg','Denmark'),(4,'Paulaner','Germany'),(5,'Anheuser-Busch','Belgium'),(6,'Molson Coors','USA'),(7,'Erdinger','Germany');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor` (
  `distributorID` int NOT NULL,
  `distributorName` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `street` varchar(35) DEFAULT NULL,
  `postalCode` int DEFAULT NULL,
  PRIMARY KEY (`distributorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` VALUES (1,'V.S Karoulias','Athens','Athens - Lamia N.Road 23km',14565),(2,'AMVYX','Athens','Konstantinoupoleos 6',16452),(3,'Beverage World','Athens','Attikis 55',15235),(4,'Billias','Lakkoma','Viomixaniko Parko ',63080),(5,'Bakalaros Group','Patras','7th Km N.E.O Patron - Korinthou',26500),(6,'Athenian Brewery Dist.','Athens','Leoforos Kifissou 102',12241),(7,'Vergina Distributor','Thessaloniki','Industrial Area',57022);
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor_supplies_shop`
--

DROP TABLE IF EXISTS `distributor_supplies_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor_supplies_shop` (
  `DISTRIBUTOR_distributorID` int NOT NULL,
  `SHOP_shopID` int NOT NULL,
  PRIMARY KEY (`DISTRIBUTOR_distributorID`,`SHOP_shopID`),
  KEY `fk_DISTRIBUTOR_has_SHOP_SHOP1_idx` (`SHOP_shopID`),
  KEY `fk_DISTRIBUTOR_has_SHOP_DISTRIBUTOR1_idx` (`DISTRIBUTOR_distributorID`),
  CONSTRAINT `fk_DISTRIBUTOR_has_SHOP_DISTRIBUTOR1` FOREIGN KEY (`DISTRIBUTOR_distributorID`) REFERENCES `distributor` (`distributorID`),
  CONSTRAINT `fk_DISTRIBUTOR_has_SHOP_SHOP1` FOREIGN KEY (`SHOP_shopID`) REFERENCES `shop` (`shopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor_supplies_shop`
--

LOCK TABLES `distributor_supplies_shop` WRITE;
/*!40000 ALTER TABLE `distributor_supplies_shop` DISABLE KEYS */;
INSERT INTO `distributor_supplies_shop` VALUES (1,1),(3,1),(5,1),(4,2),(7,3),(1,4),(2,4),(5,4),(3,5),(5,5),(7,5),(4,6),(6,6),(5,7),(7,7);
/*!40000 ALTER TABLE `distributor_supplies_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `numberofbeersproducedbybreweries`
--

DROP TABLE IF EXISTS `numberofbeersproducedbybreweries`;
/*!50001 DROP VIEW IF EXISTS `numberofbeersproducedbybreweries`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `numberofbeersproducedbybreweries` AS SELECT 
 1 AS `COUNT(BEER_beerID)`,
 1 AS `BREWERY_breweryID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `numberofreviews`
--

DROP TABLE IF EXISTS `numberofreviews`;
/*!50001 DROP VIEW IF EXISTS `numberofreviews`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `numberofreviews` AS SELECT 
 1 AS `COUNT(BEER_beerID)`,
 1 AS `USER_userID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `shopID` int NOT NULL,
  `shopName` varchar(25) DEFAULT NULL,
  `website` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `street` varchar(35) DEFAULT NULL,
  `postalCode` int DEFAULT NULL,
  PRIMARY KEY (`shopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'3Ball','www.3ball.gr','Thessaloniki','Ladadika 5',56435),(2,'Tripliner','www.irishlover.gr','Thessaloniki','Douvlinou 1',56430),(3,'Kylikeio Polytexnikis','www.thmmy.gr','Thessaloniki','Kses pou 1',56431),(4,'To Marinakeio','www.osfp.gr','Athens','Roon 1',21000),(5,'ΤΝΤ','www.tnt.gr','Athens','Themistokleous 45',12311),(6,'Acropolis Museum','www.fertepisomarmara.gr','Athens','Acropoleos 1',16500),(7,'Souliomagazo','www.soulios.gr','Drama','Doxas 4',19184);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_sells_beer`
--

DROP TABLE IF EXISTS `shop_sells_beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_sells_beer` (
  `BEER_beerID` int NOT NULL,
  `BEER_companyID` int NOT NULL,
  `SHOP_shopID` int NOT NULL,
  `beerPrice` decimal(5,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`BEER_beerID`,`BEER_companyID`,`SHOP_shopID`),
  KEY `fk_BEER_has_SHOP_SHOP1_idx` (`SHOP_shopID`),
  KEY `fk_BEER_has_SHOP_BEER1_idx` (`BEER_beerID`,`BEER_companyID`),
  CONSTRAINT `fk_BEER_has_SHOP_BEER1` FOREIGN KEY (`BEER_beerID`, `BEER_companyID`) REFERENCES `beer` (`beerID`, `companyID`),
  CONSTRAINT `fk_BEER_has_SHOP_SHOP1` FOREIGN KEY (`SHOP_shopID`) REFERENCES `shop` (`shopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_sells_beer`
--

LOCK TABLES `shop_sells_beer` WRITE;
/*!40000 ALTER TABLE `shop_sells_beer` DISABLE KEYS */;
INSERT INTO `shop_sells_beer` VALUES (1,1,3,1.50),(1,1,5,1.00),(2,1,3,2.00),(3,1,3,2.50),(3,1,7,3.50),(4,1,3,3.00),(5,2,1,5.00),(5,2,7,5.50),(6,2,5,1.50),(8,3,5,2.00),(9,3,1,5.50),(11,4,2,4.50),(11,4,6,9.00),(12,4,2,5.00),(12,4,6,10.00),(13,4,2,6.00),(13,4,6,10.00),(14,5,4,4.00),(15,5,1,6.00),(15,5,4,5.50),(15,5,7,5.00),(16,5,4,6.00),(16,5,7,4.50),(17,6,4,6.00),(18,6,4,5.00),(19,6,4,8.00),(20,7,6,10.00),(21,7,6,12.00),(22,7,6,10.00);
/*!40000 ALTER TABLE `shop_sells_beer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `SHOP_SELLS_BEER_BEFORE_INSERT` BEFORE INSERT ON `shop_sells_beer` FOR EACH ROW BEGIN
	IF (NEW.beerPrice = 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `SHOP_SELLS_BEER_BEFORE_UPDATE` BEFORE UPDATE ON `shop_sells_beer` FOR EACH ROW BEGIN
IF (NEW.beerPrice = 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL,
  `userName` varchar(25) DEFAULT NULL,
  `emailAddress` varchar(25) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phoneNumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Megas Alekos','aleksandros@yahoo.mk',33,'6923103370'),(2,'Diamantis Themopoulos','themiskiansarec@gmail.com',26,'2310123321'),(3,'Stamatis Sasos','bravo@mega.com',50,'6942069420'),(4,'Mitsos Kiriotakis','happytraveller@dap.gr',56,'2313131313'),(5,'Peter Anastasopoulos','madclip@icloud.com',30,'6900112233'),(6,'Stavros Paidarakis','sntavvvrsss@pamak.gr',23,'6979103254'),(7,'Petros Mantalos','paiktaras@acme.com',30,'6921356785'),(8,'Gill Baits','megahard@icloud.com',60,'2310666666'),(9,'Beff Jezos','boburnham@gmail.com',99,'2102121212');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `USER_BEFORE_INSERT` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
	IF (NEW.age < 18) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `USER_BEFORE_UPDATE` BEFORE UPDATE ON `user` FOR EACH ROW BEGIN
	IF (NEW.age < 18) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_reviews_beer`
--

DROP TABLE IF EXISTS `user_reviews_beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reviews_beer` (
  `USER_userID` int NOT NULL,
  `BEER_beerID` int NOT NULL,
  `BEER_companyID` int NOT NULL,
  `rating` int DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`USER_userID`,`BEER_beerID`,`BEER_companyID`),
  KEY `fk_USER_has_BEER_BEER1_idx` (`BEER_beerID`,`BEER_companyID`),
  KEY `fk_USER_has_BEER_USER1_idx` (`USER_userID`),
  CONSTRAINT `fk_USER_has_BEER_BEER1` FOREIGN KEY (`BEER_beerID`, `BEER_companyID`) REFERENCES `beer` (`beerID`, `companyID`),
  CONSTRAINT `fk_USER_has_BEER_USER1` FOREIGN KEY (`USER_userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reviews_beer`
--

LOCK TABLES `user_reviews_beer` WRITE;
/*!40000 ALTER TABLE `user_reviews_beer` DISABLE KEYS */;
INSERT INTO `user_reviews_beer` VALUES (2,5,2,5,'Oti kalytero exo piei!'),(4,15,5,1,'San katouro itan :angry emoji:'),(6,9,3,3,'Ligo pikri gia ta gousta mou alla timia :$'),(9,1,1,2,'Poly akrivi gia tin tcepi m :(');
/*!40000 ALTER TABLE `user_reviews_beer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_reviews_beer_BEFORE_INSERT` BEFORE INSERT ON `user_reviews_beer` FOR EACH ROW BEGIN
IF (NEW.rating < 0) OR (NEW.rating > 5) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_reviews_beer_AFTER_UPDATE` AFTER UPDATE ON `user_reviews_beer` FOR EACH ROW BEGIN
IF (NEW.rating < 0) OR (NEW.rating > 5) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `beers & companies`
--

/*!50001 DROP VIEW IF EXISTS `beers & companies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `beers & companies` AS select `beer`.`beerName` AS `Beer`,`company`.`companyName` AS `Company` from (`company` join `beer` on((`company`.`companyID` = `beer`.`companyID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `breweries & companies`
--

/*!50001 DROP VIEW IF EXISTS `breweries & companies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `breweries & companies` AS select `brewery`.`breweryName` AS `Brewery`,`company`.`companyName` AS `Company` from (`company` join `brewery` on((`company`.`companyID` = `brewery`.`companyID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `numberofbeersproducedbybreweries`
--

/*!50001 DROP VIEW IF EXISTS `numberofbeersproducedbybreweries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numberofbeersproducedbybreweries` AS select count(`brewery_brews_beer`.`BEER_beerID`) AS `COUNT(BEER_beerID)`,`brewery_brews_beer`.`BREWERY_breweryID` AS `BREWERY_breweryID` from `brewery_brews_beer` group by `brewery_brews_beer`.`BREWERY_breweryID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `numberofreviews`
--

/*!50001 DROP VIEW IF EXISTS `numberofreviews`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numberofreviews` AS select count(`user_reviews_beer`.`BEER_beerID`) AS `COUNT(BEER_beerID)`,`user_reviews_beer`.`USER_userID` AS `USER_userID` from `user_reviews_beer` group by `user_reviews_beer`.`USER_userID` */;
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

-- Dump completed on 2021-12-19 18:57:59
