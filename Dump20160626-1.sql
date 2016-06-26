-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: adweb
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `sight_name` varchar(50) NOT NULL,
  PRIMARY KEY (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (2,'AAA','东方明珠');
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `sight_name` varchar(50) NOT NULL,
  `grade` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'AAA','复兴公园',3,'到此一游');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `history_content` tinytext NOT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share` (
  `share_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `sight_name` varchar(50) NOT NULL,
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
INSERT INTO `share` VALUES (2,'AAA','东方明珠');
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;

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
  `sight_lati` text NOT NULL,
  `sight_longi` text NOT NULL,
  `sight_zoom` int(11) NOT NULL DEFAULT '13',
  `sight_detail` text NOT NULL,
  PRIMARY KEY (`sight_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sight`
--

LOCK TABLES `sight` WRITE;
/*!40000 ALTER TABLE `sight` DISABLE KEYS */;
INSERT INTO `sight` VALUES ('1933老场坊','1933年，由工部局出资兴建，著名英国设计师设计，中国当时的知名建筑营造商建造的上海工部局药厂在上海虹口区沙泾路正式建成。',1,'31.254601','121.492206',17,'1933老场坊原来是原上海工部局宰牲场，改成创意产业集聚区后继承了原有的结构体系和空间关系，由于自身的历史背景和建筑特质，赋予了其独有的魅力。见证废旧的工业老厂房如何脱胎换骨的建筑正在这个艺术觉醒的时代重获生机。这幢建于年1933的大楼空间布局奇特，外方内园，东南西北4栋建筑围成的四方形厂区与中间一座24边形的主楼通过楼梯相连。整个建筑高低错落，廊道盘旋，设计精密宛如迷宫，却又次序分明，加工车间采用“无梁楼盖”，在当时是非常先进的技术。上海时尚表演、发布、展示、交易、设计、服务、消费、休闲的中心，以旅游业带动区域性经济发展；结合虹口区北外滩的改变形成互动，成为极具特色的区域性旅游特色产品；成为承接世博游客居住、旅游、消费的重要特色基地。'),('东方明珠','东方明珠广播电视塔是国家首批AAAAA级旅游景区。塔内有太空舱、旋转餐厅、上海城市历史发展陈列馆等景观和设施，1995年被列入上海十大新景观之一。',2,'31.239666','121.499809',18,'东方明珠广播电视塔的发射天线桅杆长110米，具有发射9套电视和10套调频广播节目的能力，能够覆盖整个上海市及邻近省份80公里半径范围内的地区，建成后大幅度地改善了收听收视质量。'),('复兴公园','复兴公园位于上海雁荡路105号，东邻重庆南路，南临复兴中路，西近思南路，北与科学会堂等为界。当时有个姓顾的人家在此建造了一个私人小花园，人们称之为“顾家宅花园”，这便是复兴公园最初的雏形。',1,'31.216976','121.469128',17,'公园的造园风格，是以规则式与自然式相结合的布局。北、中部以规则式布局为主，有毛毡花坛、中心喷水池、月季花坛、以及南北、东西向主要干道。西南部以自然式布局为主，有假山区、荷花池、小溪、曲径小道、大草坪。融中西式为一体，突出法国规则式造园风格，这里的花坛采用下沉式，时下爱称沉床园，利用地面高差使人们的视点抬高，能更好地俯视花坛整体的效果，为公园的一大特点。'),('新天地','上海新天地是一个具有上海历史文化风貌，中西融合的都市旅游景点，它以上海近代建筑的标志石库门建筑旧区为基础，首次改变了石库门原有的居住功能，创新地赋予其商业经营功能，把这片反映了上海历史和文化的老房子改造成餐饮、购物、演艺等功能的时尚、休闲文化娱乐中心。漫步新天地，仿佛时光倒流，有如置身于二十世纪二、三十年代的上海，但一步跨进每个建筑内部，则非常现代和时尚，亲身体会新天地独特的理念，这有机的组合与错落有致地巧妙安排形成了一首上海昨天、明天、今天的交响乐，让海内外游客品味独特的文化。',3,'31.220826','121.474365',18,'上海新天地是一个具有上海历史文化风貌，中西融合的都市旅游景点，它以上海近代建筑的标志石库门建筑旧区为基础，首次改变了石库门原有的居住功能，创新地赋予其商业经营功能，把这片反映了上海历史和文化的老房子改造成餐饮、购物、演艺等功能的时尚、休闲文化娱乐中心。漫步新天地，仿佛时光倒流，有如置身于二十世纪二、三十年代的上海，但一步跨进每个建筑内部，则非常现代和时尚，亲身体会新天地独特的理念，这有机的组合与错落有致地巧妙安排形成了一首上海昨天、明天、今天的交响乐，让海内外游客品味独特的文化。');
/*!40000 ALTER TABLE `sight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sight_type`
--

DROP TABLE IF EXISTS `sight_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sight_type` (
  `sight_type_id` int(11) NOT NULL,
  `sight_type_name` text NOT NULL,
  PRIMARY KEY (`sight_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sight_type`
--

LOCK TABLES `sight_type` WRITE;
/*!40000 ALTER TABLE `sight_type` DISABLE KEYS */;
INSERT INTO `sight_type` VALUES (1,'上海近代公园'),(2,'上海现代地标'),(3,'上海夜生活之曲');
/*!40000 ALTER TABLE `sight_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `step`
--

DROP TABLE IF EXISTS `step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `step` (
  `step_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `sight_name` varchar(50) NOT NULL,
  PRIMARY KEY (`step_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `step`
--

LOCK TABLES `step` WRITE;
/*!40000 ALTER TABLE `step` DISABLE KEYS */;
INSERT INTO `step` VALUES (2,'AAA','1933老场房');
/*!40000 ALTER TABLE `step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_pic` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('AAA','AAA','aaa',NULL),('admin','admin','123456',NULL),('BBB','BBB','bbb',NULL),('CCC','CCC','ccc',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish`
--

DROP TABLE IF EXISTS `wish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wish` (
  `wish_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `sight_name` varchar(50) NOT NULL,
  PRIMARY KEY (`wish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish`
--

LOCK TABLES `wish` WRITE;
/*!40000 ALTER TABLE `wish` DISABLE KEYS */;
INSERT INTO `wish` VALUES (2,'AAA','东方明珠');
/*!40000 ALTER TABLE `wish` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-26 14:02:25
