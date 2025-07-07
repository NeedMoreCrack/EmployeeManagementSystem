-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: restful
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `dept`
--

CREATE DATABASE IF NOT EXISTS restful;
USE restful;

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (1,'測試部','2025-06-10 02:08:32','2025-06-11 07:39:56'),(2,'資訊部','2025-06-11 07:39:37','2025-06-11 07:39:37'),(3,'諮詢部','2024-09-25 09:47:40','2024-09-30 21:26:24'),(4,'就業部','2024-09-25 09:47:40','2024-09-25 09:47:40'),(5,'人事部','2024-09-25 09:47:40','2024-09-25 09:47:40'),(6,'行政部','2024-11-30 20:56:37','2024-09-30 20:56:37'),(7,'業務部','2025-06-10 00:35:54','2025-06-10 04:44:06');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) DEFAULT '123456',
  `name` varchar(10) NOT NULL,
  `gender` tinyint unsigned NOT NULL,
  `phone` char(10) NOT NULL,
  `job` tinyint unsigned DEFAULT NULL,
  `salary` int unsigned DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `dept_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (1,'lucian01','lucian123','Lucian',1,'0910000001',1,60000,NULL,'2023-05-01','2023-05-01 09:00:00','2024-05-01 10:00:00',3),(2,'andy02','andy4567','Andy',1,'0910000002',2,55000,NULL,'2022-12-12','2022-12-12 08:00:00','2024-02-20 11:30:00',2),(5,'nina05','nina8888','Nina',0,'0910000005',4,50000,NULL,'2024-01-10','2024-01-10 10:10:00','2024-05-10 10:10:00',6),(8,'tony08','tonypass','Tony',1,'0910000008',4,58000,NULL,'2023-03-05','2023-03-05 12:00:00','2024-03-05 12:00:00',1),(10,'mark10','mark2025','Mark',1,'0910000010',1,59000,NULL,'2023-02-28','2023-02-28 14:00:00','2024-02-28 14:00:00',5),(11,'alice11','alicepwd1','Alice',0,'0910000011',2,52000,NULL,'2023-08-01','2023-08-01 09:00:00','2024-08-01 09:00:00',3),(12,'brian12','brian789','Brian',1,'0910000012',3,49500,NULL,'2024-02-14','2024-02-14 10:00:00','2025-02-14 10:00:00',4),(13,'claire13','claire123','Claire',0,'0910000013',1,61000,NULL,'2023-10-10','2023-10-10 08:30:00','2024-10-10 08:30:00',6),(14,'dan14','danpass14','Dan',1,'0910000014',4,50000,NULL,'2023-04-04','2023-04-04 11:00:00','2024-04-04 11:00:00',2),(15,'ella15','ellaella','Ella',0,'0910000015',2,53000,NULL,'2024-03-20','2024-03-20 09:20:00','2025-03-20 09:20:00',5),(17,'gina17','gina1234','Gina',0,'0910000017',1,59000,NULL,'2023-11-11','2023-11-11 10:10:00','2024-11-11 10:10:00',3),(18,'henry18','henrypwd','Henry',1,'0910000018',4,57000,NULL,'2024-01-05','2024-01-05 09:45:00','2025-01-05 09:45:00',6),(20,'jacky20','jacky007','Jacky',1,'0910000020',3,46000,NULL,'2023-07-07','2023-07-07 08:30:00','2024-07-07 08:30:00',7),(21,'kate21','kate_21','Kate',0,'0910000021',1,61000,NULL,'2024-04-15','2024-04-15 09:00:00','2025-04-15 09:00:00',4),(23,'mia23','miamia23','Mia',0,'0910000023',3,47000,NULL,'2023-09-09','2023-09-09 08:10:00','2024-09-09 08:10:00',5),(24,'nick24','nickpass','Nick',1,'0910000024',1,60000,NULL,'2023-05-20','2023-05-20 09:15:00','2024-05-20 09:15:00',1),(25,'olivia25','olipass25','Olivia',0,'0910000025',4,56000,NULL,'2023-12-25','2023-12-25 12:00:00','2024-12-25 12:00:00',6),(26,'peter26','peterkey','Peter',1,'0910000026',2,51000,NULL,'2023-08-08','2023-08-08 08:50:00','2024-08-08 08:50:00',4),(28,'ryan28','ryanpass','Ryan',1,'0910000028',1,61500,NULL,'2023-06-16','2023-06-16 10:20:00','2024-06-16 10:20:00',3),(29,'sara29','sara2025','Sara',0,'0910000029',4,54000,NULL,'2024-05-05','2024-05-05 11:00:00','2025-05-05 11:00:00',5),(30,'tom30','tomkey30','Tom',1,'0910000030',2,55000,NULL,'2023-03-03','2023-03-03 07:30:00','2024-03-03 07:30:00',2),(31,'testuser','123456','測試使用者',1,'0987654321',2,150000,'/images/b885e4c5-ed3e-4a4d-a577-7cb1a874b993.jpg','2025-06-16','2025-06-23 16:35:00','2025-07-06 02:37:59',2);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_expr`
--

DROP TABLE IF EXISTS `emp_expr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_expr` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `emp_id` int unsigned DEFAULT NULL,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_expr`
--

LOCK TABLES `emp_expr` WRITE;
/*!40000 ALTER TABLE `emp_expr` DISABLE KEYS */;
INSERT INTO `emp_expr` VALUES (1,2,'2015-01-01','2020-01-01','Google','Java'),(2,2,'2021-01-01','2025-01-01','Apple','Swift'),(8,31,'2025-06-01','2025-07-15','OPENAI','AI工程師'),(9,31,'2022-06-01','2025-05-01','Google','C/C++');
/*!40000 ALTER TABLE `emp_expr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_log`
--

DROP TABLE IF EXISTS `emp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `operate_time` datetime DEFAULT NULL,
  `info` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_log`
--

LOCK TABLES `emp_log` WRITE;
/*!40000 ALTER TABLE `emp_log` DISABLE KEYS */;
INSERT INTO `emp_log` VALUES (1,'2025-06-23 15:59:37','新增員工Emp(id=null, username=null, password=null, name=測試員工, gender=1, phone=0987654321, job=2, salary=87870, image=/images/fcb2958b-7c12-46a7-ae95-00b0b3525867.png, entryDate=2025-06-22T16:00, deptId=2, createTime=2025-06-23T15:59:37.199133300, updateTime=2025-06-23T15:59:37.199133300, deptName=null, exprList=[EmpExpr(id=null, empId=null, begin=2025-06-01, end=2025-07-16, company=家裡蹲, job=JavaWeb開發)])'),(2,'2025-06-23 16:08:50','新增員工Emp(id=null, username=null, password=null, name=測試員工, gender=1, phone=0987654321, job=2, salary=87870, image=/images/fcb2958b-7c12-46a7-ae95-00b0b3525867.png, entryDate=2025-06-22T16:00, deptId=2, createTime=2025-06-23T16:08:49.922344600, updateTime=2025-06-23T16:08:49.922344600, deptName=null, exprList=[EmpExpr(id=null, empId=null, begin=2025-06-01, end=2025-07-16, company=家裡蹲, job=JavaWeb開發)])'),(3,'2025-06-23 16:14:50','新增員工Emp(id=null, username=null, password=null, name=測試員工, gender=1, phone=0987654321, job=2, salary=87870, image=/images/fcb2958b-7c12-46a7-ae95-00b0b3525867.png, entryDate=2025-06-16, deptId=2, createTime=2025-06-23T16:14:49.991746100, updateTime=2025-06-23T16:14:49.991746100, deptName=null, exprList=[EmpExpr(id=null, empId=null, begin=2025-06-01, end=2025-07-16, company=家裡蹲, job=JavaWeb開發)])'),(4,'2025-06-23 16:21:07','新增員工Emp(id=null, username=null, password=null, name=測試員工, gender=1, phone=0987654321, job=2, salary=87870, image=/images/fcb2958b-7c12-46a7-ae95-00b0b3525867.png, entryDate=2025-06-16, deptId=2, createTime=2025-06-23T16:21:07.060420, updateTime=2025-06-23T16:21:07.060420, deptName=null, exprList=[EmpExpr(id=null, empId=null, begin=2025-06-01, end=2025-07-16, company=家裡蹲, job=JavaWeb開發)])'),(5,'2025-06-23 16:25:20','新增員工Emp(id=null, username=, password=null, name=測試使用者, gender=1, phone=0987654321, job=2, salary=32154, image=/images/18af15e0-92fa-4015-9303-b3a7d7cf46c3.png, entryDate=2025-06-16, deptId=2, createTime=2025-06-23T16:25:19.980321400, updateTime=2025-06-23T16:25:19.980321400, deptName=null, exprList=[EmpExpr(id=null, empId=null, begin=2025-06-01, end=2025-07-15, company=OPENAI, job=AI工程師)])'),(6,'2025-06-23 16:25:28','新增員工Emp(id=null, username=, password=null, name=測試使用者, gender=1, phone=0987654321, job=2, salary=32154, image=/images/18af15e0-92fa-4015-9303-b3a7d7cf46c3.png, entryDate=2025-06-16, deptId=2, createTime=2025-06-23T16:25:28.228894300, updateTime=2025-06-23T16:25:28.228894300, deptName=null, exprList=[EmpExpr(id=null, empId=null, begin=2025-06-01, end=2025-07-15, company=OPENAI, job=AI工程師)])'),(7,'2025-06-23 16:26:13','新增員工Emp(id=null, username=testuser, password=null, name=測試使用者, gender=1, phone=0987654321, job=2, salary=32154, image=/images/18af15e0-92fa-4015-9303-b3a7d7cf46c3.png, entryDate=2025-06-16, deptId=2, createTime=2025-06-23T16:26:13.166266700, updateTime=2025-06-23T16:26:13.166266700, deptName=null, exprList=[EmpExpr(id=null, empId=null, begin=2025-06-01, end=2025-07-15, company=OPENAI, job=AI工程師)])'),(8,'2025-06-23 16:35:00','新增員工Emp(id=31, username=testuser, password=null, name=測試使用者, gender=1, phone=0987654321, job=2, salary=32154, image=/images/18af15e0-92fa-4015-9303-b3a7d7cf46c3.png, entryDate=2025-06-16, deptId=2, createTime=2025-06-23T16:35:00.368693100, updateTime=2025-06-23T16:35:00.368693100, deptName=null, exprList=[EmpExpr(id=null, empId=31, begin=2025-06-01, end=2025-07-15, company=OPENAI, job=AI工程師)])'),(9,'2025-06-23 18:04:39','新增員工Emp(id=null, username=, password=null, name=, gender=null, phone=, job=, salary=null, image=, entryDate=null, deptId=null, createTime=2025-06-23T18:04:39.200538500, updateTime=2025-06-23T18:04:39.200538500, deptName=null, exprList=[])');
/*!40000 ALTER TABLE `emp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operate_log`
--

DROP TABLE IF EXISTS `operate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operate_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `operate_emp_id` int unsigned DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `method_name` varchar(100) DEFAULT NULL,
  `method_params` varchar(2000) DEFAULT NULL,
  `return_value` varchar(2000) DEFAULT NULL,
  `cost_time` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operate_log`
--

LOCK TABLES `operate_log` WRITE;
/*!40000 ALTER TABLE `operate_log` DISABLE KEYS */;
INSERT INTO `operate_log` VALUES (1,1,'2025-06-29 21:43:41','com.example.springbootrestful.controller.DeptController','insert','[Dept(id=null, name=123, createTime=2025-06-29T21:43:40.705763400, updateTime=2025-06-29T21:43:40.705763400)]','Result(code=1, msg=success, data=null)',0),(2,1,'2025-06-29 21:43:49','com.example.springbootrestful.controller.DeptController','updateName','[Dept(id=20, name=123654, createTime=2025-06-29T21:43:41, updateTime=2025-06-29T21:43:49.005837600)]','Result(code=1, msg=success, data=null)',0),(3,1,'2025-06-29 21:44:01','com.example.springbootrestful.controller.DeptController','delete','[20]','Result(code=1, msg=success, data=null)',0),(4,1,'2025-06-29 21:51:01','com.example.springbootrestful.controller.DeptController','insert','[Dept(id=null, name=123456, createTime=2025-06-29T21:51:00.437673600, updateTime=2025-06-29T21:51:00.437673600)]','Result(code=1, msg=success, data=null)',0),(5,1,'2025-06-29 21:51:10','com.example.springbootrestful.controller.DeptController','updateName','[Dept(id=21, name=654321, createTime=2025-06-29T21:51, updateTime=2025-06-29T21:51:09.920786400)]','Result(code=1, msg=success, data=null)',0),(6,1,'2025-06-29 21:51:15','com.example.springbootrestful.controller.DeptController','delete','[21]','Result(code=1, msg=success, data=null)',0),(7,1,'2025-06-29 21:55:09','com.example.springbootrestful.controller.DeptController','insert','[Dept(id=null, name=9578, createTime=2025-06-29T21:55:09.059398, updateTime=2025-06-29T21:55:09.059398)]','Result(code=1, msg=success, data=null)',373),(8,1,'2025-06-29 21:55:19','com.example.springbootrestful.controller.DeptController','updateName','[Dept(id=22, name=65487, createTime=2025-06-29T21:55:09, updateTime=2025-06-29T21:55:18.864381200)]','Result(code=1, msg=success, data=null)',5),(9,1,'2025-06-29 21:55:21','com.example.springbootrestful.controller.DeptController','delete','[22]','Result(code=1, msg=success, data=null)',6),(10,31,'2025-07-06 02:35:16','com.example.springbootrestful.controller.EmpController','delete','[[7]]','Result(code=1, msg=success, data=null)',42),(11,31,'2025-07-06 02:36:21','com.example.springbootrestful.controller.EmpController','delete','[[9, 19]]','Result(code=1, msg=success, data=null)',7),(12,31,'2025-07-06 02:37:12','com.example.springbootrestful.controller.EmpController','delete','[[3]]','Result(code=1, msg=success, data=null)',7),(13,31,'2025-07-06 02:37:14','com.example.springbootrestful.controller.EmpController','delete','[[22]]','Result(code=1, msg=success, data=null)',7),(14,31,'2025-07-06 02:37:31','com.example.springbootrestful.controller.EmpController','delete','[[16]]','Result(code=1, msg=success, data=null)',4),(15,31,'2025-07-06 02:37:59','com.example.springbootrestful.controller.EmpController','update','[Emp(id=31, username=testuser, password=123456, name=測試使用者, gender=1, phone=0987654321, job=2, salary=150000, image=/images/b885e4c5-ed3e-4a4d-a577-7cb1a874b993.jpg, entryDate=2025-06-16, deptId=2, createTime=2025-06-23T16:35, updateTime=2025-07-06T02:37:59.482192300, deptName=null, exprList=[EmpExpr(id=6, empId=31, begin=2025-06-01, end=2025-07-15, company=OPENAI, job=AI工程師), EmpExpr(id=7, empId=31, begin=2022-06-01, end=2025-05-01, company=Google, job=C/C++)])]','Result(code=1, msg=success, data=null)',22),(16,31,'2025-07-06 02:54:22','com.example.springbootrestful.controller.DeptController','delete','[23]','Result(code=1, msg=success, data=null)',6);
/*!40000 ALTER TABLE `operate_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-07  1:57:42
