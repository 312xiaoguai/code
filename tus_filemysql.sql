/*
Navicat MySQL Data Transfer

Source Server         : mysql true
Source Server Version : 80015
Source Host           : 39.96.33.166:3306
Source Database       : tusfile

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-11 15:41:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tus_file
-- ----------------------------
DROP TABLE IF EXISTS `tus_file`;
CREATE TABLE `tus_file` (
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
  `copy_flag` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `is_completed` bit(1) DEFAULT NULL,
  `map_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `original_name` varchar(100) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `preview` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ready` int(11) DEFAULT NULL,
  `reload_preview` int(11) DEFAULT NULL,
  `tus_row` bigint(20) DEFAULT NULL,
  `tus_schema` text,
  `type` varchar(255) DEFAULT NULL,
  `upload_offset` bigint(20) DEFAULT NULL,
  `upload_size` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=391 DEFAULT CHARSET=utf8;
