/*
Navicat MySQL Data Transfer

Source Server         : 203.195.219.213_3306
Source Server Version : 50725
Source Host           : 203.195.219.213:3306
Source Database       : sms

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-05-05 19:50:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for c_course
-- ----------------------------
DROP TABLE IF EXISTS `c_course`;
CREATE TABLE `c_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `c_course_user_id_idx` (`teacher_id`),
  CONSTRAINT `c_course_user_id` FOREIGN KEY (`teacher_id`) REFERENCES `c_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_course
-- ----------------------------
INSERT INTO `c_course` VALUES ('1', 'mysql', 'mysql用来数据存取', '2', '2');
INSERT INTO `c_course` VALUES ('2', 'oracle', 'oracle', '5', '1');
INSERT INTO `c_course` VALUES ('3', 'java思想', 'java编程', '4.5', '5');

-- ----------------------------
-- Table structure for c_student_course
-- ----------------------------
DROP TABLE IF EXISTS `c_student_course`;
CREATE TABLE `c_student_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `choose_time` varchar(45) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `c_sc_student_id_idx` (`student_id`),
  KEY `c_sc_course_id_idx` (`course_id`),
  CONSTRAINT `c_sc_course_id` FOREIGN KEY (`course_id`) REFERENCES `c_course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `c_sc_student_id` FOREIGN KEY (`student_id`) REFERENCES `c_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_student_course
-- ----------------------------
INSERT INTO `c_student_course` VALUES ('1', '2019-05-04 17:18:19', '4', '4', '1');
INSERT INTO `c_student_course` VALUES ('2', '2019-05-04 17:20:47', '4', '3', '2');

-- ----------------------------
-- Table structure for c_user
-- ----------------------------
DROP TABLE IF EXISTS `c_user`;
CREATE TABLE `c_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `realname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_user
-- ----------------------------
INSERT INTO `c_user` VALUES ('1', '张凯', '男', 'briup', '123456', '老师', '正常');
INSERT INTO `c_user` VALUES ('2', '吴建国', '男', 'briup2', '123456', '老师', '正常');
INSERT INTO `c_user` VALUES ('3', '迪丽热巴', '女', 'briup', '123456', '学生', '正常');
INSERT INTO `c_user` VALUES ('4', '刘鑫宇', '男', 'briup', '13456', '学生', '迷离');
INSERT INTO `c_user` VALUES ('5', '江疏影', '女', 'briup', '123456', '老师', '正常');
INSERT INTO `c_user` VALUES ('6', '老周', '女', 'briup', '12122', '老师', '正常');
INSERT INTO `c_user` VALUES ('7', '鲁子源', '男', 'l', 'l', '学生', '正常');
INSERT INTO `c_user` VALUES ('8', '教练', '男', '123', '1234', '学生', '正常');
INSERT INTO `c_user` VALUES ('9', '教练2', '男', '教练', '111111', '教师', '正常');
INSERT INTO `c_user` VALUES ('10', '教练3', '男', '1111', '11111', '教师', '正常');

-- ----------------------------
-- Table structure for tbl_phone
-- ----------------------------
DROP TABLE IF EXISTS `tbl_phone`;
CREATE TABLE `tbl_phone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `saies` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_phone
-- ----------------------------
INSERT INTO `tbl_phone` VALUES ('1', '张三', '152', '先学习', '1');
INSERT INTO `tbl_phone` VALUES ('2', '张三', '152', '先学习', '1');
