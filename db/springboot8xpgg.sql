-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot8xpgg
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot8xpgg`
--

/*!40000 DROP DATABASE IF EXISTS `springboot8xpgg`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot8xpgg` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot8xpgg`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danganruku`
--

DROP TABLE IF EXISTS `danganruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danganruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `wenjianmingcheng` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `danganfenlei` varchar(200) DEFAULT NULL COMMENT '档案分类',
  `neirong` longtext COMMENT '内容',
  `danganwenjian` longtext COMMENT '档案文件',
  `danganzhuangtai` varchar(200) DEFAULT NULL COMMENT '档案状态',
  `rukushijian` date DEFAULT NULL COMMENT '入库时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='档案入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danganruku`
--

LOCK TABLES `danganruku` WRITE;
/*!40000 ALTER TABLE `danganruku` DISABLE KEYS */;
INSERT INTO `danganruku` VALUES (51,'2023-03-10 00:57:53','1111111111','文件名称1','标题1','档案分类1','内容1','','已入库','2023-03-10','学生账号1','学生姓名1','专业1','班级1'),(52,'2023-03-10 00:57:53','2222222222','文件名称2','标题2','档案分类2','内容2','','已入库','2023-03-10','学生账号2','学生姓名2','专业2','班级2'),(53,'2023-03-10 00:57:53','3333333333','文件名称3','标题3','档案分类3','内容3','','已入库','2023-03-10','学生账号3','学生姓名3','专业3','班级3'),(54,'2023-03-10 00:57:53','4444444444','文件名称4','标题4','档案分类4','内容4','','已入库','2023-03-10','学生账号4','学生姓名4','专业4','班级4'),(55,'2023-03-10 00:57:53','5555555555','文件名称5','标题5','档案分类5','内容5','','已入库','2023-03-10','学生账号5','学生姓名5','专业5','班级5'),(56,'2023-03-10 00:57:53','6666666666','文件名称6','标题6','档案分类6','内容6','','已入库','2023-03-10','学生账号6','学生姓名6','专业6','班级6'),(57,'2023-03-10 00:57:53','7777777777','文件名称7','标题7','档案分类7','内容7','','已入库','2023-03-10','学生账号7','学生姓名7','专业7','班级7'),(58,'2023-03-10 00:57:53','8888888888','文件名称8','标题8','档案分类8','内容8','','已入库','2023-03-10','学生账号8','学生姓名8','专业8','班级8');
/*!40000 ALTER TABLE `danganruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guidangjianmu`
--

DROP TABLE IF EXISTS `guidangjianmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guidangjianmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianmubianhao` varchar(200) DEFAULT NULL COMMENT '建目编号',
  `wenjianmingcheng` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `danganfenlei` varchar(200) DEFAULT NULL COMMENT '档案分类',
  `neirong` longtext COMMENT '内容',
  `jianmushijian` date DEFAULT NULL COMMENT '建目时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jianmubianhao` (`jianmubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='归档建目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guidangjianmu`
--

LOCK TABLES `guidangjianmu` WRITE;
/*!40000 ALTER TABLE `guidangjianmu` DISABLE KEYS */;
INSERT INTO `guidangjianmu` VALUES (41,'2023-03-10 00:57:53','1111111111','文件名称1','标题1','档案分类1','内容1','2023-03-10','学生账号1','学生姓名1','专业1','班级1'),(42,'2023-03-10 00:57:53','2222222222','文件名称2','标题2','档案分类2','内容2','2023-03-10','学生账号2','学生姓名2','专业2','班级2'),(43,'2023-03-10 00:57:53','3333333333','文件名称3','标题3','档案分类3','内容3','2023-03-10','学生账号3','学生姓名3','专业3','班级3'),(44,'2023-03-10 00:57:53','4444444444','文件名称4','标题4','档案分类4','内容4','2023-03-10','学生账号4','学生姓名4','专业4','班级4'),(45,'2023-03-10 00:57:53','5555555555','文件名称5','标题5','档案分类5','内容5','2023-03-10','学生账号5','学生姓名5','专业5','班级5'),(46,'2023-03-10 00:57:53','6666666666','文件名称6','标题6','档案分类6','内容6','2023-03-10','学生账号6','学生姓名6','专业6','班级6'),(47,'2023-03-10 00:57:53','7777777777','文件名称7','标题7','档案分类7','内容7','2023-03-10','学生账号7','学生姓名7','专业7','班级7'),(48,'2023-03-10 00:57:53','8888888888','文件名称8','标题8','档案分类8','内容8','2023-03-10','学生账号8','学生姓名8','专业8','班级8');
/*!40000 ALTER TABLE `guidangjianmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guidangshenhe`
--

DROP TABLE IF EXISTS `guidangshenhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guidangshenhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenhebianhao` varchar(200) DEFAULT NULL COMMENT '审核编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `danganfenlei` varchar(200) DEFAULT NULL COMMENT '档案分类',
  `neirong` longtext COMMENT '内容',
  `shenhejieguo` varchar(200) DEFAULT NULL COMMENT '审核结果',
  `shenheshijian` date DEFAULT NULL COMMENT '审核时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenhebianhao` (`shenhebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='归档审核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guidangshenhe`
--

LOCK TABLES `guidangshenhe` WRITE;
/*!40000 ALTER TABLE `guidangshenhe` DISABLE KEYS */;
INSERT INTO `guidangshenhe` VALUES (31,'2023-03-10 00:57:53','1111111111','标题1','档案分类1','内容1','通过','2023-03-10','学生账号1','学生姓名1','班级1','专业1','身份证1'),(32,'2023-03-10 00:57:53','2222222222','标题2','档案分类2','内容2','通过','2023-03-10','学生账号2','学生姓名2','班级2','专业2','身份证2'),(33,'2023-03-10 00:57:53','3333333333','标题3','档案分类3','内容3','通过','2023-03-10','学生账号3','学生姓名3','班级3','专业3','身份证3'),(34,'2023-03-10 00:57:53','4444444444','标题4','档案分类4','内容4','通过','2023-03-10','学生账号4','学生姓名4','班级4','专业4','身份证4'),(35,'2023-03-10 00:57:53','5555555555','标题5','档案分类5','内容5','通过','2023-03-10','学生账号5','学生姓名5','班级5','专业5','身份证5'),(36,'2023-03-10 00:57:53','6666666666','标题6','档案分类6','内容6','通过','2023-03-10','学生账号6','学生姓名6','班级6','专业6','身份证6'),(37,'2023-03-10 00:57:53','7777777777','标题7','档案分类7','内容7','通过','2023-03-10','学生账号7','学生姓名7','班级7','专业7','身份证7'),(38,'2023-03-10 00:57:53','8888888888','标题8','档案分类8','内容8','通过','2023-03-10','学生账号8','学生姓名8','班级8','专业8','身份证8');
/*!40000 ALTER TABLE `guidangshenhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guihaidangan`
--

DROP TABLE IF EXISTS `guihaidangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guihaidangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuebianhao` varchar(200) DEFAULT NULL COMMENT '借阅编号',
  `wenjianmingcheng` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `danganfenlei` varchar(200) DEFAULT NULL COMMENT '档案分类',
  `neirong` longtext COMMENT '内容',
  `jieyueshizhang` varchar(200) DEFAULT NULL COMMENT '借阅时长',
  `danganzhuangtai` varchar(200) DEFAULT NULL COMMENT '档案状态',
  `guihaishijian` date DEFAULT NULL COMMENT '归还时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='归还档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guihaidangan`
--

LOCK TABLES `guihaidangan` WRITE;
/*!40000 ALTER TABLE `guihaidangan` DISABLE KEYS */;
INSERT INTO `guihaidangan` VALUES (71,'2023-03-10 00:57:53','借阅编号1','文件名称1','标题1','档案分类1','内容1','借阅时长1','已归还','2023-03-10','学生账号1','学生姓名1','班级1','专业1','是',''),(72,'2023-03-10 00:57:53','借阅编号2','文件名称2','标题2','档案分类2','内容2','借阅时长2','已归还','2023-03-10','学生账号2','学生姓名2','班级2','专业2','是',''),(73,'2023-03-10 00:57:53','借阅编号3','文件名称3','标题3','档案分类3','内容3','借阅时长3','已归还','2023-03-10','学生账号3','学生姓名3','班级3','专业3','是',''),(74,'2023-03-10 00:57:53','借阅编号4','文件名称4','标题4','档案分类4','内容4','借阅时长4','已归还','2023-03-10','学生账号4','学生姓名4','班级4','专业4','是',''),(75,'2023-03-10 00:57:53','借阅编号5','文件名称5','标题5','档案分类5','内容5','借阅时长5','已归还','2023-03-10','学生账号5','学生姓名5','班级5','专业5','是',''),(76,'2023-03-10 00:57:53','借阅编号6','文件名称6','标题6','档案分类6','内容6','借阅时长6','已归还','2023-03-10','学生账号6','学生姓名6','班级6','专业6','是',''),(77,'2023-03-10 00:57:53','借阅编号7','文件名称7','标题7','档案分类7','内容7','借阅时长7','已归还','2023-03-10','学生账号7','学生姓名7','班级7','专业7','是',''),(78,'2023-03-10 00:57:53','借阅编号8','文件名称8','标题8','档案分类8','内容8','借阅时长8','已归还','2023-03-10','学生账号8','学生姓名8','班级8','专业8','是','');
/*!40000 ALTER TABLE `guihaidangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shenqingjieyue`
--

DROP TABLE IF EXISTS `shenqingjieyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenqingjieyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuebianhao` varchar(200) DEFAULT NULL COMMENT '借阅编号',
  `wenjianmingcheng` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `danganfenlei` varchar(200) DEFAULT NULL COMMENT '档案分类',
  `neirong` longtext COMMENT '内容',
  `jieyueshizhang` varchar(200) DEFAULT NULL COMMENT '借阅时长',
  `jieyueshijian` date DEFAULT NULL COMMENT '借阅时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyuebianhao` (`jieyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='申请借阅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenqingjieyue`
--

LOCK TABLES `shenqingjieyue` WRITE;
/*!40000 ALTER TABLE `shenqingjieyue` DISABLE KEYS */;
INSERT INTO `shenqingjieyue` VALUES (61,'2023-03-10 00:57:53','1111111111','文件名称1','标题1','档案分类1','内容1','一天','2023-03-10','学生账号1','学生姓名1','班级1','专业1','是',''),(62,'2023-03-10 00:57:53','2222222222','文件名称2','标题2','档案分类2','内容2','一天','2023-03-10','学生账号2','学生姓名2','班级2','专业2','是',''),(63,'2023-03-10 00:57:53','3333333333','文件名称3','标题3','档案分类3','内容3','一天','2023-03-10','学生账号3','学生姓名3','班级3','专业3','是',''),(64,'2023-03-10 00:57:53','4444444444','文件名称4','标题4','档案分类4','内容4','一天','2023-03-10','学生账号4','学生姓名4','班级4','专业4','是',''),(65,'2023-03-10 00:57:53','5555555555','文件名称5','标题5','档案分类5','内容5','一天','2023-03-10','学生账号5','学生姓名5','班级5','专业5','是',''),(66,'2023-03-10 00:57:53','6666666666','文件名称6','标题6','档案分类6','内容6','一天','2023-03-10','学生账号6','学生姓名6','班级6','专业6','是',''),(67,'2023-03-10 00:57:53','7777777777','文件名称7','标题7','档案分类7','内容7','一天','2023-03-10','学生账号7','学生姓名7','班级7','专业7','是',''),(68,'2023-03-10 00:57:53','8888888888','文件名称8','标题8','档案分类8','内容8','一天','2023-03-10','学生账号8','学生姓名8','班级8','专业8','是','');
/*!40000 ALTER TABLE `shenqingjieyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shenqingxiugai`
--

DROP TABLE IF EXISTS `shenqingxiugai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenqingxiugai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `wenjianmingcheng` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `danganfenlei` varchar(200) DEFAULT NULL COMMENT '档案分类',
  `neirong` longtext COMMENT '内容',
  `xiugaineirong` longtext COMMENT '修改内容',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenqingbianhao` (`shenqingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='申请修改';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenqingxiugai`
--

LOCK TABLES `shenqingxiugai` WRITE;
/*!40000 ALTER TABLE `shenqingxiugai` DISABLE KEYS */;
INSERT INTO `shenqingxiugai` VALUES (81,'2023-03-10 00:57:53','1111111111','文件名称1','标题1','档案分类1','内容1','修改内容1','2023-03-10','学生账号1','学生姓名1','班级1','专业1','是',''),(82,'2023-03-10 00:57:53','2222222222','文件名称2','标题2','档案分类2','内容2','修改内容2','2023-03-10','学生账号2','学生姓名2','班级2','专业2','是',''),(83,'2023-03-10 00:57:53','3333333333','文件名称3','标题3','档案分类3','内容3','修改内容3','2023-03-10','学生账号3','学生姓名3','班级3','专业3','是',''),(84,'2023-03-10 00:57:53','4444444444','文件名称4','标题4','档案分类4','内容4','修改内容4','2023-03-10','学生账号4','学生姓名4','班级4','专业4','是',''),(85,'2023-03-10 00:57:53','5555555555','文件名称5','标题5','档案分类5','内容5','修改内容5','2023-03-10','学生账号5','学生姓名5','班级5','专业5','是',''),(86,'2023-03-10 00:57:53','6666666666','文件名称6','标题6','档案分类6','内容6','修改内容6','2023-03-10','学生账号6','学生姓名6','班级6','专业6','是',''),(87,'2023-03-10 00:57:53','7777777777','文件名称7','标题7','档案分类7','内容7','修改内容7','2023-03-10','学生账号7','学生姓名7','班级7','专业7','是',''),(88,'2023-03-10 00:57:53','8888888888','文件名称8','标题8','档案分类8','内容8','修改内容8','2023-03-10','学生账号8','学生姓名8','班级8','专业8','是','');
/*!40000 ALTER TABLE `shenqingxiugai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-10 00:57:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-03-10 00:57:52','学生账号1','学生姓名1','123456','男','upload/xuesheng_touxiang1.jpg',1,'13823888881','班级1','专业1','440300199101010001'),(12,'2023-03-10 00:57:52','学生账号2','学生姓名2','123456','男','upload/xuesheng_touxiang2.jpg',2,'13823888882','班级2','专业2','440300199202020002'),(13,'2023-03-10 00:57:52','学生账号3','学生姓名3','123456','男','upload/xuesheng_touxiang3.jpg',3,'13823888883','班级3','专业3','440300199303030003'),(14,'2023-03-10 00:57:52','学生账号4','学生姓名4','123456','男','upload/xuesheng_touxiang4.jpg',4,'13823888884','班级4','专业4','440300199404040004'),(15,'2023-03-10 00:57:52','学生账号5','学生姓名5','123456','男','upload/xuesheng_touxiang5.jpg',5,'13823888885','班级5','专业5','440300199505050005'),(16,'2023-03-10 00:57:52','学生账号6','学生姓名6','123456','男','upload/xuesheng_touxiang6.jpg',6,'13823888886','班级6','专业6','440300199606060006'),(17,'2023-03-10 00:57:52','学生账号7','学生姓名7','123456','男','upload/xuesheng_touxiang7.jpg',7,'13823888887','班级7','专业7','440300199707070007'),(18,'2023-03-10 00:57:52','学生账号8','学生姓名8','123456','男','upload/xuesheng_touxiang8.jpg',8,'13823888888','班级8','专业8','440300199808080008');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengdangan`
--

DROP TABLE IF EXISTS `xueshengdangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengdangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `danganfenlei` varchar(200) DEFAULT NULL COMMENT '档案分类',
  `neirong` longtext COMMENT '内容',
  `wenjian` longtext COMMENT '文件',
  `xiangqing` longtext COMMENT '详情',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='学生档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengdangan`
--

LOCK TABLES `xueshengdangan` WRITE;
/*!40000 ALTER TABLE `xueshengdangan` DISABLE KEYS */;
INSERT INTO `xueshengdangan` VALUES (21,'2023-03-10 00:57:52','标题1','课程学业','内容1','','详情1','学生账号1','学生姓名1','班级1','专业1','身份证1'),(22,'2023-03-10 00:57:52','标题2','课程学业','内容2','','详情2','学生账号2','学生姓名2','班级2','专业2','身份证2'),(23,'2023-03-10 00:57:52','标题3','课程学业','内容3','','详情3','学生账号3','学生姓名3','班级3','专业3','身份证3'),(24,'2023-03-10 00:57:52','标题4','课程学业','内容4','','详情4','学生账号4','学生姓名4','班级4','专业4','身份证4'),(25,'2023-03-10 00:57:52','标题5','课程学业','内容5','','详情5','学生账号5','学生姓名5','班级5','专业5','身份证5'),(26,'2023-03-10 00:57:52','标题6','课程学业','内容6','','详情6','学生账号6','学生姓名6','班级6','专业6','身份证6'),(27,'2023-03-10 00:57:52','标题7','课程学业','内容7','','详情7','学生账号7','学生姓名7','班级7','专业7','身份证7'),(28,'2023-03-10 00:57:52','标题8','课程学业','内容8','','详情8','学生账号8','学生姓名8','班级8','专业8','身份证8');
/*!40000 ALTER TABLE `xueshengdangan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 19:28:52
