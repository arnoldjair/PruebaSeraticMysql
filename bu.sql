-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: prueba_seratic_mysql
-- ------------------------------------------------------
-- Server version	5.5.49-0+deb8u1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(150) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'category1','remark1'),(2,'category2','remark2'),(3,'category3','remark3'),(4,'category4','remark4'),(5,'category5','remark5'),(6,'category6','remark6'),(7,'category7','remark7'),(8,'category8','remark8'),(9,'category9','remark9'),(10,'category10','remark10'),(11,'categor11','remark21'),(12,'catego12','remark31'),(13,'categ13','remark41'),(14,'cate14','remark51'),(15,'cat15','remark61'),(16,'cate16','remark71'),(17,'categ17','remark81'),(18,'category18','remark91');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `membership_number` int(11) NOT NULL AUTO_INCREMENT,
  `full_names` varchar(150) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `physical_address` varchar(255) DEFAULT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(75) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`membership_number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (2,'Carlitos Yalanda','male','1995-07-01','Evergreen terrace','252828','3131111111','carlosya@mail.com'),(3,'Adriana Perez','female','1994-07-01','Evergreen terrace','252828','3131111111','carlosya@mail.com'),(4,'Camila Lopez','female','1993-07-01','Evergreen terrace','252828','3131111111','carlosya@mail.com'),(5,'Andres Majin','male','1992-07-01','Evergreen terrace','252828','3131111111','carlosya@mail.com'),(6,'Lorena Sacred','female','1991-07-01','Evergreen terrace','252828','3131111111','carlosya@mail.com'),(7,'Daniela Salcedo','female','1990-07-01','Evergreen terrace','252828','3131111111','carlosya@mail.com'),(8,'Alfredo Omote','male','1991-07-01','Evergreen terrace','252828','3131111111','carlosya@mail.com'),(9,'Jory Luna','male','1992-07-01','Evergreen terrace','252828','3131111111','carlosya@mail.com'),(10,'Darwin Serafin','male','1991-07-01','Evergreen terrace','252828','3131111111','carlosya@mail.com');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_rentals`
--

DROP TABLE IF EXISTS `movie_rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_rentals` (
  `references_number` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `membership_number` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`references_number`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_rentals`
--

LOCK TABLES `movie_rentals` WRITE;
/*!40000 ALTER TABLE `movie_rentals` DISABLE KEYS */;
INSERT INTO `movie_rentals` VALUES (1,'2016-01-01','2016-01-05',2,1),(2,'2016-01-01','2016-01-05',3,2),(3,'2016-01-01','2016-01-05',4,3),(4,'2016-01-01','2016-01-05',5,4),(5,'2016-01-01','2016-01-05',6,5),(6,'2016-01-01','2016-01-05',7,6),(7,'2016-01-01','2016-01-05',8,7),(8,'2016-01-01','2016-01-05',9,8),(9,'2016-01-01','2016-01-05',10,9);
/*!40000 ALTER TABLE `movie_rentals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(350) DEFAULT NULL,
  `director` varchar(150) DEFAULT NULL,
  `year_released` varchar(4) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `movie_category` (`category_id`),
  CONSTRAINT `movie_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Peli1','Director1','2000',1),(2,'Peli2','Director2','2001',2),(3,'Peli3','Director1','2002',3),(4,'Peli4','Director2','2003',4),(5,'Peli5','Director3','2004',5),(6,'Peli6','Director1','2004',6),(7,'Peli7','Director2','2005',7),(8,'Peli8','Director3','2005',8),(9,'Peli1','Director3','2005',9);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_number` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `amount_paid` float DEFAULT NULL,
  `external_reference_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `payment_member` (`membership_number`),
  CONSTRAINT `payment_member` FOREIGN KEY (`membership_number`) REFERENCES `members` (`membership_number`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,2,'2016-01-01','none',15000,100),(2,3,'2016-01-01','none',15000,100),(3,4,'2016-01-01','none',15000,100),(4,5,'2016-01-01','none',15000,100),(5,6,'2016-01-01','none',15000,100),(6,7,'2016-01-01','none',15000,100),(7,8,'2016-01-01','none',15000,100),(8,9,'2016-01-01','none',15000,100),(9,10,'2016-01-01','none',15000,100);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-11 12:52:01
