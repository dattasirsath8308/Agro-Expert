-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.30-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema agroexpert
--

CREATE DATABASE IF NOT EXISTS agroexpert;
USE agroexpert;

--
-- Definition of table `crop`
--

DROP TABLE IF EXISTS `crop`;
CREATE TABLE `crop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cropname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop`
--

/*!40000 ALTER TABLE `crop` DISABLE KEYS */;
INSERT INTO `crop` (`id`,`cropname`) VALUES 
 (1,'Wheat'),
 (2,'Paddy'),
 (3,'Maize'),
 (4,'Jouar'),
 (5,'Bajara'),
 (6,'Ragi'),
 (7,'Barley'),
 (8,'Gram'),
 (9,'Lentil'),
 (10,'Peans'),
 (11,'Urd'),
 (12,'Moong'),
 (13,'Arhar'),
 (14,'CowPea'),
 (15,'Moth'),
 (16,'Groundnut'),
 (17,'Til'),
 (18,'Sunflower'),
 (19,'Soyabean'),
 (20,'Castor');
/*!40000 ALTER TABLE `crop` ENABLE KEYS */;


--
-- Definition of table `cropdataset`
--

DROP TABLE IF EXISTS `cropdataset`;
CREATE TABLE `cropdataset` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `region` varchar(45) NOT NULL,
  `season` varchar(45) NOT NULL,
  `land` varchar(45) NOT NULL,
  `weather` varchar(45) NOT NULL,
  `temprature` varchar(45) NOT NULL,
  `crop` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cropdataset`
--

/*!40000 ALTER TABLE `cropdataset` DISABLE KEYS */;
INSERT INTO `cropdataset` (`id`,`region`,`season`,`land`,`weather`,`temprature`,`crop`) VALUES 
 (1,'Pune','Rainy','Bagayat or irrigated land','Cloudy','20-30','Cotton'),
 (2,'Pune','Rainy','Bagayat or irrigated land','Sunny','20-30','SugerCane'),
 (3,'Pune','Rainy','Bagayat or irrigated land','Overcast','20-30','SugerCane'),
 (4,'Nashik','Rainy','Bagayat or irrigated land','Cloudy','20-30','SugerCane'),
 (5,'Nashik','Rainy','Bagayat or irrigated land','Sunny','30-40','SugerCane'),
 (6,'Nashik','Rainy','Bagayat or irrigated land','Cloudy','30-40','SugerCane'),
 (7,'Nashik','Rainy','Bagayat or irrigated land','Sunny','20-30','Cotton'),
 (8,'Nashik','Rainy','Bagayat or irrigated land','Sunny','30-40','SugerCane'),
 (9,'Nashik','Rainy','Bagayat or irrigated land','Overcast','30-40','Cotton'),
 (10,'Nashik','Rainy','Bagayat or irrigated land','Sunny','20-30','SugerCane'),
 (11,'Nashik','Rainy','Bagayat or irrigated land','Cloudy','30-40','Cotton'),
 (12,'Nashik','Winter','Bagayat or irrigated land','Sunny','30-40','SugerCane'),
 (13,'Nashik','Winter','Bagayat or irrigated land','Overcast','20-30','Cotton'),
 (14,'Nashik','Winter','Bagayat or irrigated land','Cloudy','30-40','SugerCane'),
 (15,'Nashik','Winter','Bagayat or irrigated land','Overcast','20-30','Cotton'),
 (16,'Nashik','Winter','Bagayat or irrigated land','Sunny','30-40','SugerCane'),
 (17,'Nashik','Winter','Bagayat or irrigated land','Overcast','20-30','Cotton');
/*!40000 ALTER TABLE `cropdataset` ENABLE KEYS */;


--
-- Definition of table `distance`
--

DROP TABLE IF EXISTS `distance`;
CREATE TABLE `distance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(45) NOT NULL,
  `lat` varchar(45) NOT NULL,
  `lon` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distance`
--

/*!40000 ALTER TABLE `distance` DISABLE KEYS */;
INSERT INTO `distance` (`id`,`city`,`lat`,`lon`) VALUES 
 (1,'Nashik','19.997454','73.789803'),
 (2,'Pune','18.516726','73.856255'),
 (3,'Gujarat','22.309425','72.136230'),
 (4,'Latur','50.604060','3.390290');
/*!40000 ALTER TABLE `distance` ENABLE KEYS */;


--
-- Definition of table `farmerregister`
--

DROP TABLE IF EXISTS `farmerregister`;
CREATE TABLE `farmerregister` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmerregister`
--

/*!40000 ALTER TABLE `farmerregister` DISABLE KEYS */;
INSERT INTO `farmerregister` (`id`,`fname`,`lname`,`address`,`phone`,`email`,`password`) VALUES 
 (1,'Madhuri','Karande','pune','7898789098','karandemadhuri123@gmail.com','940328'),
 (2,'vijay','p','pune','8888238858','vijayp123@gmail.com','Vijay@123');
/*!40000 ALTER TABLE `farmerregister` ENABLE KEYS */;


--
-- Definition of table `marketdata`
--

DROP TABLE IF EXISTS `marketdata`;
CREATE TABLE `marketdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cropname` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `rate` varchar(45) NOT NULL,
  `market` varchar(45) NOT NULL,
  `highrate` varchar(45) NOT NULL,
  `lowrate` varchar(45) NOT NULL,
  `season` varchar(45) NOT NULL,
  `VendorEmail` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketdata`
--

/*!40000 ALTER TABLE `marketdata` DISABLE KEYS */;
INSERT INTO `marketdata` (`id`,`cropname`,`date`,`rate`,`market`,`highrate`,`lowrate`,`season`,`VendorEmail`) VALUES 
 (1,'Wheat','1/1/2015','33','Nashik','40','29','Summer','sanjay@gmail.com\r'),
 (2,'Wheat','1/2/2015','32','Nashik','35','30','Summer','sanjay@gmail.com\r'),
 (3,'Wheat','1/3/2015','31','Nashik','33','27','Summer','sanjay@gmail.com\r'),
 (4,'Wheat','1/4/2015','30','Nashik','32','25','Summer','sanjay@gmail.com\r'),
 (5,'Wheat','1/5/2015','25','Nashik','27','21','Rainy','sanjay@gmail.com\r'),
 (6,'Wheat','1/6/2015','19','Nashik','21','15','Rainy','sanjay@gmail.com\r'),
 (7,'Wheat','1/7/2015','24','Nashik','26','16','Rainy','sanjay@gmail.com\r'),
 (8,'Wheat','1/8/2015','29','Nashik','32','22','Rainy','sanjay@gmail.com\r'),
 (9,'Wheat','1/9/2015','35','Nashik','37','31','Winter','sanjay@gmail.com\r'),
 (10,'Wheat','1/10/2015','27','Nashik','29','22','Winter','sanjay@gmail.com\r'),
 (11,'Wheat','1/11/2015','20','Nashik','23','19','Winter','sanjay@gmail.com\r'),
 (12,'Wheat','1/12/2015','22','Nashik','24','17','Winter','sanjay@gmail.com\r'),
 (13,'Wheat','1/1/2016','17','Nashik','19','14','Summer','sanjay@gmail.com\r'),
 (14,'Wheat','1/2/2016','16','Nashik','18','13','Summer','sanjay@gmail.com\r'),
 (15,'Wheat','1/3/2016','15','Nashik','19','12','Summer','sanjay@gmail.com\r'),
 (16,'Wheat','1/4/2016','22','Nashik','25','17','Summer','sanjay@gmail.com\r'),
 (17,'Wheat','1/5/2016','23','Nashik','27','20','Rainy','sanjay@gmail.com\r'),
 (18,'Wheat','1/6/2016','31','Nashik','35','25','Rainy','sanjay@gmail.com\r'),
 (19,'Wheat','1/7/2016','27','Nashik','33','26','Rainy','sanjay@gmail.com\r'),
 (20,'Wheat','1/8/2016','26','Nashik','29','21','Rainy','sanjay@gmail.com\r'),
 (21,'Wheat','1/9/2016','25','Nashik','27','21','Winter','sanjay@gmail.com\r'),
 (22,'Wheat','1/10/2016','21','Nashik','24','20','Winter','sanjay@gmail.com\r'),
 (23,'Wheat','1/11/2016','34','Nashik','39','29','Winter','sanjay@gmail.com\r'),
 (24,'Wheat','1/12/2016','23','Nashik','26','21','Winter','sanjay@gmail.com\r'),
 (25,'Wheat','1/1/2017','32','Nashik','35','23','Summer','sanjay@gmail.com\r'),
 (26,'Wheat','1/2/2017','33','Nashik','35','24','Summer','sanjay@gmail.com\r'),
 (27,'Wheat','1/3/2017','28','Nashik','32','24','Summer','sanjay@gmail.com\r'),
 (28,'Wheat','1/4/2017','22','Nashik','27','21','Summer','sanjay@gmail.com\r'),
 (29,'Wheat','1/5/2017','26','Nashik','29','21','Rainy','sanjay@gmail.com\r'),
 (30,'Wheat','1/6/2017','34','Nashik','39','26','Rainy','sanjay@gmail.com\r'),
 (31,'Wheat','1/7/2017','22','Nashik','27','19','Rainy','sanjay@gmail.com\r'),
 (32,'Wheat','1/8/2017','23','Nashik','29','21','Rainy','sanjay@gmail.com\r'),
 (33,'Wheat','1/9/2017','25','Nashik','30','22','Winter','sanjay@gmail.com\r'),
 (34,'Wheat','1/10/2017','19','Nashik','22','16','Winter','sanjay@gmail.com\r'),
 (35,'Wheat','1/11/2017','18','Nashik','23','14','Winter','sanjay@gmail.com\r'),
 (36,'Wheat','1/12/2017','16','Nashik','19','12','Winter','sanjay@gmail.com\r'),
 (37,'Wheat','1/1/2018','33','Nashik','39','18','Summer','sanjay@gmail.com\r'),
 (38,'Wheat','2/1/2018','22','Nashik','19','27','Summer','sanjay@gmail.com\r'),
 (39,'Wheat','3/1/2018','23','Nashik','18','25','Summer','sanjay@gmail.com\r'),
 (40,'Wheat','4/1/2018','31','Nashik','19','21','Summer','sanjay@gmail.com\r'),
 (41,'Wheat','5/1/2018','27','Nashik','25','15','Rainy','sanjay@gmail.com\r'),
 (42,'Wheat','6/1/2018','26','Nashik','27','16','Rainy','sanjay@gmail.com\r'),
 (43,'Wheat','7/1/2018','25','Nashik','35','22','Rainy','sanjay@gmail.com\r'),
 (44,'Wheat','8/1/2018','21','Nashik','33','31','Rainy','sanjay@gmail.com\r'),
 (45,'Wheat','9/1/2018','34','Nashik','29','22','Winter','sanjay@gmail.com\r'),
 (46,'Wheat','10/1/2018','23','Nashik','27','19','Winter','sanjay@gmail.com\r'),
 (47,'Wheat','11/1/2018','32','Nashik','24','17','Winter','sanjay@gmail.com\r'),
 (48,'Wheat','12/1/2018','33','Nashik','39','14','Winter','sanjay@gmail.com\r'),
 (49,'Wheat','1/1/2019','28','Nashik','26','13','Summer','sanjay@gmail.com\r'),
 (50,'Wheat','2/1/2019','23','Nashik','32','24','Summer','sanjay@gmail.com\r'),
 (51,'Wheat','3/1/2019','32','Nashik','27','24','Summer','sanjay@gmail.com\r'),
 (52,'Wheat','4/1/2019','33','Nashik','29','21','Summer','sanjay@gmail.com\r'),
 (53,'Wheat','5/1/2019','28','Nashik','39','21','Rainy','sanjay@gmail.com\r'),
 (54,'Wheat','6/1/2019','22','Nashik','27','26','Rainy','sanjay@gmail.com\r'),
 (55,'Wheat','7/1/2019','26','Nashik','29','19','Rainy','sanjay@gmail.com\r'),
 (56,'Wheat','8/1/2019','34','Nashik','30','21','Rainy','sanjay@gmail.com\r'),
 (57,'Wheat','9/1/2019','22','Nashik','22','22','Winter','sanjay@gmail.com\r'),
 (58,'Wheat','10/1/2019','23','Nashik','23','16','Winter','sanjay@gmail.com\r'),
 (59,'Wheat','11/1/2019','25','Nashik','19','14','Winter','sanjay@gmail.com\r'),
 (60,'Wheat','12/1/2019','19','Nashik','39','12','Winter','sanjay@gmail.com\r'),
 (61,'Wheat','1/1/2015','29','Pune','25','12','Summer','chaitali@gmail.com\r'),
 (62,'Wheat','1/2/2015','35','Pune','27','17','Summer','chaitali@gmail.com\r'),
 (63,'Wheat','1/3/2015','27','Pune','35','20','Summer','chaitali@gmail.com\r'),
 (64,'Wheat','1/4/2015','20','Pune','33','25','Summer','chaitali@gmail.com\r'),
 (65,'Wheat','1/5/2015','22','Pune','29','26','Rainy','chaitali@gmail.com\r'),
 (66,'Wheat','1/6/2015','17','Pune','27','21','Rainy','chaitali@gmail.com\r'),
 (67,'Wheat','1/7/2015','16','Pune','24','21','Rainy','chaitali@gmail.com\r'),
 (68,'Wheat','1/8/2015','15','Pune','39','20','Rainy','chaitali@gmail.com\r'),
 (69,'Wheat','1/9/2015','22','Pune','26','29','Winter','chaitali@gmail.com\r'),
 (70,'Wheat','1/10/2015','23','Pune','35','21','Winter','chaitali@gmail.com\r'),
 (71,'Wheat','1/11/2015','31','Pune','35','23','Winter','chaitali@gmail.com\r'),
 (72,'Wheat','1/12/2015','27','Pune','32','24','Winter','chaitali@gmail.com\r'),
 (73,'Wheat','1/1/2016','26','Pune','27','24','Summer','chaitali@gmail.com\r'),
 (74,'Wheat','1/2/2016','25','Pune','29','21','Summer','chaitali@gmail.com\r'),
 (75,'Wheat','1/3/2016','21','Pune','39','21','Summer','chaitali@gmail.com\r'),
 (76,'Wheat','1/4/2016','34','Pune','27','26','Summer','chaitali@gmail.com\r'),
 (77,'Wheat','1/5/2016','23','Pune','29','19','Rainy','chaitali@gmail.com\r'),
 (78,'Wheat','1/6/2016','32','Pune','30','21','Rainy','chaitali@gmail.com\r'),
 (79,'Wheat','1/7/2016','33','Pune','22','22','Rainy','chaitali@gmail.com\r'),
 (80,'Wheat','1/8/2016','28','Pune','23','16','Rainy','chaitali@gmail.com\r'),
 (81,'Wheat','1/9/2016','22','Pune','19','14','Winter','chaitali@gmail.com\r'),
 (82,'Wheat','1/10/2016','26','Pune','39','12','Winter','chaitali@gmail.com\r'),
 (83,'Wheat','1/11/2016','34','Pune','19','12','Winter','chaitali@gmail.com\r'),
 (84,'Wheat','1/12/2016','22','Pune','18','17','Winter','chaitali@gmail.com\r'),
 (85,'Wheat','1/1/2017','23','Pune','19','20','Summer','chaitali@gmail.com\r'),
 (86,'Wheat','1/2/2017','25','Pune','25','25','Summer','chaitali@gmail.com\r'),
 (87,'Wheat','1/3/2017','19','Pune','27','26','Summer','chaitali@gmail.com\r'),
 (88,'Wheat','1/4/2017','18','Pune','35','21','Summer','chaitali@gmail.com\r'),
 (89,'Wheat','1/5/2017','16','Pune','33','21','Rainy','chaitali@gmail.com\r'),
 (90,'Wheat','1/6/2017','33','Pune','29','20','Rainy','chaitali@gmail.com\r'),
 (91,'Wheat','1/7/2017','29','Pune','27','29','Rainy','chaitali@gmail.com\r'),
 (92,'Wheat','1/8/2017','35','Pune','24','21','Rainy','chaitali@gmail.com\r'),
 (93,'Wheat','1/9/2017','27','Pune','27','23','Winter','chaitali@gmail.com\r'),
 (94,'Wheat','1/10/2017','20','Pune','29','24','Winter','chaitali@gmail.com\r'),
 (95,'Wheat','1/11/2017','22','Pune','39','24','Winter','chaitali@gmail.com\r'),
 (96,'Wheat','1/12/2017','17','Pune','27','21','Winter','chaitali@gmail.com\r'),
 (97,'Wheat','1/1/2018','16','Pune','29','21','Summer','chaitali@gmail.com\r'),
 (98,'Wheat','2/1/2018','15','Pune','30','26','Summer','chaitali@gmail.com\r'),
 (99,'Wheat','3/1/2018','22','Pune','22','19','Summer','chaitali@gmail.com\r'),
 (100,'Wheat','4/1/2018','23','Pune','23','21','Summer','chaitali@gmail.com\r'),
 (101,'Wheat','5/1/2018','31','Pune','19','22','Rainy','chaitali@gmail.com\r'),
 (102,'Wheat','6/1/2018','27','Pune','39','16','Rainy','chaitali@gmail.com\r'),
 (103,'Wheat','7/1/2018','26','Pune','19','14','Rainy','chaitali@gmail.com\r'),
 (104,'Wheat','8/1/2018','25','Pune','18','12','Rainy','chaitali@gmail.com\r'),
 (105,'Wheat','9/1/2018','21','Pune','19','12','Winter','chaitali@gmail.com\r'),
 (106,'Wheat','10/1/2018','34','Pune','25','17','Winter','chaitali@gmail.com\r'),
 (107,'Wheat','11/1/2018','23','Pune','27','20','Winter','chaitali@gmail.com\r'),
 (108,'Wheat','12/1/2018','32','Pune','35','25','Winter','chaitali@gmail.com\r'),
 (109,'Wheat','1/1/2019','33','Pune','33','26','Summer','chaitali@gmail.com\r'),
 (110,'Wheat','2/1/2019','28','Pune','29','21','Summer','chaitali@gmail.com\r'),
 (111,'Wheat','3/1/2019','22','Pune','25','21','Summer','chaitali@gmail.com\r'),
 (112,'Wheat','4/1/2019','26','Pune','21','20','Summer','chaitali@gmail.com\r'),
 (113,'Wheat','5/1/2019','34','Pune','17','29','Rainy','chaitali@gmail.com\r'),
 (114,'Wheat','6/1/2019','22','Pune','13','21','Rainy','chaitali@gmail.com\r'),
 (115,'Wheat','7/1/2019','23','Pune','25','23','Rainy','chaitali@gmail.com\r'),
 (116,'Wheat','8/1/2019','25','Pune','27','24','Rainy','chaitali@gmail.com\r'),
 (117,'Wheat','9/1/2019','19','Pune','35','24','Winter','chaitali@gmail.com\r'),
 (118,'Wheat','10/1/2019','18','Pune','33','21','Winter','chaitali@gmail.com\r'),
 (119,'Wheat','11/1/2019','16','Pune','22','21','Winter','chaitali@gmail.com\r'),
 (120,'Wheat','12/1/2019','33','Pune','11','26','Winter','chaitali@gmail.com\r'),
 (121,'Wheat','1/1/2015','28','Latur','27','24','Summer','akshay@gmail.com\r'),
 (122,'Wheat','1/2/2015','22','Latur','29','24','Summer','akshay@gmail.com\r'),
 (123,'Wheat','1/3/2015','26','Latur','30','21','Summer','akshay@gmail.com\r'),
 (124,'Wheat','1/4/2015','34','Latur','22','21','Summer','akshay@gmail.com\r'),
 (125,'Wheat','1/5/2015','22','Latur','23','26','Rainy','akshay@gmail.com\r'),
 (126,'Wheat','1/6/2015','23','Latur','19','19','Rainy','akshay@gmail.com\r'),
 (127,'Wheat','1/7/2015','25','Latur','39','21','Rainy','akshay@gmail.com\r'),
 (128,'Wheat','1/8/2015','19','Latur','19','22','Rainy','akshay@gmail.com\r'),
 (129,'Wheat','1/9/2015','29','Latur','18','16','Winter','akshay@gmail.com\r'),
 (130,'Wheat','1/10/2015','35','Latur','19','14','Winter','akshay@gmail.com\r'),
 (131,'Wheat','1/11/2015','27','Latur','25','12','Winter','akshay@gmail.com\r'),
 (132,'Wheat','1/12/2015','20','Latur','27','12','Winter','akshay@gmail.com\r'),
 (133,'Wheat','1/1/2016','22','Latur','35','17','Summer','akshay@gmail.com\r'),
 (134,'Wheat','1/2/2016','17','Latur','33','20','Summer','akshay@gmail.com\r'),
 (135,'Wheat','1/3/2016','16','Latur','29','25','Summer','akshay@gmail.com\r'),
 (136,'Wheat','1/4/2016','15','Latur','27','26','Summer','akshay@gmail.com\r'),
 (137,'Wheat','1/5/2016','22','Latur','24','21','Rainy','akshay@gmail.com\r'),
 (138,'Wheat','1/6/2016','23','Latur','39','21','Rainy','akshay@gmail.com\r'),
 (139,'Wheat','1/7/2016','31','Latur','26','20','Rainy','akshay@gmail.com\r'),
 (140,'Wheat','1/8/2016','27','Latur','32','29','Rainy','akshay@gmail.com\r'),
 (141,'Wheat','1/9/2016','26','Latur','27','21','Winter','akshay@gmail.com\r'),
 (142,'Wheat','1/10/2016','25','Latur','29','23','Winter','akshay@gmail.com\r'),
 (143,'Wheat','1/11/2016','21','Latur','39','24','Winter','akshay@gmail.com\r'),
 (144,'Wheat','1/12/2016','34','Latur','27','24','Winter','akshay@gmail.com\r'),
 (145,'Wheat','1/1/2017','23','Latur','29','21','Summer','akshay@gmail.com\r'),
 (146,'Wheat','1/2/2017','32','Latur','30','21','Summer','akshay@gmail.com\r'),
 (147,'Wheat','1/3/2017','33','Latur','22','26','Summer','akshay@gmail.com\r'),
 (148,'Wheat','1/4/2017','28','Latur','23','19','Summer','akshay@gmail.com\r'),
 (149,'Wheat','1/5/2017','22','Latur','19','21','Rainy','akshay@gmail.com\r'),
 (150,'Wheat','1/6/2017','26','Latur','39','22','Rainy','akshay@gmail.com\r'),
 (151,'Wheat','1/7/2017','34','Latur','25','16','Rainy','akshay@gmail.com\r'),
 (152,'Wheat','1/8/2017','22','Latur','27','14','Rainy','akshay@gmail.com\r'),
 (153,'Wheat','1/9/2017','23','Latur','35','12','Winter','akshay@gmail.com\r'),
 (154,'Wheat','1/10/2017','25','Latur','33','12','Winter','akshay@gmail.com\r'),
 (155,'Wheat','1/11/2017','19','Latur','29','17','Winter','akshay@gmail.com\r'),
 (156,'Wheat','1/12/2017','18','Latur','27','20','Winter','akshay@gmail.com\r'),
 (157,'Wheat','1/1/2018','16','Latur','24','25','Summer','akshay@gmail.com\r'),
 (158,'Wheat','2/1/2018','33','Latur','39','26','Summer','akshay@gmail.com\r'),
 (159,'Wheat','3/1/2018','29','Latur','26','21','Summer','akshay@gmail.com\r'),
 (160,'Wheat','4/1/2018','35','Latur','35','21','Summer','akshay@gmail.com\r'),
 (161,'Wheat','5/1/2018','27','Latur','35','20','Rainy','akshay@gmail.com\r'),
 (162,'Wheat','6/1/2018','20','Latur','32','29','Rainy','akshay@gmail.com\r'),
 (163,'Wheat','7/1/2018','22','Latur','27','21','Rainy','akshay@gmail.com\r'),
 (164,'Wheat','8/1/2018','17','Latur','29','23','Rainy','akshay@gmail.com\r'),
 (165,'Wheat','9/1/2018','16','Latur','39','24','Winter','akshay@gmail.com\r'),
 (166,'Wheat','10/1/2018','15','Latur','27','24','Winter','akshay@gmail.com\r'),
 (167,'Wheat','11/1/2018','22','Latur','29','21','Winter','akshay@gmail.com\r'),
 (168,'Wheat','12/1/2018','23','Latur','30','21','Winter','akshay@gmail.com\r'),
 (169,'Wheat','1/1/2019','31','Latur','22','26','Summer','akshay@gmail.com\r'),
 (170,'Wheat','2/1/2019','27','Latur','23','19','Summer','akshay@gmail.com\r'),
 (171,'Wheat','3/1/2019','26','Latur','19','21','Summer','akshay@gmail.com\r'),
 (172,'Wheat','4/1/2019','25','Latur','39','22','Summer','akshay@gmail.com\r'),
 (173,'Wheat','5/1/2019','21','Latur','19','16','Rainy','akshay@gmail.com\r'),
 (174,'Wheat','6/1/2019','34','Latur','18','14','Rainy','akshay@gmail.com\r'),
 (175,'Wheat','7/1/2019','23','Latur','19','12','Rainy','akshay@gmail.com\r'),
 (176,'Wheat','8/1/2019','32','Latur','25','12','Rainy','akshay@gmail.com\r'),
 (177,'Wheat','9/1/2019','33','Latur','27','17','Winter','akshay@gmail.com\r'),
 (178,'Wheat','10/1/2019','28','Latur','35','20','Winter','akshay@gmail.com\r'),
 (179,'Wheat','11/1/2019','22','Latur','33','25','Winter','akshay@gmail.com\r'),
 (180,'Wheat','12/1/2019','26','Latur','29','24','Winter','akshay@gmail.com\r'),
 (181,'Wheat','1/1/2015','22','Gujarat','26','12','Summer','abhijit@gmail.com\r'),
 (182,'Wheat','1/2/2015','34','Gujarat','39','30','Summer','abhijit@gmail.com\r'),
 (183,'Wheat','1/3/2015','18','Gujarat','35','11','Summer','abhijit@gmail.com\r'),
 (184,'Wheat','1/4/2015','16','Gujarat','33','30','Summer','abhijit@gmail.com\r'),
 (185,'Wheat','1/5/2015','33','Gujarat','29','18','Rainy','abhijit@gmail.com\r'),
 (186,'Wheat','1/6/2015','29','Gujarat','27','15','Rainy','abhijit@gmail.com\r'),
 (187,'Wheat','1/7/2015','35','Gujarat','24','13','Rainy','abhijit@gmail.com\r'),
 (188,'Wheat','1/8/2015','27','Gujarat','39','33','Rainy','abhijit@gmail.com\r'),
 (189,'Wheat','1/9/2015','20','Gujarat','26','12','Winter','abhijit@gmail.com\r'),
 (190,'Wheat','1/10/2015','22','Gujarat','32','23','Winter','abhijit@gmail.com\r'),
 (191,'Wheat','1/11/2015','17','Gujarat','27','22','Winter','abhijit@gmail.com\r'),
 (192,'Wheat','1/12/2015','16','Gujarat','29','11','Winter','abhijit@gmail.com\r'),
 (193,'Wheat','1/1/2016','15','Gujarat','39','21','Summer','abhijit@gmail.com\r'),
 (194,'Wheat','1/2/2016','22','Gujarat','27','22','Summer','abhijit@gmail.com\r'),
 (195,'Wheat','1/3/2016','23','Gujarat','29','22','Summer','abhijit@gmail.com\r'),
 (196,'Wheat','1/4/2016','31','Gujarat','30','22','Summer','abhijit@gmail.com\r'),
 (197,'Wheat','1/5/2016','27','Gujarat','22','11','Rainy','abhijit@gmail.com\r'),
 (198,'Wheat','1/6/2016','26','Gujarat','23','11','Rainy','abhijit@gmail.com\r'),
 (199,'Wheat','1/7/2016','25','Gujarat','19','11','Rainy','abhijit@gmail.com\r'),
 (200,'Wheat','1/8/2016','21','Gujarat','39','22','Rainy','abhijit@gmail.com\r'),
 (201,'Wheat','1/9/2016','34','Gujarat','25','11','Winter','abhijit@gmail.com\r'),
 (202,'Wheat','1/10/2016','23','Gujarat','27','21','Winter','abhijit@gmail.com\r'),
 (203,'Wheat','1/11/2016','32','Gujarat','35','27','Winter','abhijit@gmail.com\r'),
 (204,'Wheat','1/12/2016','33','Gujarat','33','22','Winter','abhijit@gmail.com\r'),
 (205,'Wheat','1/1/2017','28','Gujarat','29','23','Summer','abhijit@gmail.com\r'),
 (206,'Wheat','1/2/2017','22','Gujarat','27','14','Summer','abhijit@gmail.com\r'),
 (207,'Wheat','1/3/2017','26','Gujarat','24','16','Summer','abhijit@gmail.com\r'),
 (208,'Wheat','1/4/2017','22','Gujarat','39','15','Summer','abhijit@gmail.com\r'),
 (209,'Wheat','1/5/2017','34','Gujarat','26','19','Rainy','abhijit@gmail.com\r'),
 (210,'Wheat','1/6/2017','19','Gujarat','35','13','Rainy','abhijit@gmail.com\r'),
 (211,'Wheat','1/7/2017','18','Gujarat','35','13','Rainy','abhijit@gmail.com\r'),
 (212,'Wheat','1/8/2017','16','Gujarat','32','12','Rainy','abhijit@gmail.com\r'),
 (213,'Wheat','1/9/2017','33','Gujarat','27','31','Winter','abhijit@gmail.com\r'),
 (214,'Wheat','1/10/2017','28','Gujarat','29','19','Winter','abhijit@gmail.com\r'),
 (215,'Wheat','1/11/2017','22','Gujarat','39','19','Winter','abhijit@gmail.com\r'),
 (216,'Wheat','1/12/2017','26','Gujarat','27','21','Winter','abhijit@gmail.com\r'),
 (217,'Wheat','1/1/2018','34','Gujarat','29','30','Summer','abhijit@gmail.com\r'),
 (218,'Wheat','2/1/2018','22','Gujarat','30','15','Summer','abhijit@gmail.com\r'),
 (219,'Wheat','3/1/2018','23','Gujarat','22','18','Summer','abhijit@gmail.com\r'),
 (220,'Wheat','4/1/2018','25','Gujarat','23','19','Summer','abhijit@gmail.com\r'),
 (221,'Wheat','5/1/2018','19','Gujarat','19','12','Rainy','abhijit@gmail.com\r'),
 (222,'Wheat','6/1/2018','29','Gujarat','39','21','Rainy','abhijit@gmail.com\r'),
 (223,'Wheat','7/1/2018','35','Gujarat','38','30','Rainy','abhijit@gmail.com\r'),
 (224,'Wheat','8/1/2018','27','Gujarat','18','22','Rainy','abhijit@gmail.com\r'),
 (225,'Wheat','9/1/2018','20','Gujarat','19','15','Winter','abhijit@gmail.com\r'),
 (226,'Wheat','10/1/2018','22','Gujarat','25','15','Winter','abhijit@gmail.com\r'),
 (227,'Wheat','11/1/2018','17','Gujarat','27','13','Winter','abhijit@gmail.com\r'),
 (228,'Wheat','12/1/2018','16','Gujarat','35','14','Winter','abhijit@gmail.com\r'),
 (229,'Wheat','1/1/2019','15','Gujarat','33','13','Summer','abhijit@gmail.com\r'),
 (230,'Wheat','2/1/2019','22','Gujarat','29','21','Summer','abhijit@gmail.com\r'),
 (231,'Wheat','3/1/2019','23','Gujarat','26','21','Summer','abhijit@gmail.com\r'),
 (232,'Wheat','4/1/2019','31','Gujarat','39','28','Summer','abhijit@gmail.com\r'),
 (233,'Wheat','5/1/2019','23','Gujarat','25','21','Rainy','abhijit@gmail.com\r'),
 (234,'Wheat','6/1/2019','34','Gujarat','39','31','Rainy','abhijit@gmail.com\r'),
 (235,'Wheat','7/1/2019','23','Gujarat','26','21','Rainy','abhijit@gmail.com\r'),
 (236,'Wheat','8/1/2019','21','Gujarat','23','19','Rainy','abhijit@gmail.com\r'),
 (237,'Wheat','9/1/2019','25','Gujarat','27','21','Winter','abhijit@gmail.com\r'),
 (238,'Wheat','10/1/2019','17','Gujarat','19','15','Winter','abhijit@gmail.com\r'),
 (239,'Wheat','11/1/2019','19','Gujarat','22','15','Winter','abhijit@gmail.com\r'),
 (240,'Wheat','12/1/2019','25','Gujarat','28','21','Winter','abhijit@gmail.com\r'),
 (241,'Groundnut','1/1/2015','45','Nashik','55','34','Summer','sanjay@gmail.com\r'),
 (242,'Groundnut','1/2/2015','55','Nashik','87','43','Summer','sanjay@gmail.com\r'),
 (243,'Groundnut','1/3/2015','60','Nashik','67','45','Summer','sanjay@gmail.com\r'),
 (244,'Groundnut','1/4/2015','48','Nashik','98','45','Summer','sanjay@gmail.com\r'),
 (245,'Groundnut','1/5/2015','56','Nashik','78','46','Rainy','sanjay@gmail.com\r'),
 (246,'Groundnut','1/6/2015','67','Nashik','77','47','Rainy','sanjay@gmail.com\r'),
 (247,'Groundnut','1/7/2015','48','Nashik','87','48','Rainy','sanjay@gmail.com\r'),
 (248,'Groundnut','1/8/2015','70','Nashik','89','66','Rainy','sanjay@gmail.com\r'),
 (249,'Groundnut','1/9/2015','75','Nashik','78','67','Winter','sanjay@gmail.com\r'),
 (250,'Groundnut','1/10/2015','45','Nashik','87','43','Winter','sanjay@gmail.com\r'),
 (251,'Groundnut','1/11/2015','67','Nashik','98','67','Winter','sanjay@gmail.com\r'),
 (252,'Groundnut','1/12/2015','56','Nashik','78','55','Winter','sanjay@gmail.com\r'),
 (253,'Groundnut','1/1/2016','45','Nashik','94','34','Summer','sanjay@gmail.com\r'),
 (254,'Groundnut','1/2/2016','75','Nashik','95','67','Summer','sanjay@gmail.com\r'),
 (255,'Groundnut','1/3/2016','46','Nashik','96','43','Summer','sanjay@gmail.com\r'),
 (256,'Groundnut','1/4/2016','57','Nashik','76','56','Summer','sanjay@gmail.com\r'),
 (257,'Groundnut','1/5/2016','57','Nashik','86','44','Rainy','sanjay@gmail.com\r'),
 (258,'Groundnut','1/6/2016','49','Nashik','87','39','Rainy','sanjay@gmail.com\r'),
 (259,'Groundnut','1/7/2016','50','Nashik','78','45','Rainy','sanjay@gmail.com\r'),
 (260,'Groundnut','1/8/2016','76','Nashik','99','56','Rainy','sanjay@gmail.com\r'),
 (261,'Groundnut','1/9/2016','57','Nashik','110','56','Winter','sanjay@gmail.com\r'),
 (262,'Groundnut','1/10/2016','56','Nashik','120','44','Winter','sanjay@gmail.com\r'),
 (263,'Groundnut','1/11/2016','45','Nashik','112','34','Winter','sanjay@gmail.com\r'),
 (264,'Groundnut','1/12/2016','65','Nashik','112','45','Winter','sanjay@gmail.com\r'),
 (265,'Groundnut','1/1/2017','54','Nashik','113','44','Summer','sanjay@gmail.com\r'),
 (266,'Groundnut','1/2/2017','76','Nashik','89','66','Summer','sanjay@gmail.com\r'),
 (267,'Groundnut','1/3/2017','56','Nashik','78','55','Summer','sanjay@gmail.com\r'),
 (268,'Groundnut','1/4/2017','46','Nashik','98','45','Summer','sanjay@gmail.com\r'),
 (269,'Groundnut','1/5/2017','66','Nashik','78','43','Rainy','sanjay@gmail.com\r'),
 (270,'Groundnut','1/6/2017','67','Nashik','99','45','Rainy','sanjay@gmail.com\r'),
 (271,'Groundnut','1/7/2017','66','Nashik','89','34','Rainy','sanjay@gmail.com\r'),
 (272,'Groundnut','1/8/2017','55','Nashik','79','43','Rainy','sanjay@gmail.com\r'),
 (273,'Groundnut','1/9/2017','56','Nashik','98','45','Winter','sanjay@gmail.com\r'),
 (274,'Groundnut','1/10/2017','57','Nashik','93','45','Winter','sanjay@gmail.com\r'),
 (275,'Groundnut','1/11/2017','58','Nashik','93','46','Winter','sanjay@gmail.com\r'),
 (276,'Groundnut','1/12/2017','58','Nashik','92','47','Winter','sanjay@gmail.com\r'),
 (277,'Groundnut','1/1/2018','60','Nashik','93','48','Summer','sanjay@gmail.com\r'),
 (278,'Groundnut','2/1/2018','54','Nashik','75','66','Summer','sanjay@gmail.com\r'),
 (279,'Groundnut','3/1/2018','55','Nashik','86','67','Summer','sanjay@gmail.com\r'),
 (280,'Groundnut','4/1/2018','63','Nashik','87','43','Summer','sanjay@gmail.com\r'),
 (281,'Groundnut','5/1/2018','65','Nashik','99','67','Rainy','sanjay@gmail.com\r'),
 (282,'Groundnut','6/1/2018','66','Nashik','89','55','Rainy','sanjay@gmail.com\r'),
 (283,'Groundnut','7/1/2018','67','Nashik','79','34','Rainy','sanjay@gmail.com\r'),
 (284,'Groundnut','8/1/2018','68','Nashik','98','67','Rainy','sanjay@gmail.com\r'),
 (285,'Groundnut','9/1/2018','69','Nashik','93','43','Winter','sanjay@gmail.com\r'),
 (286,'Groundnut','10/1/2018','70','Nashik','93','56','Winter','sanjay@gmail.com\r'),
 (287,'Groundnut','11/1/2018','32','Nashik','92','44','Winter','sanjay@gmail.com\r'),
 (288,'Groundnut','12/1/2018','33','Nashik','93','39','Winter','sanjay@gmail.com\r'),
 (289,'Groundnut','1/1/2019','28','Nashik','75','45','Summer','sanjay@gmail.com\r'),
 (290,'Groundnut','2/1/2019','23','Nashik','86','56','Summer','sanjay@gmail.com\r'),
 (291,'Groundnut','3/1/2019','32','Nashik','87','56','Summer','sanjay@gmail.com\r'),
 (292,'Groundnut','4/1/2019','33','Nashik','128','44','Summer','sanjay@gmail.com\r'),
 (293,'Groundnut','5/1/2019','45','Nashik','99','34','Rainy','sanjay@gmail.com\r'),
 (294,'Groundnut','6/1/2019','55','Nashik','89','45','Rainy','sanjay@gmail.com\r'),
 (295,'Groundnut','7/1/2019','60','Nashik','79','44','Rainy','sanjay@gmail.com\r'),
 (296,'Groundnut','8/1/2019','48','Nashik','98','66','Rainy','sanjay@gmail.com\r'),
 (297,'Groundnut','9/1/2019','56','Nashik','93','55','Winter','sanjay@gmail.com\r'),
 (298,'Groundnut','10/1/2019','67','Nashik','93','45','Winter','sanjay@gmail.com\r'),
 (299,'Groundnut','11/1/2019','48','Nashik','92','43','Winter','sanjay@gmail.com\r'),
 (300,'Groundnut','12/1/2019','70','Nashik','93','45','Winter','sanjay@gmail.com\r'),
 (301,'Groundnut','1/1/2015','75','Pune','75','34','Summer','chaitali@gmail.com\r'),
 (302,'Groundnut','1/2/2015','45','Pune','86','43','Summer','chaitali@gmail.com\r'),
 (303,'Groundnut','1/3/2015','67','Pune','87','45','Summer','chaitali@gmail.com\r'),
 (304,'Groundnut','1/4/2015','56','Pune','128','45','Summer','chaitali@gmail.com\r'),
 (305,'Groundnut','1/5/2015','45','Pune','99','46','Rainy','chaitali@gmail.com\r'),
 (306,'Groundnut','1/6/2015','75','Pune','89','47','Rainy','chaitali@gmail.com\r'),
 (307,'Groundnut','1/7/2015','46','Pune','79','48','Rainy','chaitali@gmail.com\r'),
 (308,'Groundnut','1/8/2015','57','Pune','98','66','Rainy','chaitali@gmail.com\r'),
 (309,'Groundnut','1/9/2015','57','Pune','93','67','Winter','chaitali@gmail.com\r'),
 (310,'Groundnut','1/10/2015','49','Pune','93','43','Winter','chaitali@gmail.com\r'),
 (311,'Groundnut','1/11/2015','50','Pune','92','67','Winter','chaitali@gmail.com\r'),
 (312,'Groundnut','1/12/2015','76','Pune','93','55','Winter','chaitali@gmail.com\r'),
 (313,'Groundnut','1/1/2016','26','Pune','75','34','Summer','chaitali@gmail.com\r'),
 (314,'Groundnut','1/2/2016','25','Pune','86','67','Summer','chaitali@gmail.com\r'),
 (315,'Groundnut','1/3/2016','21','Pune','87','43','Summer','chaitali@gmail.com\r'),
 (316,'Groundnut','1/4/2016','34','Pune','128','56','Summer','chaitali@gmail.com\r'),
 (317,'Groundnut','1/5/2016','23','Pune','99','44','Rainy','chaitali@gmail.com\r'),
 (318,'Groundnut','1/6/2016','32','Pune','89','39','Rainy','chaitali@gmail.com\r'),
 (319,'Groundnut','1/7/2016','33','Pune','79','45','Rainy','chaitali@gmail.com\r'),
 (320,'Groundnut','1/8/2016','28','Pune','98','56','Rainy','chaitali@gmail.com\r'),
 (321,'Groundnut','1/9/2016','22','Pune','93','56','Winter','chaitali@gmail.com\r'),
 (322,'Groundnut','1/10/2016','26','Pune','93','44','Winter','chaitali@gmail.com\r'),
 (323,'Groundnut','1/11/2016','34','Pune','92','34','Winter','chaitali@gmail.com\r'),
 (324,'Groundnut','1/12/2016','22','Pune','93','45','Winter','chaitali@gmail.com\r'),
 (325,'Groundnut','1/1/2017','23','Pune','75','44','Summer','chaitali@gmail.com\r'),
 (326,'Groundnut','1/2/2017','45','Pune','86','66','Summer','chaitali@gmail.com\r'),
 (327,'Groundnut','1/3/2017','55','Pune','87','55','Summer','chaitali@gmail.com\r'),
 (328,'Groundnut','1/4/2017','60','Pune','128','45','Summer','chaitali@gmail.com\r'),
 (329,'Groundnut','1/5/2017','48','Pune','87','43','Rainy','chaitali@gmail.com\r'),
 (330,'Groundnut','1/6/2017','56','Pune','98','45','Rainy','chaitali@gmail.com\r'),
 (331,'Groundnut','1/7/2017','67','Pune','78','34','Rainy','chaitali@gmail.com\r'),
 (332,'Groundnut','1/8/2017','48','Pune','94','43','Rainy','chaitali@gmail.com\r'),
 (333,'Groundnut','1/9/2017','70','Pune','95','45','Winter','chaitali@gmail.com\r'),
 (334,'Groundnut','1/10/2017','75','Pune','96','45','Winter','chaitali@gmail.com\r'),
 (335,'Groundnut','1/11/2017','45','Pune','76','46','Winter','chaitali@gmail.com\r'),
 (336,'Groundnut','1/12/2017','67','Pune','86','47','Winter','chaitali@gmail.com\r'),
 (337,'Groundnut','1/1/2018','56','Pune','87','48','Summer','chaitali@gmail.com\r'),
 (338,'Groundnut','2/1/2018','45','Pune','78','66','Summer','chaitali@gmail.com\r'),
 (339,'Groundnut','3/1/2018','75','Pune','99','67','Summer','chaitali@gmail.com\r'),
 (340,'Groundnut','4/1/2018','46','Pune','110','43','Summer','chaitali@gmail.com\r'),
 (341,'Groundnut','5/1/2018','57','Pune','120','67','Rainy','chaitali@gmail.com\r'),
 (342,'Groundnut','6/1/2018','57','Pune','112','55','Rainy','chaitali@gmail.com\r'),
 (343,'Groundnut','7/1/2018','49','Pune','112','34','Rainy','chaitali@gmail.com\r'),
 (344,'Groundnut','8/1/2018','50','Pune','113','67','Rainy','chaitali@gmail.com\r'),
 (345,'Groundnut','9/1/2018','76','Pune','89','43','Winter','chaitali@gmail.com\r'),
 (346,'Groundnut','10/1/2018','34','Pune','78','56','Winter','chaitali@gmail.com\r'),
 (347,'Groundnut','11/1/2018','54','Pune','98','44','Winter','chaitali@gmail.com\r'),
 (348,'Groundnut','12/1/2018','35','Pune','78','39','Winter','chaitali@gmail.com\r'),
 (349,'Groundnut','1/1/2019','45','Pune','99','45','Summer','chaitali@gmail.com\r'),
 (350,'Groundnut','2/1/2019','42','Pune','89','56','Summer','chaitali@gmail.com\r'),
 (351,'Groundnut','3/1/2019','43','Pune','79','56','Summer','chaitali@gmail.com\r'),
 (352,'Groundnut','4/1/2019','44','Pune','98','44','Summer','chaitali@gmail.com\r'),
 (353,'Groundnut','5/1/2019','45','Pune','93','34','Rainy','chaitali@gmail.com\r'),
 (354,'Groundnut','6/1/2019','46','Pune','93','45','Rainy','chaitali@gmail.com\r'),
 (355,'Groundnut','7/1/2019','47','Pune','92','44','Rainy','chaitali@gmail.com\r'),
 (356,'Groundnut','8/1/2019','48','Pune','93','66','Rainy','chaitali@gmail.com\r'),
 (357,'Groundnut','9/1/2019','65','Pune','75','55','Winter','chaitali@gmail.com\r'),
 (358,'Groundnut','10/1/2019','54','Pune','86','45','Winter','chaitali@gmail.com\r'),
 (359,'Groundnut','11/1/2019','67','Pune','87','43','Winter','chaitali@gmail.com\r'),
 (360,'Groundnut','12/1/2019','56','Pune','98','45','Winter','chaitali@gmail.com\r'),
 (361,'Groundnut','1/1/2015','46','Latur','78','34','Summer','akshay@gmail.com\r'),
 (362,'Groundnut','1/2/2015','56','Latur','99','43','Summer','akshay@gmail.com\r'),
 (363,'Groundnut','1/3/2015','45','Latur','89','45','Summer','akshay@gmail.com\r'),
 (364,'Groundnut','1/4/2015','76','Latur','79','45','Summer','akshay@gmail.com\r'),
 (365,'Groundnut','1/5/2015','46','Latur','98','46','Rainy','akshay@gmail.com\r'),
 (366,'Groundnut','1/6/2015','46','Latur','93','47','Rainy','akshay@gmail.com\r'),
 (367,'Groundnut','1/7/2015','76','Latur','93','48','Rainy','akshay@gmail.com\r'),
 (368,'Groundnut','1/8/2015','46','Latur','92','66','Rainy','akshay@gmail.com\r'),
 (369,'Groundnut','1/9/2015','5','Latur','93','67','Winter','akshay@gmail.com\r'),
 (370,'Groundnut','1/10/2015','75','Latur','86','43','Winter','akshay@gmail.com\r'),
 (371,'Groundnut','1/11/2015','46','Latur','87','67','Winter','akshay@gmail.com\r'),
 (372,'Groundnut','1/12/2015','57','Latur','78','55','Winter','akshay@gmail.com\r'),
 (373,'Groundnut','1/1/2016','57','Latur','99','34','Summer','akshay@gmail.com\r'),
 (374,'Groundnut','1/2/2016','49','Latur','110','67','Summer','akshay@gmail.com\r'),
 (375,'Groundnut','1/3/2016','50','Latur','120','43','Summer','akshay@gmail.com\r'),
 (376,'Groundnut','1/4/2016','76','Latur','112','56','Summer','akshay@gmail.com\r'),
 (377,'Groundnut','1/5/2016','54','Latur','112','44','Rainy','akshay@gmail.com\r'),
 (378,'Groundnut','1/6/2016','35','Latur','113','39','Rainy','akshay@gmail.com\r'),
 (379,'Groundnut','1/7/2016','45','Latur','126','45','Rainy','akshay@gmail.com\r'),
 (380,'Groundnut','1/8/2016','42','Latur','55','56','Rainy','akshay@gmail.com\r'),
 (381,'Groundnut','1/9/2016','43','Latur','87','56','Winter','akshay@gmail.com\r'),
 (382,'Groundnut','1/10/2016','44','Latur','67','44','Winter','akshay@gmail.com\r'),
 (383,'Groundnut','1/11/2016','45','Latur','98','34','Winter','akshay@gmail.com\r'),
 (384,'Groundnut','1/12/2016','46','Latur','78','45','Winter','akshay@gmail.com\r'),
 (385,'Groundnut','1/1/2017','47','Latur','77','44','Summer','akshay@gmail.com\r'),
 (386,'Groundnut','1/2/2017','48','Latur','87','66','Summer','akshay@gmail.com\r'),
 (387,'Groundnut','1/3/2017','65','Latur','89','55','Summer','akshay@gmail.com\r'),
 (388,'Groundnut','1/4/2017','54','Latur','78','45','Summer','akshay@gmail.com\r'),
 (389,'Groundnut','1/5/2017','67','Latur','87','43','Rainy','akshay@gmail.com\r'),
 (390,'Groundnut','1/6/2017','56','Latur','98','45','Rainy','akshay@gmail.com\r'),
 (391,'Groundnut','1/7/2017','46','Latur','78','34','Rainy','akshay@gmail.com\r'),
 (392,'Groundnut','1/8/2017','56','Latur','94','43','Rainy','akshay@gmail.com\r'),
 (393,'Groundnut','1/9/2017','45','Latur','95','45','Winter','akshay@gmail.com\r'),
 (394,'Groundnut','1/10/2017','76','Latur','96','45','Winter','akshay@gmail.com\r'),
 (395,'Groundnut','1/11/2017','67','Latur','76','46','Winter','akshay@gmail.com\r'),
 (396,'Groundnut','1/12/2017','48','Latur','86','47','Winter','akshay@gmail.com\r'),
 (397,'Groundnut','1/1/2018','70','Latur','87','48','Summer','akshay@gmail.com\r'),
 (398,'Groundnut','2/1/2018','75','Latur','78','66','Summer','akshay@gmail.com\r'),
 (399,'Groundnut','3/1/2018','45','Latur','99','67','Summer','akshay@gmail.com\r'),
 (400,'Groundnut','4/1/2018','67','Latur','110','43','Summer','akshay@gmail.com\r'),
 (401,'Groundnut','5/1/2018','56','Latur','120','67','Rainy','akshay@gmail.com\r'),
 (402,'Groundnut','6/1/2018','45','Latur','112','55','Rainy','akshay@gmail.com\r'),
 (403,'Groundnut','7/1/2018','75','Latur','112','34','Rainy','akshay@gmail.com\r'),
 (404,'Groundnut','8/1/2018','46','Latur','113','67','Rainy','akshay@gmail.com\r'),
 (405,'Groundnut','9/1/2018','57','Latur','89','43','Winter','akshay@gmail.com\r'),
 (406,'Groundnut','10/1/2018','57','Latur','78','56','Winter','akshay@gmail.com\r'),
 (407,'Groundnut','11/1/2018','49','Latur','98','44','Winter','akshay@gmail.com\r'),
 (408,'Groundnut','12/1/2018','50','Latur','78','39','Winter','akshay@gmail.com\r'),
 (409,'Groundnut','1/1/2019','76','Latur','99','45','Summer','akshay@gmail.com\r'),
 (410,'Groundnut','2/1/2019','27','Latur','89','56','Summer','akshay@gmail.com\r'),
 (411,'Groundnut','3/1/2019','26','Latur','79','56','Summer','akshay@gmail.com\r'),
 (412,'Groundnut','4/1/2019','25','Latur','98','44','Summer','akshay@gmail.com\r'),
 (413,'Groundnut','5/1/2019','21','Latur','93','34','Rainy','akshay@gmail.com\r'),
 (414,'Groundnut','6/1/2019','34','Latur','93','45','Rainy','akshay@gmail.com\r'),
 (415,'Groundnut','7/1/2019','45','Latur','92','44','Rainy','akshay@gmail.com\r'),
 (416,'Groundnut','8/1/2019','55','Latur','93','66','Rainy','akshay@gmail.com\r'),
 (417,'Groundnut','9/1/2019','60','Latur','75','55','Winter','akshay@gmail.com\r'),
 (418,'Groundnut','10/1/2019','48','Latur','86','45','Winter','akshay@gmail.com\r'),
 (419,'Groundnut','11/1/2019','56','Latur','87','43','Winter','akshay@gmail.com\r'),
 (420,'Groundnut','12/1/2019','67','Latur','98','45','Winter','akshay@gmail.com\r'),
 (421,'Groundnut','1/1/2015','48','Gujarat','78','34','Summer','abhijit@gmail.com\r'),
 (422,'Groundnut','1/2/2015','70','Gujarat','99','43','Summer','abhijit@gmail.com\r'),
 (423,'Groundnut','1/3/2015','75','Gujarat','89','45','Summer','abhijit@gmail.com\r'),
 (424,'Groundnut','1/4/2015','45','Gujarat','79','45','Summer','abhijit@gmail.com\r'),
 (425,'Groundnut','1/5/2015','67','Gujarat','98','46','Rainy','abhijit@gmail.com\r'),
 (426,'Groundnut','1/6/2015','56','Gujarat','93','47','Rainy','abhijit@gmail.com\r'),
 (427,'Groundnut','1/7/2015','45','Gujarat','93','48','Rainy','abhijit@gmail.com\r'),
 (428,'Groundnut','1/8/2015','75','Gujarat','92','66','Rainy','abhijit@gmail.com\r'),
 (429,'Groundnut','1/9/2015','46','Gujarat','93','67','Winter','abhijit@gmail.com\r'),
 (430,'Groundnut','1/10/2015','57','Gujarat','75','43','Winter','abhijit@gmail.com\r'),
 (431,'Groundnut','1/11/2015','57','Gujarat','27','67','Winter','abhijit@gmail.com\r'),
 (432,'Groundnut','1/12/2015','49','Gujarat','29','55','Winter','abhijit@gmail.com\r'),
 (433,'Groundnut','1/1/2016','50','Gujarat','39','34','Summer','abhijit@gmail.com\r'),
 (434,'Groundnut','1/2/2016','76','Gujarat','27','67','Summer','abhijit@gmail.com\r'),
 (435,'Groundnut','1/3/2016','23','Gujarat','29','43','Summer','abhijit@gmail.com\r'),
 (436,'Groundnut','1/4/2016','31','Gujarat','30','56','Summer','abhijit@gmail.com\r'),
 (437,'Groundnut','1/5/2016','27','Gujarat','22','44','Rainy','abhijit@gmail.com\r'),
 (438,'Groundnut','1/6/2016','26','Gujarat','23','39','Rainy','abhijit@gmail.com\r'),
 (439,'Groundnut','1/7/2016','25','Gujarat','19','45','Rainy','abhijit@gmail.com\r'),
 (440,'Groundnut','1/8/2016','21','Gujarat','55','56','Rainy','abhijit@gmail.com\r'),
 (441,'Groundnut','1/9/2016','34','Gujarat','87','56','Winter','abhijit@gmail.com\r'),
 (442,'Groundnut','1/10/2016','23','Gujarat','67','44','Winter','abhijit@gmail.com\r'),
 (443,'Groundnut','1/11/2016','32','Gujarat','98','34','Winter','abhijit@gmail.com\r'),
 (444,'Groundnut','1/12/2016','45','Gujarat','78','45','Winter','abhijit@gmail.com\r'),
 (445,'Groundnut','1/1/2017','55','Gujarat','77','44','Summer','abhijit@gmail.com\r'),
 (446,'Groundnut','1/2/2017','60','Gujarat','87','66','Summer','abhijit@gmail.com\r'),
 (447,'Groundnut','1/3/2017','48','Gujarat','89','55','Summer','abhijit@gmail.com\r'),
 (448,'Groundnut','1/4/2017','56','Gujarat','78','45','Summer','abhijit@gmail.com\r'),
 (449,'Groundnut','1/5/2017','67','Gujarat','87','43','Rainy','abhijit@gmail.com\r'),
 (450,'Groundnut','1/6/2017','48','Gujarat','98','45','Rainy','abhijit@gmail.com\r'),
 (451,'Groundnut','1/7/2017','70','Gujarat','78','34','Rainy','abhijit@gmail.com\r'),
 (452,'Groundnut','1/8/2017','75','Gujarat','94','43','Rainy','abhijit@gmail.com\r'),
 (453,'Groundnut','1/9/2017','45','Gujarat','95','45','Winter','abhijit@gmail.com\r'),
 (454,'Groundnut','1/10/2017','67','Gujarat','96','45','Winter','abhijit@gmail.com\r'),
 (455,'Groundnut','1/11/2017','56','Gujarat','76','46','Winter','abhijit@gmail.com\r'),
 (456,'Groundnut','1/12/2017','45','Gujarat','86','47','Winter','abhijit@gmail.com\r'),
 (457,'Groundnut','1/1/2018','75','Gujarat','87','48','Summer','abhijit@gmail.com\r'),
 (458,'Groundnut','2/1/2018','46','Gujarat','78','66','Summer','abhijit@gmail.com\r'),
 (459,'Groundnut','3/1/2018','57','Gujarat','99','67','Summer','abhijit@gmail.com\r'),
 (460,'Groundnut','4/1/2018','57','Gujarat','110','43','Summer','abhijit@gmail.com\r'),
 (461,'Groundnut','5/1/2018','49','Gujarat','120','67','Rainy','abhijit@gmail.com\r'),
 (462,'Groundnut','6/1/2018','50','Gujarat','112','55','Rainy','abhijit@gmail.com\r'),
 (463,'Groundnut','7/1/2018','76','Gujarat','112','34','Rainy','abhijit@gmail.com\r'),
 (464,'Groundnut','8/1/2018','54','Gujarat','113','67','Rainy','abhijit@gmail.com\r'),
 (465,'Groundnut','9/1/2018','35','Gujarat','89','43','Winter','abhijit@gmail.com\r'),
 (466,'Groundnut','10/1/2018','45','Gujarat','78','56','Winter','abhijit@gmail.com\r'),
 (467,'Groundnut','11/1/2018','42','Gujarat','98','44','Winter','abhijit@gmail.com\r'),
 (468,'Groundnut','12/1/2018','43','Gujarat','78','39','Winter','abhijit@gmail.com\r'),
 (469,'Groundnut','1/1/2019','44','Gujarat','99','45','Summer','abhijit@gmail.com\r'),
 (470,'Groundnut','2/1/2019','45','Gujarat','89','56','Summer','abhijit@gmail.com\r'),
 (471,'Groundnut','3/1/2019','46','Gujarat','79','56','Summer','abhijit@gmail.com\r'),
 (472,'Groundnut','4/1/2019','47','Gujarat','98','44','Summer','abhijit@gmail.com\r'),
 (473,'Groundnut','5/1/2019','48','Gujarat','93','34','Rainy','abhijit@gmail.com\r'),
 (474,'Groundnut','6/1/2019','65','Gujarat','93','45','Rainy','abhijit@gmail.com\r'),
 (475,'Groundnut','7/1/2019','54','Gujarat','92','44','Rainy','abhijit@gmail.com\r'),
 (476,'Groundnut','8/1/2019','67','Gujarat','93','66','Rainy','abhijit@gmail.com\r'),
 (477,'Groundnut','9/1/2019','56','Gujarat','75','55','Winter','abhijit@gmail.com\r'),
 (478,'Groundnut','10/1/2019','46','Gujarat','86','45','Winter','abhijit@gmail.com\r'),
 (479,'Groundnut','11/1/2019','56','Gujarat','87','43','Winter','abhijit@gmail.com\r'),
 (480,'Groundnut','12/1/2019','45','Gujarat','128','45','Winter','abhijit@gmail.com\r'),
 (481,'Wheat','2021-04-27','45','pune','65','34','Summer','supriya@gmail.com');
/*!40000 ALTER TABLE `marketdata` ENABLE KEYS */;


--
-- Definition of table `vendorregister`
--

DROP TABLE IF EXISTS `vendorregister`;
CREATE TABLE `vendorregister` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendorregister`
--

/*!40000 ALTER TABLE `vendorregister` DISABLE KEYS */;
INSERT INTO `vendorregister` (`id`,`fname`,`lname`,`address`,`phone`,`email`,`password`) VALUES 
 (1,'chaitali','Patil','pune','8789876789','chaitali@gmail.com','Chaitali@123'),
 (2,'Akshay','jadhav','Latur','9847373737','akshay@gmail.com','Akshay@123'),
 (3,'abhojit','Rajput','Gujarat','9878676567','abhijit@gmail.com','Abhijit@123'),
 (4,'Sanjay','mane','Nashik','7678787678','sanjay@gmail.com','Sanjay@123'),
 (5,'supriya','gore','moshi','7898789098','supriya@gmail.com','Supriya@123');
/*!40000 ALTER TABLE `vendorregister` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
