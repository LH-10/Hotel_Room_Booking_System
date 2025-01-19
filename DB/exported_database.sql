-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_room_booking
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `room_id` int DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `booking_status` enum('Pending','Confirmed','Cancelled') DEFAULT 'Pending',
  `total_cost` varchar(10) DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`booking_id`),
  KEY `bookings_ibfk_1customers` (`room_id`),
  KEY `bookings_ibfk_2` (`customer_name`),
  CONSTRAINT `bookings_ibfk_1customers` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`customer_name`) REFERENCES `customers` (`customer_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,20,'Jimil Soni 990','2024-10-19','2024-10-20','Pending','1500',1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_booking_insert` AFTER INSERT ON `bookings` FOR EACH ROW UPDATE Rooms
    SET room_status = 'Booked'
    WHERE room_id = NEW.room_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` bigint DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_name` (`customer_name`),
  UNIQUE KEY `customer_name_2` (`customer_name`),
  UNIQUE KEY `customer_name_3` (`customer_name`),
  UNIQUE KEY `customer_name_4` (`customer_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Lalit','lalit@gmail.com',1234567890),(2,'Lalit2','d@gmail.com',1234567890),(3,'Lalit5','lalit1@gmail.com',1234567890),(4,'Lalit7','admin@gmail.com',1234567890),(5,'shindebhau','ssss@gmail.com',1234567890),(6,'Jimil Soni111','lalit1@gmail.com',1234567890),(7,'Lalit10','admin@gmail.com',1234567890),(8,'Yesha Soni111','admin@123',1234567890),(9,'Jimil Soni500','jimil25@gmail.com',1234567890),(10,'Yesha Soni55','soni4407@gmail.com',1234567890),(11,'Jimil Soni1234','jimilsoni926@gmail.com',1234567890),(12,'Jimil Soni123','jimilsoni926@gmail.com',1221122392),(13,'John doe','jimilsoni926@gmail.com',12345678900),(14,'Jimil Soni 99','jimilsoni926@gmail.com',1234567899),(16,'Jimil Soni 990','jimilsoni926@gmail.com',1234567890);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `room_name` varchar(100) DEFAULT NULL,
  `room_price` decimal(10,2) DEFAULT NULL,
  `room_status` enum('Available','Booked','Under Maintenance') DEFAULT 'Available',
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (19,'Deluxe Room',1100.00,'Available'),(20,'Executive Room',1500.00,'Booked'),(21,'Family Room',2500.00,'Available'),(22,'Executive Room',1650.00,'Available'),(23,'Family Room',2000.00,'Available'),(24,'Deluxe Room',1250.00,'Available'),(25,'Executive Room',1750.00,'Available'),(26,'Deluxe Room',1350.00,'Available'),(27,'Family Room',2000.00,'Available');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hotel_room_booking'
--

--
-- Dumping routines for database 'hotel_room_booking'
--
/*!50003 DROP PROCEDURE IF EXISTS `calculate_total_cost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_total_cost`(
    IN input_room_id INT,
    IN check_in DATE,
    IN check_out DATE,
    OUT total_cost DECIMAL(10, 0),
    OUT nights INT
)
BEGIN
    DECLARE price_per_night DECIMAL(10, 0);
    
    SELECT room_price 
    INTO price_per_night 
    FROM Rooms 
    WHERE room_id = input_room_id 
    LIMIT 1;
    SET nights = DATEDIFF(check_out, check_in);
    SET total_cost = price_per_night * nights;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_booking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_booking`(
    IN customer_name VARCHAR(100),
    IN room_id INT,
    IN check_in_date DATE,
    IN check_out_date DATE,
    OUT booking_id INT,
    OUT total_cost DECIMAL(10, 0),
    INOUT nights INT
    
)
BEGIN

    CALL calculate_total_cost(room_id, check_in_date, check_out_date, total_cost,nights);
    

    INSERT INTO Bookings (room_id, customer_name, check_in_date, check_out_date, total_cost)
    VALUES (room_id, customer_name, check_in_date, check_out_date, total_cost);
    
    SET booking_id = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-20 19:47:36
