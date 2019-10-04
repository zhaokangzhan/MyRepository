# Host: localhost  (Version: 5.5.53)
# Date: 2019-08-26 11:56:50
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "sfile"
#

CREATE TABLE `sfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `pnumber` varchar(255) NOT NULL DEFAULT '',
  `money` varchar(255) NOT NULL DEFAULT '0',
  `link_path` varchar(255) DEFAULT NULL,
  `upload_time` varchar(255) DEFAULT NULL,
  `dawnload_count` int(11) DEFAULT '0',
  `more_link` varchar(255) DEFAULT NULL,
  `active` varchar(255) NOT NULL DEFAULT '有效',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

#
# Data for table "sfile"
#

INSERT INTO `sfile` VALUES (40,'df0923c5-ec7c-43d4-b300-9d9cb460f452','pdf','数据库技术基础','晓毛雨','13456219958','2','/Star-Harbor/df0923c5-ec7c-43d4-b300-9d9cb460f452_数据库技术基础.pdf','2019-08-18 15:41:37',12,NULL,'有效'),(42,'f739ad45-0cfd-4ae6-a4f2-49616ae4f9cf','jpg','littlezhao','赵云','17819184362','0','/Star-Harbor/f739ad45-0cfd-4ae6-a4f2-49616ae4f9cf_littlezhao.jpg','2019-08-18 16:02:39',3,NULL,'有效'),(44,'983a4ffc-7a36-43f4-a9c9-481ca36d1ce4','jpg','我的祖国','程云霓','12345231256','0','/Star-Harbor/983a4ffc-7a36-43f4-a9c9-481ca36d1ce4_我的祖国.jpg','2019-08-18 16:55:44',3,NULL,'有效'),(45,'ef9b56e9-35ec-428e-9e63-b7f51dde51a5','doc','实验报告节奏韵律','凯菲菲','12345231256','2','/Star-Harbor/ef9b56e9-35ec-428e-9e63-b7f51dde51a5_实验报告节奏韵律.doc','2019-08-18 16:58:42',1,NULL,'有效'),(46,'1adc9f2d-e374-4e97-ab11-fdcfa5c9395e','jpg','小模女','网上','','0','/Star-Harbor/1adc9f2d-e374-4e97-ab11-fdcfa5c9395e_小模女.jpg','2019-08-21 22:35:36',2,NULL,'有效'),(47,'fdacc974-a5a3-45fc-a233-464c357b4c59','jpg','法海','嘟嘟头','13432819958','2','/Star-Harbor/fdacc974-a5a3-45fc-a233-464c357b4c59_法海.jpg','2019-08-21 22:37:21',2,NULL,'有效'),(82,'e42383fe-ada1-4ce0-a406-7f627bd1174e','wmv','效果录屏','','','','/Star-Harbor/e42383fe-ada1-4ce0-a406-7f627bd1174e_效果录屏.wmv','2019-08-25 20:41:57',0,NULL,'有效'),(83,'28fe4b25-8994-493f-b8cc-a1e2658ac6ba','jpg','端午时节','屈原','12345231256','2','/Star-Harbor/28fe4b25-8994-493f-b8cc-a1e2658ac6ba_端午时节.jpg','2019-08-25 21:05:04',3,NULL,'有效');

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `sex` varchar(255) DEFAULT NULL,
  `link_path` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `pnumber` varchar(255) NOT NULL DEFAULT '',
  `idcard` varchar(255) NOT NULL DEFAULT '',
  `active` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'系统管理员','赵康展','3543338298@star-harbor','男','/Star-Harbor/67214819-547b-43fd-ba8f-2b0c2ed47838_1565788058693zhao.jpg','广东湛江','13432819958@163.com','13432819958','440813199802120635','有效'),(2,'访客','访客','123456',NULL,NULL,'',NULL,'123456','','有效');
