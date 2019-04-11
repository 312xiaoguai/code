/*
Navicat MySQL Data Transfer

Source Server         : mysql true
Source Server Version : 80015
Source Host           : 39.96.33.166:3306
Source Database       : training

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-11 16:02:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kc_data
-- ----------------------------
DROP TABLE IF EXISTS `kc_data`;
CREATE TABLE `kc_data` (
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
  `author` varchar(100) NOT NULL,
  `data_browse` int(11) NOT NULL DEFAULT '0',
  `data_comment` int(11) NOT NULL DEFAULT '0',
  `data_discrib` varchar(500) NOT NULL,
  `data_guid` varchar(255) DEFAULT NULL,
  `data_image` varchar(500) NOT NULL,
  `data_name` varchar(200) NOT NULL,
  `data_power` int(11) NOT NULL DEFAULT '0',
  `data_praise` int(11) NOT NULL DEFAULT '0',
  `data_quote` int(11) NOT NULL DEFAULT '0',
  `data_url` varchar(100) NOT NULL,
  `online` int(11) NOT NULL DEFAULT '0',
  `summary` text,
  `user_guid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_data_collection
-- ----------------------------
DROP TABLE IF EXISTS `kc_data_collection`;
CREATE TABLE `kc_data_collection` (
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
  `data_guid` varchar(255) DEFAULT NULL,
  `user_guid` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `data_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjk7t7ah0bamagwivjgiqwjcxi` (`data_id`),
  CONSTRAINT `FKjk7t7ah0bamagwivjgiqwjcxi` FOREIGN KEY (`data_id`) REFERENCES `kc_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_data_comment
-- ----------------------------
DROP TABLE IF EXISTS `kc_data_comment`;
CREATE TABLE `kc_data_comment` (
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
  `content` text,
  `user_id` bigint(20) DEFAULT NULL,
  `data_id` bigint(20) DEFAULT NULL,
  `reply_to_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKabidthludmsqajkob6yehdb24` (`data_id`),
  KEY `FKb3l5kev3e7d5f2w389dt1ethu` (`reply_to_id`),
  CONSTRAINT `FKabidthludmsqajkob6yehdb24` FOREIGN KEY (`data_id`) REFERENCES `kc_data` (`id`),
  CONSTRAINT `FKb3l5kev3e7d5f2w389dt1ethu` FOREIGN KEY (`reply_to_id`) REFERENCES `kc_data_comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_data_file
-- ----------------------------
DROP TABLE IF EXISTS `kc_data_file`;
CREATE TABLE `kc_data_file` (
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
  `copy_flag` int(11) NOT NULL DEFAULT '0',
  `data_guid` varchar(100) NOT NULL,
  `file_discrib` varchar(500) DEFAULT NULL,
  `file_guid` varchar(100) NOT NULL,
  `data_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3c1kskajpyrntph8yp9emx07g` (`data_id`),
  CONSTRAINT `FK3c1kskajpyrntph8yp9emx07g` FOREIGN KEY (`data_id`) REFERENCES `kc_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_data_praise
-- ----------------------------
DROP TABLE IF EXISTS `kc_data_praise`;
CREATE TABLE `kc_data_praise` (
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
  `data_guid` varchar(255) DEFAULT NULL,
  `user_guid` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `data_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp0tsgvifk818y1r54n1x7ein5` (`data_id`),
  CONSTRAINT `FKp0tsgvifk818y1r54n1x7ein5` FOREIGN KEY (`data_id`) REFERENCES `kc_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_environment
-- ----------------------------
DROP TABLE IF EXISTS `kc_environment`;
CREATE TABLE `kc_environment` (
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
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project
-- ----------------------------
DROP TABLE IF EXISTS `kc_project`;
CREATE TABLE `kc_project` (
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
  `author` varchar(100) NOT NULL,
  `browse` int(11) DEFAULT NULL,
  `collection` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  `file_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `forks` int(11) DEFAULT NULL,
  `game_guid` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `limit_core` double DEFAULT NULL,
  `limit_gpu` double DEFAULT NULL,
  `limit_memory` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `online` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `praise` int(11) DEFAULT NULL,
  `season_guid` varchar(100) DEFAULT NULL,
  `environment_id` bigint(20) DEFAULT NULL,
  `fork_source_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK69y3q4v247ip4bbekhkmxp2b8` (`environment_id`),
  KEY `FKp4n36kslpaw2h479x42agxkbr` (`fork_source_id`),
  CONSTRAINT `FK69y3q4v247ip4bbekhkmxp2b8` FOREIGN KEY (`environment_id`) REFERENCES `kc_environment` (`id`),
  CONSTRAINT `FKp4n36kslpaw2h479x42agxkbr` FOREIGN KEY (`fork_source_id`) REFERENCES `kc_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_collection
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_collection`;
CREATE TABLE `kc_project_collection` (
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
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmiylq8p4la7jij44alig3kb95` (`project_id`),
  CONSTRAINT `FKmiylq8p4la7jij44alig3kb95` FOREIGN KEY (`project_id`) REFERENCES `kc_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_comment
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_comment`;
CREATE TABLE `kc_project_comment` (
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
  `content` text,
  `user_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `reply_to_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl07weid756ula8obxrwnqgy2h` (`project_id`),
  KEY `FK78pm0lpvo43ajthi6ytku6arw` (`reply_to_id`),
  CONSTRAINT `FK78pm0lpvo43ajthi6ytku6arw` FOREIGN KEY (`reply_to_id`) REFERENCES `kc_project_comment` (`id`),
  CONSTRAINT `FKl07weid756ula8obxrwnqgy2h` FOREIGN KEY (`project_id`) REFERENCES `kc_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_data
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_data`;
CREATE TABLE `kc_project_data` (
  `project_id` bigint(20) NOT NULL,
  `data_id` bigint(20) NOT NULL,
  PRIMARY KEY (`project_id`,`data_id`),
  KEY `FK4y538p85dwdck61kjhrsb6tp2` (`data_id`),
  CONSTRAINT `FK4y538p85dwdck61kjhrsb6tp2` FOREIGN KEY (`data_id`) REFERENCES `kc_data` (`id`),
  CONSTRAINT `FKiw1wvykwootb3o07hyj5sisg` FOREIGN KEY (`project_id`) REFERENCES `kc_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_file
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_file`;
CREATE TABLE `kc_project_file` (
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
  `file_discrib` varchar(255) DEFAULT NULL,
  `file_name` varchar(500) NOT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `file_url` varchar(200) NOT NULL,
  `project_guid` varchar(255) DEFAULT NULL,
  `user_guid` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc07yp7cgxju9cafbwwpaywicl` (`project_id`),
  CONSTRAINT `FKc07yp7cgxju9cafbwwpaywicl` FOREIGN KEY (`project_id`) REFERENCES `kc_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_label
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_label`;
CREATE TABLE `kc_project_label` (
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
  `label_code` varchar(100) DEFAULT NULL,
  `label_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_label_relation
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_label_relation`;
CREATE TABLE `kc_project_label_relation` (
  `project_id` bigint(20) NOT NULL,
  `project_lable_id` bigint(20) NOT NULL,
  PRIMARY KEY (`project_id`,`project_lable_id`),
  KEY `FK5h4txjv1l9v07a0shqw04s3kq` (`project_lable_id`),
  CONSTRAINT `FK5h4txjv1l9v07a0shqw04s3kq` FOREIGN KEY (`project_lable_id`) REFERENCES `kc_project_label` (`id`),
  CONSTRAINT `FKsoom0r6nxc23a0efuvhopd6p2` FOREIGN KEY (`project_id`) REFERENCES `kc_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_praise
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_praise`;
CREATE TABLE `kc_project_praise` (
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
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa5r2hbmnm5ktlxmrpje2350up` (`project_id`),
  CONSTRAINT `FKa5r2hbmnm5ktlxmrpje2350up` FOREIGN KEY (`project_id`) REFERENCES `kc_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_run
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_run`;
CREATE TABLE `kc_project_run` (
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
  `add_time` int(11) NOT NULL DEFAULT '0',
  `configuration_guid` varchar(100) NOT NULL,
  `project_guid` varchar(100) NOT NULL,
  `run_guid` varchar(100) DEFAULT NULL,
  `time_limit` int(11) NOT NULL DEFAULT '120',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_version
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_version`;
CREATE TABLE `kc_project_version` (
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
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_guid` varchar(255) DEFAULT NULL,
  `output` varchar(100) DEFAULT NULL,
  `output_path` varchar(100) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqt02k79cy0qbwnnpo5duauh1t` (`project_id`),
  CONSTRAINT `FKqt02k79cy0qbwnnpo5duauh1t` FOREIGN KEY (`project_id`) REFERENCES `kc_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_project_version_output
-- ----------------------------
DROP TABLE IF EXISTS `kc_project_version_output`;
CREATE TABLE `kc_project_version_output` (
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
  `file_name` varchar(200) DEFAULT NULL,
  `file_path` varchar(500) DEFAULT NULL,
  `file_type` varchar(200) DEFAULT NULL,
  `file_zip` varchar(100) DEFAULT NULL,
  `project_guid` varchar(100) DEFAULT NULL,
  `user_guid` varchar(100) DEFAULT NULL,
  `version_guid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_server_configuration
-- ----------------------------
DROP TABLE IF EXISTS `kc_server_configuration`;
CREATE TABLE `kc_server_configuration` (
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
  `core` double NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  `gpu` double NOT NULL,
  `image_version` varchar(200) DEFAULT NULL,
  `memory` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `project_type` int(11) NOT NULL,
  `time_limit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kc_snippet
-- ----------------------------
DROP TABLE IF EXISTS `kc_snippet`;
CREATE TABLE `kc_snippet` (
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
  `code_comment` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `data_code` varchar(100) DEFAULT NULL,
  `data_name` varchar(100) NOT NULL,
  `if_common` int(11) NOT NULL DEFAULT '0',
  `user_guid` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `language` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt1hee6a0besknxfcsm6iemg4q` (`language`),
  KEY `FKbckswaik3ntna3kws9ph6thcq` (`parent_id`),
  CONSTRAINT `FKbckswaik3ntna3kws9ph6thcq` FOREIGN KEY (`parent_id`) REFERENCES `kc_snippet` (`id`),
  CONSTRAINT `FKt1hee6a0besknxfcsm6iemg4q` FOREIGN KEY (`language`) REFERENCES `kc_environment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=utf8;
