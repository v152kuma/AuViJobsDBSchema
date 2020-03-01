-- MySQL dump 10.13  Distrib 5.5.62, for Linux (x86_64)
--
-- Host: localhost    Database: awsdatabase
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `awsdata`
--

DROP TABLE IF EXISTS `awsdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awsdata` (
  `FILENAME` varchar(255) NOT NULL,
  `FILEURL` varchar(255) NOT NULL,
  UNIQUE KEY `FILENAME` (`FILENAME`,`FILEURL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyid` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_type` varchar(255) DEFAULT NULL,
  `companyurl` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `contact_person_phone` varchar(255) DEFAULT NULL,
  `contactpersonemail` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `gstin` varchar(255) DEFAULT NULL,
  `interval_break` decimal(19,2) DEFAULT NULL,
  `interval_taken` decimal(19,2) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `slot_visit` decimal(19,2) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `sub_domain` varchar(255) DEFAULT NULL,
  `total_users` int(11) NOT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_master`
--

DROP TABLE IF EXISTS `employee_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_master` (
  `emp_id` decimal(19,2) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `biodata` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `created_by` decimal(19,2) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `de_active_by` decimal(19,2) DEFAULT NULL,
  `de_active_date` datetime DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `emp_label` int(11) NOT NULL,
  `emp_type` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `group_id` decimal(19,2) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `joinining_date` datetime DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `team_leader_id` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `generaldata`
--

DROP TABLE IF EXISTS `generaldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generaldata` (
  `id` decimal(19,2) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `added_by` decimal(19,2) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `name` longtext,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `user_id` varchar(255) NOT NULL,
  `deviceid` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `otp` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` int(11) NOT NULL,
  `return_message` varchar(255) DEFAULT NULL,
  `return_status` bit(1) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginlog` (
  `loginid` int(11) NOT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `description` longblob,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `windows` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp` (
  `otp_id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `snet_date` date DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`otp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requirement_master`
--

DROP TABLE IF EXISTS `requirement_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requirement_master` (
  `custom_job_id` varchar(255) NOT NULL,
  `active_date` datetime DEFAULT NULL,
  `added_by` decimal(19,2) DEFAULT NULL,
  `business_developer` decimal(19,2) DEFAULT NULL,
  `business_income` varchar(255) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `company_address` longtext,
  `contact_person` varchar(255) DEFAULT NULL,
  `date_of_complition` varchar(255) DEFAULT NULL,
  `description` longtext,
  `functions` varchar(255) DEFAULT NULL,
  `generate_date` datetime DEFAULT NULL,
  `industry_type` varchar(255) DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `info4` varchar(255) DEFAULT NULL,
  `job_id` int(11) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `key_skills` longtext,
  `location` varchar(255) DEFAULT NULL,
  `max_exp` varchar(255) DEFAULT NULL,
  `max_sal` varchar(255) DEFAULT NULL,
  `min_exp` varchar(255) DEFAULT NULL,
  `min_sal` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `no_of_profile` int(11) NOT NULL,
  `no_of_positions` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `stage_sequence` int(11) NOT NULL,
  `stages` longtext,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`custom_job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-01 17:22:10
