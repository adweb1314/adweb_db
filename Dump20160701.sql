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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (2,'AAA','上海东方明珠'),(7,'admin','1933老场坊'),(10,'admin','上海东方明珠'),(11,'admin','上海科技馆'),(12,'admin','五角场万达广场'),(13,'AAA','新天地上海'),(14,'BBB','五角场万达广场'),(15,'admin','上海复兴公园'),(16,'admin','新天地上海');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'AAA','上海复兴公园',3,'到此一游'),(3,'BBB','上海复兴公园',5,'满分景观'),(4,'admin','上海复兴公园',5,'一不小心把自己的评论删了。'),(5,'AAA','上海复兴公园',5,'环境优雅'),(8,'AAA','新天地上海',4,'好多洋人！我也要去喝酒！'),(9,'AAA','新天地上海',5,'可以可以可以'),(10,'admin','五角场万达广场',3,'我要评分');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (3,'admin','科技'),(6,'admin','1933'),(8,'admin','上海'),(9,'admin','query'),(10,'admin','上海科技馆'),(11,'admin','新天地'),(12,'admin','上');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line` (
  `line_id` int(11) NOT NULL AUTO_INCREMENT,
  `sight_name` varchar(50) NOT NULL,
  `line_lati` tinytext NOT NULL,
  `line_longi` tinytext NOT NULL,
  PRIMARY KEY (`line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES (1,'1933老场坊','31.254955','121.4918'),(2,'1933老场坊','31.254901','121.492619'),(3,'1933老场坊','31.254241','121.492608'),(4,'1933老场坊','31.254246','121.491895'),(5,'1933老场坊','31.254314','121.491788'),(6,'新天地上海','31.22123','121.474237'),(7,'新天地上海','31.221569','121.475095'),(8,'新天地上海','31.220069','121.475535'),(9,'新天地上海','31.219826','121.474435'),(10,'上海科技馆','31.220411','121.540991'),(11,'上海科技馆','31.218447','121.544446'),(12,'上海科技馆','31.217264','121.542837'),(13,'上海科技馆','31.217502','121.541217'),(14,'上海科技馆','31.218722','121.540358'),(15,'上海东方明珠','31.240356','121.499519'),(16,'上海东方明珠','31.240315','121.499954'),(17,'上海东方明珠','31.240012','121.500233'),(18,'上海东方明珠','31.239682','121.500254'),(19,'上海东方明珠','31.239347','121.499766'),(20,'上海东方明珠','31.239434','121.499401'),(21,'上海东方明珠','31.239723','121.499122'),(22,'上海东方明珠','31.240127','121.499181'),(23,'五角场万达广场','31.30237','121.511828'),(24,'五角场万达广场','31.302977','121.513818'),(25,'五角场万达广场','31.30025','121.51531'),(26,'五角场万达广场','31.299691','121.513352'),(27,'上海复兴公园','31.218151','121.467612'),(28,'上海复兴公园','31.218931','121.469383'),(29,'上海复兴公园','31.216169','121.470659'),(30,'上海复兴公园','31.215728','121.470531'),(31,'上海复兴公园','31.215288','121.467623'),(32,'上海复兴公园','31.21727','121.46714');
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `resource_id` char(50) NOT NULL,
  `sight_name` varchar(50) NOT NULL,
  `resource_type` int(11) NOT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
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
  `to_user_id` varchar(30) NOT NULL,
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
INSERT INTO `share` VALUES (1,'AAA','上海东方明珠','BBB'),(2,'admin','上海复兴公园','AAA'),(3,'admin','上海复兴公园','BBB'),(4,'admin','1933老场坊','CCC'),(5,'admin','1933老场坊','CCC');
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
INSERT INTO `sight` VALUES ('1933老场坊','1933年，由工部局出资兴建，著名英国设计师设计，中国当时的知名建筑营造商建造的上海工部局药厂在上海虹口区沙泾路正式建成。',1,'31.254601','121.492206',18,'1933老场坊原来是原上海工部局宰牲场，改成创意产业集聚区后继承了原有的结构体系和空间关系，由于自身的历史背景和建筑特质，赋予了其独有的魅力。见证废旧的工业老厂房如何脱胎换骨的建筑正在这个艺术觉醒的时代重获生机。这幢建于年1933的大楼空间布局奇特，外方内园，东南西北4栋建筑围成的四方形厂区与中间一座24边形的主楼通过楼梯相连。整个建筑高低错落，廊道盘旋，设计精密宛如迷宫，却又次序分明，加工车间采用“无梁楼盖”，在当时是非常先进的技术。上海时尚表演、发布、展示、交易、设计、服务、消费、休闲的中心，以旅游业带动区域性经济发展；结合虹口区北外滩的改变形成互动，成为极具特色的区域性旅游特色产品；成为承接世博游客居住、旅游、消费的重要特色基地。'),('上海东方明珠','东方明珠广播电视塔是国家首批AAAAA级旅游景区。塔内有太空舱、旋转餐厅、上海城市历史发展陈列馆等景观和设施，1995年被列入上海十大新景观之一。',2,'31.239666','121.499809',17,'东方明珠广播电视塔是多筒结构，以风力作用作为控制主体结构的主要因素。主干是3根直径9米，高287米的空心擎天大柱，大柱间有6米高的横梁连结；在93米标高处，由3根直径7米的斜柱支撑着，斜柱与地面呈60°交角。该建筑有425根基桩入地12米，上千吨的3个钢结构圆球分别悬挂在塔身112米、295米和350米的高空，钢筋混凝土的建筑加3根近百米高的斜撑。[3] '),('上海复兴公园','复兴公园位于上海雁荡路105号，东邻重庆南路，南临复兴中路，西近思南路，北与科学会堂等为界。当时有个姓顾的人家在此建造了一个私人小花园，人们称之为“顾家宅花园”，这便是复兴公园最初的雏形。',1,'31.216976','121.469128',16,'公园的造园风格，是以规则式与自然式相结合的布局。北、中部以规则式布局为主，有毛毡花坛、中心喷水池、月季花坛、以及南北、东西向主要干道。西南部以自然式布局为主，有假山区、荷花池、小溪、曲径小道、大草坪。融中西式为一体，突出法国规则式造园风格，这里的花坛采用下沉式，时下爱称沉床园，利用地面高差使人们的视点抬高，能更好地俯视花坛整体的效果，为公园的一大特点。'),('上海科技馆','上海科技馆是上海市人民政府为贯彻落实科教兴国战略，提高城市综合竞争力和市民科学文化素养而投资兴建的具有中国特色、时代特征、上海特点的综合性的自然科学技术博物馆，是对公众进行科普教育的公益性机构，是中国重要的科普教育基地和精神文明建设基地。',2,'31.219134','121.542492',16,'科技馆位于世纪大道2000号，花木行政文化中心区，世纪广场西侧，南邻世纪公园。主馆占地面积6.8万多平方米，建筑面积9.8万平方米，分为11个风格各异的主题展区、4个高科技特种影院、3个古今中外科学家及其足迹的艺术长廊、2个主题特展和若干个临时展厅，它们共同为四方游客生动地演绎着“自然、人、科技”的永恒话题。'),('五角场万达广场','上海五角场万达广场地处上海市杨浦区五角场中心区域，东临淞沪路，南靠邯郸路，北依政通路，西侧为国宾路，联结五角场下沉式广场。[1] ',3,'31.301297','121.51362',16,'五角场是上海市政府确定的上海10大商业中心之一，和徐家汇、淮海路、中山公园商业中心齐名。2006年，杨浦区常驻人口约200万，是上海人口最为密集、但居住密度较低的区域之一。上海万达广场地处五角场，是杨浦区交通最发达、人口最密集的地区，日均人流量约60万，紧邻中环线、内环线、五角场下沉式广场、新江湾城，周边15所大专院校，加之林立的科研单位，已经形成了良好的商业氛围和消费市场。[1] '),('新天地上海','上海新天地是一个具有上海历史文化风貌，中西融合的都市旅游景点，它以上海近代建筑的标志石库门建筑旧区为基础，首次改变了石库门原有的居住功能，创新地赋予其商业经营功能，把这片反映了上海历史和文化的老房子改造成餐饮、购物、演艺等功能的时尚、休闲文化娱乐中心。漫步新天地，仿佛时光倒流，有如置身于二十世纪二、三十年代的上海，但一步跨进每个建筑内部，则非常现代和时尚，亲身体会新天地独特的理念，这有机的组合与错落有致地巧妙安排形成了一首上海昨天、明天、今天的交响乐，让海内外游客品味独特的文化。',3,'31.220826','121.474365',17,'由幼稚走向成熟的石库门住宅构成了私密空间与公共空间交错的里弄社区。在这个社区内，居民在享受个人空间的同时，也更容易培养出更融洽更亲密的邻里关系。于是这家今天烧什么菜，那家明天有啥事，都知道得一清二楚。随着居住密度的不断增强，居民便逐渐把本属家庭内的活动移师到了弄内的公共空间进行，更加固了原有的邻里亲密度。而在此之间，摩擦也越来越多，无论是青年之间，还是青年与老年之间，而这些摩擦争吵为的却只是“你多用了我的煤气”，“你侵入了我的地盘”等等诸如此类的问题。');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `step`
--

LOCK TABLES `step` WRITE;
/*!40000 ALTER TABLE `step` DISABLE KEYS */;
INSERT INTO `step` VALUES (2,'AAA','1933老场坊'),(11,'admin','1933老场坊'),(13,'admin','上海复兴公园'),(15,'admin','上海东方明珠'),(16,'admin','五角场万达广场'),(17,'AAA','新天地上海'),(19,'BBB','新天地上海'),(22,'admin','新天地上海');
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
  `user_pic` varchar(30) NOT NULL DEFAULT 'img/user_defaultIpng',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('AAA','管理员2','aaa','img/user_defaultIpng'),('admin','伟大的管理员','123456','img/user_defaultIpng'),('BBB','BBB','bbb','img/user_defaultIpng'),('CCC','CCC','ccc','img/user_defaultIpng'),('ddd','ddd','ddd','img/user_defaultIpng');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `value`
--

DROP TABLE IF EXISTS `value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `value` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `sight_name` varchar(50) NOT NULL,
  `value_lati` tinytext NOT NULL,
  `value_longi` tinytext NOT NULL,
  `value_type` int(11) NOT NULL,
  `value_description` text NOT NULL,
  `value_content` text,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `value`
--

LOCK TABLES `value` WRITE;
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
INSERT INTO `value` VALUES (2,'五角场万达广场','31.301297','121.51362',1,'4','nothing here'),(3,'五角场万达广场','31.301297','121.51372',2,'5','nothing here'),(5,'五角场万达广场','31.301297','121.51392',3,'6','一个建议'),(6,'五角场万达广场','31.29981','121.513384',3,'2','nothing here'),(7,'五角场万达广场','31.301561','121.513652',1,'5','nothing here'),(8,'五角场万达广场','31.302029','121.512746',3,'1','nothing here'),(9,'五角场万达广场','31.300177','121.514269',3,'5','垃圾桶'),(10,'五角场万达广场','31.302123','121.513802',3,'5','电玩'),(11,'上海复兴公园','31.217782','121.469514',1,'1','nothing here'),(12,'上海复兴公园','31.216002','121.46769',2,'7','nothing here'),(13,'上海复兴公园','31.217158','121.467497',2,'4','nothing here'),(14,'上海复兴公园','31.216387','121.468549',1,'2','nothing here'),(15,'上海东方明珠','31.240133','121.499852',1,'3','nothing here'),(16,'上海东方明珠','31.239711','121.500506',3,'5','卖店'),(17,'上海科技馆','31.218674','121.542406',3,'5','卖店'),(18,'上海复兴公园','31.215837','121.46975',1,'4','nothing here'),(19,'上海复兴公园','31.216919','121.469707',2,'3','nothing here'),(20,'上海复兴公园','31.217158','121.469664',3,'5','厕所');
/*!40000 ALTER TABLE `value` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish`
--

LOCK TABLES `wish` WRITE;
/*!40000 ALTER TABLE `wish` DISABLE KEYS */;
INSERT INTO `wish` VALUES (2,'AAA','上海东方明珠'),(4,'admin','1933老场坊'),(6,'admin','上海科技馆'),(7,'BBB','五角场万达广场'),(8,'admin','新天地上海');
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

-- Dump completed on 2016-07-01  0:12:03
