/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50527
Source Host           : 127.0.0.1:3306
Source Database       : heima

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-12-15 15:51:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer_info
-- ----------------------------
DROP TABLE IF EXISTS `answer_info`;
CREATE TABLE `answer_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `silu` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer_info
-- ----------------------------

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` varchar(255) DEFAULT NULL,
  `test_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('33', '280', '11');

-- ----------------------------
-- Table structure for item_info
-- ----------------------------
DROP TABLE IF EXISTS `item_info`;
CREATE TABLE `item_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_type` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `item_status` varchar(255) DEFAULT NULL,
  `item_source_id` varchar(255) DEFAULT NULL,
  `item_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_info
-- ----------------------------
INSERT INTO `item_info` VALUES ('9', '0', '1', '1', '1101', '使用print方法在控制台打印输出“Hello World”');
INSERT INTO `item_info` VALUES ('10', '0', '1', '1', '1101', '使用for循环打印输出1-100之间的偶数');

-- ----------------------------
-- Table structure for test_source
-- ----------------------------
DROP TABLE IF EXISTS `test_source`;
CREATE TABLE `test_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) DEFAULT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  `test_status` varchar(255) DEFAULT NULL,
  `test_items` varchar(255) DEFAULT NULL,
  `test_sources_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_source
-- ----------------------------
INSERT INTO `test_source` VALUES ('10', 'day01-JavaSE环境搭建', '1', '1', '9', '1101');
INSERT INTO `test_source` VALUES ('11', 'day02-JavaSE基础语法', '1', '1', '9,10', '1101');

-- ----------------------------
-- Table structure for testctrl
-- ----------------------------
DROP TABLE IF EXISTS `testctrl`;
CREATE TABLE `testctrl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` varchar(255) DEFAULT NULL,
  `class_type` varchar(255) DEFAULT NULL,
  `class_no` varchar(255) DEFAULT NULL,
  `stu_number` varchar(255) DEFAULT NULL,
  `class_test_no` varchar(255) DEFAULT NULL,
  `test_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testctrl
-- ----------------------------
INSERT INTO `testctrl` VALUES ('30', '280', '0', '28', '28', '0', '已关闭');

-- ----------------------------
-- Table structure for testinfo
-- ----------------------------
DROP TABLE IF EXISTS `testinfo`;
CREATE TABLE `testinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `q1` varchar(255) DEFAULT NULL,
  `q10` varchar(255) DEFAULT NULL,
  `q11` varchar(255) DEFAULT NULL,
  `q12` varchar(255) DEFAULT NULL,
  `q13` varchar(255) DEFAULT NULL,
  `q14` varchar(255) DEFAULT NULL,
  `q15` varchar(255) DEFAULT NULL,
  `q16` varchar(255) DEFAULT NULL,
  `q17` varchar(255) DEFAULT NULL,
  `q18` varchar(255) DEFAULT NULL,
  `q19` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q20` varchar(255) DEFAULT NULL,
  `q21` varchar(255) DEFAULT NULL,
  `q22` varchar(255) DEFAULT NULL,
  `q23` varchar(255) DEFAULT NULL,
  `q24` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `q5` varchar(255) DEFAULT NULL,
  `q6` varchar(255) DEFAULT NULL,
  `q7` varchar(255) DEFAULT NULL,
  `q8` varchar(255) DEFAULT NULL,
  `q9` varchar(255) DEFAULT NULL,
  `total_score` double DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `q25` varchar(255) DEFAULT NULL,
  `q26` varchar(255) DEFAULT NULL,
  `q27` varchar(255) DEFAULT NULL,
  `q28` varchar(255) DEFAULT NULL,
  `q29` varchar(255) DEFAULT NULL,
  `q30` varchar(255) DEFAULT NULL,
  `q31` varchar(255) DEFAULT NULL,
  `q32` varchar(255) DEFAULT NULL,
  `q33` varchar(255) DEFAULT NULL,
  `q34` varchar(255) DEFAULT NULL,
  `q35` varchar(255) DEFAULT NULL,
  `q36` varchar(255) DEFAULT NULL,
  `q37` varchar(255) DEFAULT NULL,
  `q38` varchar(255) DEFAULT NULL,
  `q39` varchar(255) DEFAULT NULL,
  `q40` varchar(255) DEFAULT NULL,
  `testid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testinfo
-- ----------------------------
INSERT INTO `testinfo` VALUES ('98', 'A', null, null, null, null, null, null, 'C', null, null, null, 'A', null, null, null, null, null, 'D', 'D', null, 'A', null, null, null, '5', '张三', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '280');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `testid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '123', 'admin', '000', '管理员', '000');
INSERT INTO `userinfo` VALUES ('129', '123', '张三', '280', '普通用户', '11');
