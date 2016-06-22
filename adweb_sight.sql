-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: adweb
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Table structure for table `sight`
--

DROP TABLE IF EXISTS `sight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sight` (
  `sight_name` char(50) NOT NULL,
  `sight_description` text NOT NULL,
  `sight_type_id` int(11) NOT NULL DEFAULT '0',
  `sight_lati` float NOT NULL,
  `sight_longi` float NOT NULL,
  `sight_zoom` int(11) NOT NULL DEFAULT '13',
  PRIMARY KEY (`sight_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sight`
--

LOCK TABLES `sight` WRITE;
/*!40000 ALTER TABLE `sight` DISABLE KEYS */;
INSERT INTO `sight` VALUES ('1933老场坊','1933年，由工部局出资兴建，著名英国设计师设计，中国当时的知名建筑营造商建造的上海工部局药厂在上海虹口区沙泾路正式建成。',1,11.1,22.2,15),('世博馆','上海世博展览馆是一座设施先进、布局合理、节能环保、交通便捷、功能齐全的高规格、现代化、国际性会展场地。 此展馆毗邻黄浦江，位于世博轴西侧，紧临中国馆、世博中心、演艺中心、五星级酒店，是高规格、国际性现代服务业聚集区的重要组成部分。',2,33.2,44.2,14),('东方明珠','东方明珠广播电视塔是国家首批AAAAA级旅游景区。塔内有太空舱、旋转餐厅、上海城市历史发展陈列馆等景观和设施，1995年被列入上海十大新景观之一。',2,33.1,44.1,13),('复兴公园','复兴公园位于上海雁荡路105号，东邻重庆南路，南临复兴中路，西近思南路，北与科学会堂等为界。当时有个姓顾的人家在此建造了一个私人小花园，人们称之为“顾家宅花园”，这便是复兴公园最初的雏形。',1,11.2,22.3,16),('金茂大厦','金茂大厦（Jinmao Tower），又称金茂大楼，竣工于1999年，曾经是中国大陆最高的大楼，位于上海浦东新区黄浦江畔的陆家嘴金融贸易区，楼高420.5米，上海第4高的摩天大楼（截止2015年）。金茂大厦每天最多迎客15600人。',2,33.3,44.3,15),('黄浦公园','黄浦公园东临黄浦江，北依苏州河，初建于1868年，是上海最早建造的公园，也是上海最早的欧式花园。',1,11.3,22.4,14);
/*!40000 ALTER TABLE `sight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-22 22:34:56
