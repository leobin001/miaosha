/*
Navicat MySQL Data Transfer

Source Server         : apache本地
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : miaosha

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-08-23 19:45:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for miaosha_user
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_user`;
CREATE TABLE `miaosha_user` (
  `id` bigint(20) NOT NULL COMMENT '用户ID，手机号码',
  `nickname` varchar(255) NOT NULL,
  `password` varchar(32) DEFAULT NULL COMMENT 'MD5(MD5(pass明文+固定salt) + salt)',
  `salt` varchar(10) DEFAULT NULL,
  `head` varchar(128) DEFAULT NULL COMMENT '头像，云存储的ID',
  `register_date` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login_date` datetime DEFAULT NULL COMMENT '上次登录时间',
  `login_count` int(11) DEFAULT '0' COMMENT '登录次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of miaosha_user
-- ----------------------------
INSERT INTO `miaosha_user` VALUES ('18912341234', 'Joshua', 'b7797cce01b4b131b433b6acf4add449', '1a2b3c4d', null, '2019-08-23 19:33:30', '2019-08-23 19:33:33', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Leo');
