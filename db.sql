/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmh805k
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmh805k` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmh805k`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmh805k/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmh805k/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmh805k/upload/picture3.jpg'),(6,'picture4','http://localhost:8080/ssmh805k/upload/1619072357886.jpg');

/*Table structure for table `diannaofenlei` */

DROP TABLE IF EXISTS `diannaofenlei`;

CREATE TABLE `diannaofenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenleimingcheng` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072255536 DEFAULT CHARSET=utf8 COMMENT='电脑分类';

/*Data for the table `diannaofenlei` */

insert  into `diannaofenlei`(`id`,`addtime`,`fenleimingcheng`,`shuliang`,`danwei`) values (31,'2021-04-22 14:12:52','分类名称1',1,'单位1'),(32,'2021-04-22 14:12:52','分类名称2',2,'单位2'),(33,'2021-04-22 14:12:52','分类名称3',3,'单位3'),(34,'2021-04-22 14:12:52','分类名称4',4,'单位4'),(35,'2021-04-22 14:12:52','分类名称5',5,'单位5'),(36,'2021-04-22 14:12:52','分类名称6',6,'单位6'),(1619072255535,'2021-04-22 14:17:35','测试分类',20,'12');

/*Table structure for table `diannaoleixing` */

DROP TABLE IF EXISTS `diannaoleixing`;

CREATE TABLE `diannaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixingmingcheng` varchar(200) DEFAULT NULL COMMENT '类型名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072243743 DEFAULT CHARSET=utf8 COMMENT='电脑类型';

/*Data for the table `diannaoleixing` */

insert  into `diannaoleixing`(`id`,`addtime`,`leixingmingcheng`,`shuliang`) values (21,'2021-04-22 14:12:52','类型名称1',1),(22,'2021-04-22 14:12:52','类型名称2',2),(23,'2021-04-22 14:12:52','类型名称3',3),(24,'2021-04-22 14:12:52','类型名称4',4),(25,'2021-04-22 14:12:52','类型名称5',5),(26,'2021-04-22 14:12:52','类型名称6',6),(1619072243742,'2021-04-22 14:17:23','测试类型',20);

/*Table structure for table `diannaopingce` */

DROP TABLE IF EXISTS `diannaopingce`;

CREATE TABLE `diannaopingce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diannaomingcheng` varchar(200) DEFAULT NULL COMMENT '电脑名称',
  `diannaofenlei` varchar(200) DEFAULT NULL COMMENT '电脑分类',
  `diannaopinpai` varchar(200) DEFAULT NULL COMMENT '电脑品牌',
  `diannaofengmian` varchar(200) DEFAULT NULL COMMENT '电脑封面',
  `cepingxinxi` longtext COMMENT '测评信息',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072333043 DEFAULT CHARSET=utf8 COMMENT='电脑评测';

/*Data for the table `diannaopingce` */

insert  into `diannaopingce`(`id`,`addtime`,`diannaomingcheng`,`diannaofenlei`,`diannaopinpai`,`diannaofengmian`,`cepingxinxi`,`fabushijian`,`clicknum`) values (61,'2021-04-22 14:12:52','电脑名称1','电脑分类1','电脑品牌1','http://localhost:8080/ssmh805k/upload/diannaopingce_diannaofengmian1.jpg','测评信息1','2021-04-22 14:12:52',1),(62,'2021-04-22 14:12:52','电脑名称2','电脑分类2','电脑品牌2','http://localhost:8080/ssmh805k/upload/diannaopingce_diannaofengmian2.jpg','测评信息2','2021-04-22 14:12:52',2),(63,'2021-04-22 14:12:52','电脑名称3','电脑分类3','电脑品牌3','http://localhost:8080/ssmh805k/upload/diannaopingce_diannaofengmian3.jpg','测评信息3','2021-04-22 14:12:52',3),(64,'2021-04-22 14:12:52','电脑名称4','电脑分类4','电脑品牌4','http://localhost:8080/ssmh805k/upload/diannaopingce_diannaofengmian4.jpg','测评信息4','2021-04-22 14:12:52',4),(65,'2021-04-22 14:12:52','电脑名称5','电脑分类5','电脑品牌5','http://localhost:8080/ssmh805k/upload/diannaopingce_diannaofengmian5.jpg','测评信息5','2021-04-22 14:12:52',5),(66,'2021-04-22 14:12:52','电脑名称6','电脑分类6','电脑品牌6','http://localhost:8080/ssmh805k/upload/diannaopingce_diannaofengmian6.jpg','测评信息6','2021-04-22 14:12:52',6),(1619072333042,'2021-04-22 14:18:52','测试电脑','测试分类','小米','http://localhost:8080/ssmh805k/upload/1619072293268.jpg','<p>很不错的</p>','2021-04-22 14:18:45',5);

/*Table structure for table `diannaopinpai` */

DROP TABLE IF EXISTS `diannaopinpai`;

CREATE TABLE `diannaopinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pinpaibianhao` varchar(200) NOT NULL COMMENT '品牌编号',
  `pinpaimingcheng` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `pinpaifengmian` varchar(200) DEFAULT NULL COMMENT '品牌封面',
  `xiangguandiannao` longtext COMMENT '相关电脑',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pinpaibianhao` (`pinpaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072276303 DEFAULT CHARSET=utf8 COMMENT='电脑品牌';

/*Data for the table `diannaopinpai` */

insert  into `diannaopinpai`(`id`,`addtime`,`pinpaibianhao`,`pinpaimingcheng`,`pinpaifengmian`,`xiangguandiannao`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (41,'2021-04-22 14:12:52','品牌编号1','品牌名称1','http://localhost:8080/ssmh805k/upload/diannaopinpai_pinpaifengmian1.jpg','相关电脑1',1,1,'2021-04-22 14:12:52',1),(42,'2021-04-22 14:12:52','品牌编号2','品牌名称2','http://localhost:8080/ssmh805k/upload/diannaopinpai_pinpaifengmian2.jpg','相关电脑2',2,2,'2021-04-22 14:12:52',2),(43,'2021-04-22 14:12:52','品牌编号3','品牌名称3','http://localhost:8080/ssmh805k/upload/diannaopinpai_pinpaifengmian3.jpg','相关电脑3',3,3,'2021-04-22 14:12:52',3),(44,'2021-04-22 14:12:52','品牌编号4','品牌名称4','http://localhost:8080/ssmh805k/upload/diannaopinpai_pinpaifengmian4.jpg','相关电脑4',4,4,'2021-04-22 14:12:52',4),(45,'2021-04-22 14:12:52','品牌编号5','品牌名称5','http://localhost:8080/ssmh805k/upload/diannaopinpai_pinpaifengmian5.jpg','相关电脑5',5,5,'2021-04-22 14:12:52',5),(46,'2021-04-22 14:12:52','品牌编号6','品牌名称6','http://localhost:8080/ssmh805k/upload/diannaopinpai_pinpaifengmian6.jpg','相关电脑6',6,6,'2021-04-22 14:12:52',6),(1619072276302,'2021-04-22 14:17:55','1619072258826','小米','http://localhost:8080/ssmh805k/upload/1619072266001.jpg','小米电脑1,小米电脑2',1,0,'2021-04-22 14:20:18',3);

/*Table structure for table `diannaoxinxi` */

DROP TABLE IF EXISTS `diannaoxinxi`;

CREATE TABLE `diannaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diannaobianhao` varchar(200) NOT NULL COMMENT '电脑编号',
  `diannaomingcheng` varchar(200) DEFAULT NULL COMMENT '电脑名称',
  `diannaofenlei` varchar(200) DEFAULT NULL COMMENT '电脑分类',
  `diannaopinpai` varchar(200) DEFAULT NULL COMMENT '电脑品牌',
  `diannaofengmian` varchar(200) DEFAULT NULL COMMENT '电脑封面',
  `diannaojiage` int(11) NOT NULL COMMENT '电脑价格',
  `diannaopeizhi` longtext COMMENT '电脑配置',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diannaobianhao` (`diannaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072321057 DEFAULT CHARSET=utf8 COMMENT='电脑信息';

/*Data for the table `diannaoxinxi` */

insert  into `diannaoxinxi`(`id`,`addtime`,`diannaobianhao`,`diannaomingcheng`,`diannaofenlei`,`diannaopinpai`,`diannaofengmian`,`diannaojiage`,`diannaopeizhi`,`thumbsupnum`,`crazilynum`,`clicktime`,`userid`) values (51,'2021-04-22 14:12:52','电脑编号1','电脑名称1','电脑分类1','电脑品牌1','http://localhost:8080/ssmh805k/upload/diannaoxinxi_diannaofengmian1.jpg',1,'电脑配置1',1,1,'2021-04-22 14:19:49',1),(52,'2021-04-22 14:12:52','电脑编号2','电脑名称2','电脑分类2','电脑品牌2','http://localhost:8080/ssmh805k/upload/diannaoxinxi_diannaofengmian2.jpg',2,'电脑配置2',2,2,'2021-04-22 14:12:52',2),(53,'2021-04-22 14:12:52','电脑编号3','电脑名称3','电脑分类3','电脑品牌3','http://localhost:8080/ssmh805k/upload/diannaoxinxi_diannaofengmian3.jpg',3,'电脑配置3',3,3,'2021-04-22 14:12:52',3),(54,'2021-04-22 14:12:52','电脑编号4','电脑名称4','电脑分类4','电脑品牌4','http://localhost:8080/ssmh805k/upload/diannaoxinxi_diannaofengmian4.jpg',4,'电脑配置4',4,4,'2021-04-22 14:12:52',4),(55,'2021-04-22 14:12:52','电脑编号5','电脑名称5','电脑分类5','电脑品牌5','http://localhost:8080/ssmh805k/upload/diannaoxinxi_diannaofengmian5.jpg',5,'电脑配置5',5,5,'2021-04-22 14:12:52',5),(56,'2021-04-22 14:12:52','电脑编号6','电脑名称6','电脑分类6','电脑品牌6','http://localhost:8080/ssmh805k/upload/diannaoxinxi_diannaofengmian6.jpg',6,'电脑配置6',6,6,'2021-04-22 14:12:52',6),(1619072321056,'2021-04-22 14:18:40','1619072281605','测试电脑','测试分类','小米','http://localhost:8080/ssmh805k/upload/1619072293268.jpg',2000,'<p>测试配置，参数，diy等</p>',1,0,'2021-04-22 14:20:41',NULL);

/*Table structure for table `discussdiannaopingce` */

DROP TABLE IF EXISTS `discussdiannaopingce`;

CREATE TABLE `discussdiannaopingce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072456738 DEFAULT CHARSET=utf8 COMMENT='电脑评测评论表';

/*Data for the table `discussdiannaopingce` */

insert  into `discussdiannaopingce`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-22 14:12:52',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-22 14:12:52',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-22 14:12:52',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-22 14:12:52',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-22 14:12:52',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-22 14:12:52',6,6,'用户名6','评论内容6','回复内容6'),(1619072456737,'2021-04-22 14:20:56',1619072333042,1619072223297,'122','测试','测试111');

/*Table structure for table `discussdiannaopinpai` */

DROP TABLE IF EXISTS `discussdiannaopinpai`;

CREATE TABLE `discussdiannaopinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072415582 DEFAULT CHARSET=utf8 COMMENT='电脑品牌评论表';

/*Data for the table `discussdiannaopinpai` */

insert  into `discussdiannaopinpai`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-22 14:12:52',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-22 14:12:52',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-22 14:12:52',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-22 14:12:52',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-22 14:12:52',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-22 14:12:52',6,6,'用户名6','评论内容6','回复内容6'),(1619072415581,'2021-04-22 14:20:15',1619072276302,1619072223297,'122','测试',NULL);

/*Table structure for table `discussdiannaoxinxi` */

DROP TABLE IF EXISTS `discussdiannaoxinxi`;

CREATE TABLE `discussdiannaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072439038 DEFAULT CHARSET=utf8 COMMENT='电脑信息评论表';

/*Data for the table `discussdiannaoxinxi` */

insert  into `discussdiannaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-22 14:12:52',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-22 14:12:52',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-22 14:12:52',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-22 14:12:52',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-22 14:12:52',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-22 14:12:52',6,6,'用户名6','评论内容6','回复内容6'),(1619072439037,'2021-04-22 14:20:38',1619072321056,1619072223297,'122','测试',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072524254 DEFAULT CHARSET=utf8 COMMENT='论坛互动';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-04-22 14:12:52','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-04-22 14:12:52','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-04-22 14:12:52','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-04-22 14:12:52','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-04-22 14:12:52','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-04-22 14:12:52','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1619072485370,'2021-04-22 14:21:24','测试帖子','<p>请输入内容<img src=\"../../../upload/1619072482466.jpg\" alt=\"\" width=\"1920\" height=\"865\" /></p>',0,1619072223297,'122','开放'),(1619072524253,'2021-04-22 14:22:04',NULL,'测试',1619072485370,1619072223297,'122',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072380989 DEFAULT CHARSET=utf8 COMMENT='校园资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-22 14:12:52','标题1','简介1','http://localhost:8080/ssmh805k/upload/news_picture1.jpg','内容1'),(92,'2021-04-22 14:12:52','标题2','简介2','http://localhost:8080/ssmh805k/upload/news_picture2.jpg','内容2'),(93,'2021-04-22 14:12:52','标题3','简介3','http://localhost:8080/ssmh805k/upload/news_picture3.jpg','内容3'),(94,'2021-04-22 14:12:52','标题4','简介4','http://localhost:8080/ssmh805k/upload/news_picture4.jpg','内容4'),(95,'2021-04-22 14:12:52','标题5','简介5','http://localhost:8080/ssmh805k/upload/news_picture5.jpg','内容5'),(96,'2021-04-22 14:12:52','标题6','简介6','http://localhost:8080/ssmh805k/upload/news_picture6.jpg','内容6'),(1619072380988,'2021-04-22 14:19:40','测试资讯','测试简介','http://localhost:8080/ssmh805k/upload/1619072369398.jpg','<p>测试内容<img src=\"http://localhost:8080/ssmh805k/upload/1619072378736.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072450841 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619072409258,'2021-04-22 14:20:09',1619072223297,1619072276302,'diannaopinpai','小米','http://localhost:8080/ssmh805k/upload/1619072266001.jpg'),(1619072431308,'2021-04-22 14:20:30',1619072223297,1619072321056,'diannaoxinxi','测试电脑','http://localhost:8080/ssmh805k/upload/1619072293268.jpg'),(1619072450840,'2021-04-22 14:20:50',1619072223297,1619072333042,'diannaopingce','测试电脑','http://localhost:8080/ssmh805k/upload/1619072293268.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ismh8cuvtj0m1nfp8rq80puy89ji58hw','2021-04-22 14:15:36','2021-04-22 15:16:42'),(2,1619072223297,'122','yonghu','用户','2ifox2se9ozdekkqw2nxt9ateuxmy8tu','2021-04-22 14:19:46','2021-04-22 15:19:47');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-22 14:12:52');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuceshijian` date DEFAULT NULL COMMENT '注册时间',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619072223298 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`zhuceshijian`,`shoujihaoma`,`gerenzhaopian`) values (11,'2021-04-22 14:12:52','用户1','123456','用户姓名1','男','2021-04-22','13823888881','http://localhost:8080/ssmh805k/upload/yonghu_gerenzhaopian1.jpg'),(12,'2021-04-22 14:12:52','用户2','123456','用户姓名2','男','2021-04-22','13823888882','http://localhost:8080/ssmh805k/upload/yonghu_gerenzhaopian2.jpg'),(13,'2021-04-22 14:12:52','用户3','123456','用户姓名3','男','2021-04-22','13823888883','http://localhost:8080/ssmh805k/upload/yonghu_gerenzhaopian3.jpg'),(14,'2021-04-22 14:12:52','用户4','123456','用户姓名4','男','2021-04-22','13823888884','http://localhost:8080/ssmh805k/upload/yonghu_gerenzhaopian4.jpg'),(15,'2021-04-22 14:12:52','用户5','123456','用户姓名5','男','2021-04-22','13823888885','http://localhost:8080/ssmh805k/upload/yonghu_gerenzhaopian5.jpg'),(16,'2021-04-22 14:12:52','用户6','123456','用户姓名6','男','2021-04-22','13823888886','http://localhost:8080/ssmh805k/upload/yonghu_gerenzhaopian6.jpg'),(1619072223297,'2021-04-22 14:17:03','122','122','家长姓名1','男','2021-04-23','12345678905','http://localhost:8080/ssmh805k/upload/1619072549035.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
