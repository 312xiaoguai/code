/*
Navicat MySQL Data Transfer

Source Server         : mysql true
Source Server Version : 80015
Source Host           : 39.96.33.166:3306
Source Database       : community

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-11 15:43:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `create_uid` varchar(255) DEFAULT NULL,
  `ent_domain_id` varchar(255) DEFAULT NULL,
  `ent_id` bigint(20) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `now_status` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_uid` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `is_read` int(11) DEFAULT NULL,
  `originator_guid` varchar(255) DEFAULT NULL,
  `recipient_guid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `create_uid` varchar(255) DEFAULT NULL,
  `ent_domain_id` varchar(255) DEFAULT NULL,
  `ent_id` bigint(20) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `now_status` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_uid` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `category_guid` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `is_read` int(11) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `source_guid` varchar(255) DEFAULT NULL,
  `target_guid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `create_uid` varchar(255) DEFAULT NULL,
  `ent_domain_id` varchar(255) DEFAULT NULL,
  `ent_id` bigint(20) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `now_status` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_uid` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `create_uid` varchar(255) DEFAULT NULL,
  `ent_domain_id` varchar(255) DEFAULT NULL,
  `ent_id` bigint(20) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `now_status` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_uid` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `member_guid` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK653lh98w5hv6139pt9s7ejyr8` (`parent_id`),
  KEY `FKgf3tac9fa0n9vf62c7eh5eb4y` (`topic_id`),
  CONSTRAINT `FK653lh98w5hv6139pt9s7ejyr8` FOREIGN KEY (`parent_id`) REFERENCES `reply` (`id`),
  CONSTRAINT `FKgf3tac9fa0n9vf62c7eh5eb4y` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `create_uid` varchar(255) DEFAULT NULL,
  `ent_domain_id` varchar(255) DEFAULT NULL,
  `ent_id` bigint(20) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `now_status` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_uid` varchar(255) DEFAULT NULL,
  `belonging` varchar(255) DEFAULT NULL,
  `hidden` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7qmvvbjehhppyl7shle3qeli1` (`parent_id`),
  CONSTRAINT `FK7qmvvbjehhppyl7shle3qeli1` FOREIGN KEY (`parent_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tag_topic
-- ----------------------------
DROP TABLE IF EXISTS `tag_topic`;
CREATE TABLE `tag_topic` (
  `topic_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`tag_id`,`topic_id`),
  KEY `FKhaobfcrolcb49sd6muubo6e82` (`topic_id`),
  CONSTRAINT `FKhaobfcrolcb49sd6muubo6e82` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`),
  CONSTRAINT `FKovo9g3c8a7fioc36eve5ktg4l` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `create_uid` varchar(255) DEFAULT NULL,
  `ent_domain_id` varchar(255) DEFAULT NULL,
  `ent_id` bigint(20) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `now_status` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_uid` varchar(255) DEFAULT NULL,
  `author_guid` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `browse` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text,
  `parent_id` bigint(20) DEFAULT NULL,
  `portrait` varchar(255) DEFAULT NULL,
  `praise` bigint(20) DEFAULT NULL,
  `reply` bigint(20) DEFAULT NULL,
  `stick` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
