-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlybundau_1
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `UserName` varchar(50) NOT NULL,
  `PassWord` char(250) DEFAULT NULL,
  `MaRL` char(10) DEFAULT NULL,
  PRIMARY KEY (`UserName`),
  KEY `MaRL` (`MaRL`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`MaRL`) REFERENCES `role` (`MaRL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('admin','$2a$12$1dOFcvUJpHK3SQQ35BIyaeZlZJF3wNy7DN/MtLqrzykPa6vp/aWky','ADMIN'),('ban1','$2a$12$1dOFcvUJpHK3SQQ35BIyaeZlZJF3wNy7DN/MtLqrzykPa6vp/aWky','KHACHHANG'),('ban2',NULL,'KHACHHANG'),('ban3','$2a$10$WUQSw0fNbzKiZ3mzxtoDXeu6hQLckDDuB.5HnkI2MOQlwoBO6M0fG','KHACHHANG'),('ban4','$2a$10$ADIpQLYPk1cR/ryAVTZNKun43hbT4uJUL4YbdqxyqQyVpRlmaxdPm','KHACHHANG'),('ban5','$2a$10$1q8fOBodQDBVpa0HBADnHOjwZYaOmPLvRQsWwOXkApEIvcCp3ldQW','KHACHHANG'),('ban6','$2a$10$wvyotwDOBLilWMq.Rj.A2Og5AUDE5BlJiTsTIjbmrY3P9ngPxehyy','KHACHHANG'),('ban7','$2a$10$VdsnU9JkEWKtNK.YCpJddu6dw8hYD5vrpLYjHwvCXc0DkMjIf0c7a','KHACHHANG'),('nhanvien02','$2a$10$LX7QO/f9znal6Nrzktlu2uKPW6SUIs.Nzj2aKZBHWbKv7g5DafNiS','NHANVIEN'),('nhanvien03','$2a$10$wignvl5CkezIQlrm304NAOzfbXjvB4nYclnTZcn/0DBdinAhdmJDe','NHANVIEN'),('nhanvien1','$2a$12$1dOFcvUJpHK3SQQ35BIyaeZlZJF3wNy7DN/MtLqrzykPa6vp/aWky','NHANVIEN');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09 21:46:56
