-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: earley13336431
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `idcandidate` int NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telephone number` int DEFAULT NULL,
  `skills` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcandidate`),
  UNIQUE KEY `telephone number_UNIQUE` (`telephone number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (987,'Samantha','Davitt','890 street, Maynooth, Kildare',9876544,'Administrative, Finance'),(1234,'John','McGee','123 street straffan,Kildare',1234567,'Nursing'),(1777,NULL,NULL,NULL,NULL,NULL),(2345,'Mary','Doyle','234 street Ranelagh, Dublin',7654321,'Administrative'),(3456,'Mick','Murphy','345 street Harolds Cross, Dublin',2345678,'Finance'),(4567,'Julie','Smyth','456 street Blessington, Wicklow',8765432,'Medicine, Physiotherapy'),(5678,'Sandra','Collins','567 street, Clondalkin, Dublin',3456789,'Physiotherapy'),(6789,'Tom','Cusack','678 street, Tallaght, Dublin',9876543,'Physiotherapy'),(7777,'Leah','Davis','999 street, Clane, Kildare',9293092,'Finance, Administration'),(7890,'Paul','Hogan','789 street, Nass, Kildare',4567890,'Medicine'),(8765,'Bill','Phillips','987 street, Celbridge, Kildare',8765412,'Finance'),(8888,'Johnny','Buggle','666 street Castlepollard, Westmeath',3782901,'Nursing, Physiotherapy'),(9876,'Anne','Brophy','098 street, Drumcondra,Dublin',1345678,'Nursing'),(9999,'Sally','Jones','555 street Ardee, Louth',2890238,'Medicine');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_having_skills`
--

DROP TABLE IF EXISTS `candidate_having_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_having_skills` (
  `candidate_id` int NOT NULL,
  `skills_id` varchar(45) NOT NULL,
  PRIMARY KEY (`candidate_id`,`skills_id`),
  KEY `skillFK_idx` (`skills_id`),
  CONSTRAINT `candidates_havingSkillsFK` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`idcandidate`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `skills_of_candidatesFK` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`idskills`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_having_skills`
--

LOCK TABLES `candidate_having_skills` WRITE;
/*!40000 ALTER TABLE `candidate_having_skills` DISABLE KEYS */;
INSERT INTO `candidate_having_skills` VALUES (987,'Adm1'),(1777,'Adm1'),(2345,'Adm1'),(7777,'Adm1'),(987,'Fin1'),(3456,'Fin1'),(7777,'Fin1'),(8765,'Fin1'),(4567,'Med1'),(7890,'Med1'),(9999,'Med1'),(1234,'Nur1'),(8888,'Nur1'),(9876,'Nur1'),(4567,'Phy1'),(5678,'Phy1'),(6789,'Phy1');
/*!40000 ALTER TABLE `candidate_having_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidates_taking_interviews`
--

DROP TABLE IF EXISTS `candidates_taking_interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates_taking_interviews` (
  `candidate_id` int NOT NULL,
  `interview_id` varchar(45) NOT NULL,
  `interview_date` datetime DEFAULT NULL,
  PRIMARY KEY (`candidate_id`,`interview_id`),
  KEY `interviews_takenFK_idx` (`interview_id`),
  CONSTRAINT `candidates_taking_intsFK` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`idcandidate`),
  CONSTRAINT `interviews_takenFK` FOREIGN KEY (`interview_id`) REFERENCES `interview` (`idinterview`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates_taking_interviews`
--

LOCK TABLES `candidates_taking_interviews` WRITE;
/*!40000 ALTER TABLE `candidates_taking_interviews` DISABLE KEYS */;
INSERT INTO `candidates_taking_interviews` VALUES (987,'Naa_Adm','2020-10-12 00:00:00'),(987,'Rot_Adm','2020-11-13 00:00:00'),(1234,'Bea_PalCar','2020-10-24 00:00:00'),(1234,'Coo_GenNur','2020-10-02 00:00:00'),(1234,'Naa_GenNur','2020-10-05 00:00:00'),(2345,'Naa_Adm','2020-10-12 00:00:00'),(2345,'Rot_Adm','2020-11-13 00:00:00'),(3456,'Con_Acc','2020-10-12 00:00:00'),(3456,'Sli_Acc','2020-10-13 00:00:00'),(4567,'Cla_RenDoc','2020-10-15 00:00:00'),(4567,'Rot_RenDoc','2020-10-04 00:00:00'),(5678,'Bea_PhySio','2020-10-25 00:00:00'),(6789,'Bea_PhySio','2020-10-25 00:00:00'),(7777,'Con_Acc','2020-10-12 00:00:00'),(7777,'Sli_Acc','2020-10-13 00:00:00'),(7890,'Coo_CarDoc','2020-10-10 00:00:00'),(7890,'Mid_CarDoc','2020-11-02 00:00:00'),(8765,'Gal_FinOff','2020-11-13 00:00:00'),(8765,'Tal_FinOff','2020-11-06 00:00:00'),(8888,'Bea_PalCar','2020-10-24 00:00:00'),(8888,'Naa_GenNur','2020-10-12 00:00:00'),(9876,'Lou_GenNur','2020-09-14 00:00:00'),(9876,'Rot_GenNur','2020-10-05 00:00:00'),(9999,'Coo_CarDoc','2020-10-10 00:00:00'),(9999,'Mid_CarDoc','2020-11-02 00:00:00');
/*!40000 ALTER TABLE `candidates_taking_interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `idhospital` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhospital`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `telephone_UNIQUE` (`telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (12,'Beaumont Hospital','Beaumont Road Dublin 9','087968498'),(23,'Coombe Hospital','Cork Street Dublin 8','085748933'),(34,'Galway Hospital','Newcastle Road Galway','086182987'),(45,'Naas Hospital','Craddockstown Rd, Naas East Kildare','089368190'),(56,'Rotunda Hospital','Parnell Street Dublin','087189376'),(67,'Tallaght Hospital','Tallaght Dublin 24','085678263'),(78,'St James Hospital','Saint James\'(Phoenix Park) Dublin 8','086261389'),(86,'Midlands Hospital','Mullingar Road, Co Westmeath','089253746'),(87,'Clane General Hospital','Hoganswood East, Clane, Co Kildare','087635625'),(89,'Sligo Hospital','Ray Mac Sharry Road Garden Hill Co. Sligo','089381892'),(91,'Louth Hospital','Priorland, Dundalk, Co Louth','087657187'),(98,'Connolly Hospital','Mill Rd, Abbotstown, Dublin 15','086152673');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_hiring_candidate`
--

DROP TABLE IF EXISTS `hospital_hiring_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_hiring_candidate` (
  `hospital_Id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `Hired` varchar(45) NOT NULL,
  `position_id` varchar(45) NOT NULL,
  PRIMARY KEY (`hospital_Id`,`candidate_id`,`position_id`),
  KEY `candidateFK_idx` (`candidate_id`),
  KEY `positionhiredFK_idx` (`position_id`),
  CONSTRAINT `candidateFK` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`idcandidate`),
  CONSTRAINT `hospitalhiringFK` FOREIGN KEY (`hospital_Id`) REFERENCES `hospital` (`idhospital`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `positionhiredFK` FOREIGN KEY (`position_id`) REFERENCES `position` (`idposition`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_hiring_candidate`
--

LOCK TABLES `hospital_hiring_candidate` WRITE;
/*!40000 ALTER TABLE `hospital_hiring_candidate` DISABLE KEYS */;
INSERT INTO `hospital_hiring_candidate` VALUES (12,1234,'Yes','Bea_1'),(12,5678,'Yes','Bea_2'),(12,6789,'Yes','Bea_2'),(12,8888,'Yes','Bea_1'),(23,1234,'No','Coo_2'),(23,7890,'Yes','Coo_1'),(23,9999,'Yes','Coo_1'),(34,8765,'No','Gal_1'),(45,987,'No','Naa_1'),(45,1234,'No','Naa_2'),(45,2345,'Yes','Naa_1'),(45,8888,'No','Naa_2'),(56,987,'No','Rot_1'),(56,2345,'Yes','Rot_1'),(56,4567,'No','Rot_2'),(56,9876,'No','Rot_3'),(67,8765,'Yes','Tal_1'),(86,7890,'No','Mid_1'),(86,9999,'No','Mid_1'),(87,4567,'Yes','Cla_1'),(89,3456,'No','Sli_1'),(89,7777,'No','Sli_1'),(91,9876,'Yes','Lou_1'),(98,3456,'No','Con_1'),(98,7777,'Yes','Con_1');
/*!40000 ALTER TABLE `hospital_hiring_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_taking_interviews`
--

DROP TABLE IF EXISTS `hospital_taking_interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_taking_interviews` (
  `hospital_id` int NOT NULL,
  `interview_id` varchar(45) NOT NULL,
  PRIMARY KEY (`hospital_id`,`interview_id`),
  KEY `interviewFK_idx` (`interview_id`),
  CONSTRAINT `hospitalFK` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`idhospital`),
  CONSTRAINT `interviewFK` FOREIGN KEY (`interview_id`) REFERENCES `interview` (`idinterview`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_taking_interviews`
--

LOCK TABLES `hospital_taking_interviews` WRITE;
/*!40000 ALTER TABLE `hospital_taking_interviews` DISABLE KEYS */;
INSERT INTO `hospital_taking_interviews` VALUES (12,'Bea_PalCar'),(12,'Bea_PhySio'),(87,'Cla_RenDoc'),(89,'Con_Acc'),(98,'Con_Acc'),(23,'Coo_CarDoc'),(86,'Coo_CarDoc'),(45,'Coo_GenNur'),(91,'Coo_GenNur'),(34,'Gal_FinOff'),(67,'Gal_FinOff'),(23,'Lou_GenNur'),(45,'Lou_GenNur'),(91,'Lou_GenNur'),(23,'Mid_CarDoc'),(86,'Mid_CarDoc'),(45,'Naa_Adm'),(56,'Naa_Adm'),(45,'Naa_GenNur'),(45,'Rot_Adm'),(56,'Rot_Adm'),(56,'Rot_GenNur'),(56,'Rot_RenDoc'),(89,'Sli_Acc'),(98,'Sli_Acc'),(78,'STJ_Sec'),(34,'Tal_FinOff'),(67,'Tal_FinOff');
/*!40000 ALTER TABLE `hospital_taking_interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview` (
  `idinterview` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  `interview_position` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinterview`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
INSERT INTO `interview` VALUES ('Bea_PalCar','2020-10-24 00:00:00','Pallative Care Nurse'),('Bea_PhySio','2020-10-25 00:00:00','Physiotherapist'),('Cla_RenDoc','2020-10-15 00:00:00','Renal Doctor'),('Con_Acc','2020-10-12 00:00:00','Accountant'),('Coo_CarDoc','2020-10-10 00:00:00','Cardiac Doctor'),('Coo_GenNur','2020-10-02 00:00:00','General Nurse'),('Gal_FinOff','2020-11-13 00:00:00',NULL),('Lou_GenNur','2020-09-14 00:00:00','General Nurse'),('Mid_CarDoc','2020-11-02 00:00:00','Cardiac Doctor'),('Naa_Adm','2020-10-12 00:00:00','Administration Receptionist'),('Naa_GenNur','2020-10-12 00:00:00','General Nurse'),('Rot_Adm','2020-11-13 00:00:00','Administration Receptionist'),('Rot_GenNur','2020-10-05 00:00:00','General Nurse'),('Rot_RenDoc','2020-10-04 00:00:00','Renal Doctor'),('Sli_Acc','2020-10-13 00:00:00','Accountant'),('STJ_Sec','2020-11-04 00:00:00','Secretary'),('Tal_FinOff','2020-11-06 00:00:00','Financial Officer');
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `idposition` varchar(45) NOT NULL,
  `position_type` varchar(45) DEFAULT NULL,
  `hospital_advertising_position` varchar(45) DEFAULT NULL,
  `skills_required` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idposition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES ('Bea_1','Pallative Care Nurse','Beaumont Hospital','Nursing, Medicine'),('Bea_2','Physiotherapist','Beaumont Hospital','Physiotherapy'),('Cla_1','Renal Doctor','Clane Hospital','Medicine'),('Con_1','Accountant','Connolly Hospital','Finance, Admin'),('Coo_1','Cardiac Doctor','Coombe Hospital','Medicine'),('Coo_2','General Nurse','Coombe Hospital','Nursing, Medicine'),('Gal_1','Finance Officer','Galway Hospital','Finance'),('Lou_1','General Nurse','Louth Hospital','Nursing'),('Mid_1','Cardiac Doctor','Midlands Hospital','Medicine'),('Naa_1','Administration Receptionist','Naas Hospital','Administration'),('Naa_2','General Nurse','Naas Hospital','Nursing'),('Rot_1','Administrative Receptionist','Rotunda Hospital','Administration, Finance'),('Rot_2','Renal Doctor','Rotunda Hospital','Medicine'),('Rot_3','General Nurse','Rotunda Hospital','Nursing'),('Sli_1','Accountant','Sligo Hospital','Finance, Administration'),('STJ_1','Secretary','St James Hospital','Administration, Finance'),('Tal_1','Finance Officer','Tallaght Hospital','Finance');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_requiring_skills`
--

DROP TABLE IF EXISTS `position_requiring_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_requiring_skills` (
  `position_id` varchar(45) NOT NULL,
  `skills_id` varchar(45) NOT NULL,
  PRIMARY KEY (`position_id`,`skills_id`),
  KEY `skillFK_idx` (`skills_id`),
  CONSTRAINT `positionFK` FOREIGN KEY (`position_id`) REFERENCES `position` (`idposition`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skillFK` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`idskills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_requiring_skills`
--

LOCK TABLES `position_requiring_skills` WRITE;
/*!40000 ALTER TABLE `position_requiring_skills` DISABLE KEYS */;
INSERT INTO `position_requiring_skills` VALUES ('Con_1','Adm1'),('Rot_1','Adm1'),('Sli_1','Adm1'),('STJ_1','Adm1'),('Con_1','Fin1'),('Gal_1','Fin1'),('Naa_1','Fin1'),('Rot_1','Fin1'),('Sli_1','Fin1'),('STJ_1','Fin1'),('Tal_1','Fin1'),('Bea_1','Med1'),('Cla_1','Med1'),('Coo_1','Med1'),('Coo_2','Med1'),('Mid_1','Med1'),('Rot_2','Med1'),('Bea_1','Nur1'),('Coo_2','Nur1'),('Lou_1','Nur1'),('Naa_2','Nur1'),('Rot_3','Nur1'),('Bea_2','Phy1');
/*!40000 ALTER TABLE `position_requiring_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `idskills` varchar(45) NOT NULL,
  `skills_name` varchar(45) NOT NULL,
  PRIMARY KEY (`idskills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('Adm1','Administration'),('Fin1','Finance'),('Med1','Medicine'),('Nur1','Nursing'),('Phy1','Physiotherapy');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'earley13336431'
--

--
-- Dumping routines for database 'earley13336431'
--
/*!50003 DROP PROCEDURE IF EXISTS `candidate-insert-row` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidate-insert-row`()
BEGIN
INSERT INTO `candidate`() VALUES(1777,NULL,NULL,NULL,NULL,NULL);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `candidates-having-one-skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidates-having-one-skill`(in p_position varchar(45))
BEGIN
SELECT candidate_id
FROM candidate_having_skills
WHERE p_position = position_id
GROUP BY skills_id
HAVING count(*) >=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `candidates-interviewed-on-specific-day` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidates-interviewed-on-specific-day`()
BEGIN
SELECT candidate_id
FROM candidates_taking_interviews
WHERE interview_date = '2020-10-25';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `candidates-surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidates-surname`(in p_surname varchar(45))
BEGIN
select surname 
from candidate
where surname = p_surname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `candidates_taking_interviews_insert_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidates_taking_interviews_insert_table`()
BEGIN
INSERT INTO `candidate_taking_interviews`() VALUES(1777, 'Naa_Adm', NULL);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `candidate_having_skills_insert_row` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidate_having_skills_insert_row`()
BEGIN
INSERT INTO `candidate_having_skills`() VALUES(1777, 'Adm1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `count-hired-candidates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `count-hired-candidates`()
BEGIN
SELECT COUNT(*)
FROM hospital_hiring_candidate
WHERE Hired = 'Yes';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `count-positions-requiring-nursingskill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `count-positions-requiring-nursingskill`()
BEGIN
SELECT COUNT(*)
FROM position_requiring_skills
WHERE skills_id = 'Nur1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hospital-add-row` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hospital-add-row`()
BEGIN
INSERT INTO `hospital`() VALUES(13, null, null, null);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hospital-name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hospital-name`(in p_name varchar(45))
BEGIN
select name
from hospital;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hospital_hiring_candidate_insertrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hospital_hiring_candidate_insertrow`()
BEGIN
INSERT INTO `hospital_hiring_candidate`() VALUES(13, 1777, 'YES', 'Bea_2');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hospital_taking_interview_insertrow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hospital_taking_interview_insertrow`()
BEGIN
INSERT INTO `candidate_having_skills`() VALUES(13, 'Con_Acc');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `id-hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `id-hospital`(in p_idhospital int)
BEGIN
select idhospital
from hospital
where idhospital = p_idhospital;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `interviews-occurred-on-given-date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `interviews-occurred-on-given-date`(p_date datetime)
BEGIN
SELECT idinterview
FROM interview
WHERE p_date = date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `interview_insert_row` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `interview_insert_row`()
BEGIN
INSERT INTO `interview`() VALUES('Con_Acc', null, null);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `name-candidateId-interviewed-at-least-twice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `name-candidateId-interviewed-at-least-twice`()
BEGIN
SELECT idcandidate, firstname, interview_id
FROM candidate, candidates_taking_interviews
WHERE candidate.idcandidate = candidates_taking_interviews.candidate_id AND COUNT(interview_id) >=2
GROUP BY idcandidate, firstname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `positions-requiring-given-skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `positions-requiring-given-skill`(p_skill varchar(45))
BEGIN
SELECT position_id
FROM position_requiring_skills
WHERE p_skill = skills_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `positions-sorted-according-to-hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `positions-sorted-according-to-hospital`()
BEGIN
SELECT idposition
FROM position
ORDER BY hospital_advertising_position;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `position_insert_row` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `position_insert_row`()
BEGIN
INSERT INTO `position`() VALUES('Cla_1', null, null, null);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `position_requiring_skills_insert_row` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `position_requiring_skills_insert_row`()
BEGIN
INSERT INTO `position_requiring_skills`() VALUES('Sli_1', 'Fin1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `skills_insert_row` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `skills_insert_row`()
BEGIN
INSERT INTO `skills`() VALUES('Hr1', 'HR');
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

-- Dump completed on 2020-11-24 16:34:33
