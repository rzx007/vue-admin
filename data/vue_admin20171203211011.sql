-- MySQL dump 10.13  Distrib 5.5.40, for Win32 (x86)
--
-- Host: localhost    Database: vue_admin
-- ------------------------------------------------------
-- Server version	5.5.40

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `type` int(10) DEFAULT NULL COMMENT '文章是否公开',
  `time` varchar(255) DEFAULT NULL COMMENT 'time',
  `content` longtext CHARACTER SET utf8 COMMENT '文章内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (4,'js 设置内容',1,'2017/12/3 下午8:38:18','<h2 data-line=\"22\">js 设置内容</h2>'),(7,'wangeditor',0,'2017/12/3 下午8:54:49','<p>创建编辑器之后，使用<code>editor.txt.html(...)</code>设置编辑器内容</p>'),(8,'创建编辑器之后',0,'2017/12/3 下午8:55:59','<p>创建编辑器之后，使用<code>editor.txt.html(...)</code>设置编辑器内容</p><pre><code>&lt;script type=\"text/javascript\" src=\"/wangEditor.min.js\"&gt;&lt;/script&gt;\n<br></code></pre>'),(11,'司马相如：撩妹手段赶超汪峰，一曲凤求凰，人家甘愿与之私奔',0,'2017/12/3 下午9:03:56','<p><img src=\"http://photo.ssyer.com/user//20171201/order/05de0430e0f4ae4e22e8e68e4aac46b59d13ariellustre463368jpg.jpg\" style=\"max-width:100%;\"><br></p><p>他听闻乡里八方的人在传说，临邛县里有个富豪叫卓王孙，他有个才貌双全的女儿叫卓文君，因命运捉弄，过门没几久，夫婿就死了，十几岁少女年轻轻便成了寡妇。  司马相如一听，心动不已。窈窕淑女，君子好逑嘛。辗转反侧了几个晚上，终下了决心：“要不，我把这个姑娘拿下吧！”  不过，转而一想，他想到一个严肃的问题，自己虽然也有些名气，可现在身无官职，又非富家子弟，直接登门提亲恐怕会不合适。  “哎，既然咱不能明目张胆的求婚，何不就先勾搭一下。”  文艺青年嘛，背着吉他带着屌就能走遍天下，何况我司马相如，能写能唱有才有颜呢</p>');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '文章标题',
  `content` text CHARACTER SET utf8 COMMENT '文章内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (8,'js 设置内容',1,'2017/12/3 下午8:39:05','<h2 data-line=\"22\">js 设置内容</h2>');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-03 21:10:14
