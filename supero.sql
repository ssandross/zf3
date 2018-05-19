# Host: localhost  (Version 5.7.19-log)
# Date: 2018-03-13 13:23:24
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "task"
#

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT '1',
  `description` varchar(255) DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edition_date` datetime DEFAULT NULL,
  `exclusion_date` datetime DEFAULT NULL,
  `conclusion_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "task"
#

INSERT INTO `task` VALUES (1,'12121','0','2121212','2018-03-13 00:10:04','2018-03-13 00:33:10','2018-03-13 01:27:15','2018-03-13 12:56:57'),(2,'bbbbbbbbbbbbb','2','bbbbbb','2018-03-13 00:56:05','2018-03-13 01:27:51','2018-03-13 01:26:21','2018-03-13 02:02:02');
