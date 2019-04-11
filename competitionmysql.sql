/*
Navicat MySQL Data Transfer

Source Server         : mysql true
Source Server Version : 80015
Source Host           : 39.96.33.166:3306
Source Database       : competition

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-11 15:44:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for game_apply
-- ----------------------------
DROP TABLE IF EXISTS `game_apply`;
CREATE TABLE `game_apply` (
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
  `hold` varchar(100) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `user_guid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_company
-- ----------------------------
DROP TABLE IF EXISTS `game_company`;
CREATE TABLE `game_company` (
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
  `company_guid` varchar(100) DEFAULT NULL,
  `game_guid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_group
-- ----------------------------
DROP TABLE IF EXISTS `game_group`;
CREATE TABLE `game_group` (
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
  `game_guid` varchar(100) DEFAULT NULL,
  `leader_guid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `game_info_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt49skt09rwac9jl8tf68eksys` (`game_info_id`),
  CONSTRAINT `FKt49skt09rwac9jl8tf68eksys` FOREIGN KEY (`game_info_id`) REFERENCES `game_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_group_apply
-- ----------------------------
DROP TABLE IF EXISTS `game_group_apply`;
CREATE TABLE `game_group_apply` (
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
  `game_guid` varchar(100) NOT NULL,
  `group_guid` varchar(100) NOT NULL,
  `user_guid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_info
-- ----------------------------
DROP TABLE IF EXISTS `game_info`;
CREATE TABLE `game_info` (
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
  `banner` varchar(100) DEFAULT NULL,
  `brief` text,
  `faq` text,
  `game_check` int(11) NOT NULL DEFAULT '0',
  `game_power` int(11) NOT NULL DEFAULT '0',
  `hand_guide` text,
  `hold` varchar(200) DEFAULT NULL,
  `if_next` int(11) NOT NULL DEFAULT '0',
  `join_group_num` int(11) NOT NULL DEFAULT '0',
  `limit_group_num` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(100) DEFAULT NULL,
  `money` varchar(100) DEFAULT NULL,
  `money_text` text,
  `register_begin_date` datetime DEFAULT NULL,
  `register_end_date` datetime DEFAULT NULL,
  `reward_type` int(11) NOT NULL DEFAULT '0',
  `schedule` text,
  `score_stand` text,
  `season_guid` varchar(100) DEFAULT NULL,
  `season_name` varchar(100) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `subject` text,
  `submit_num` int(11) NOT NULL DEFAULT '0',
  `summary` text,
  `tags` varchar(200) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `type_guid` varchar(100) DEFAULT NULL,
  `user_guid` varchar(100) NOT NULL,
  `data_discrib` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_player
-- ----------------------------
DROP TABLE IF EXISTS `game_player`;
CREATE TABLE `game_player` (
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
  `game_guid` varchar(100) DEFAULT NULL,
  `group_guid` varchar(100) DEFAULT NULL,
  `if_group` int(11) NOT NULL DEFAULT '0',
  `if_leader` int(11) NOT NULL DEFAULT '0',
  `user_guid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_record
-- ----------------------------
DROP TABLE IF EXISTS `game_record`;
CREATE TABLE `game_record` (
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
  `code_language` int(11) NOT NULL DEFAULT '0',
  `file_guid` varchar(100) DEFAULT NULL,
  `game_guid` varchar(100) DEFAULT NULL,
  `group_guid` varchar(100) DEFAULT NULL,
  `max_date` datetime DEFAULT NULL,
  `order_flag` int(11) DEFAULT NULL,
  `project_guid` varchar(100) DEFAULT NULL,
  `project_version_guid` varchar(100) DEFAULT NULL,
  `score_status` int(11) NOT NULL DEFAULT '0',
  `season_guid` varchar(100) DEFAULT NULL,
  `season_judge_time` datetime DEFAULT NULL,
  `season_record_type` int(11) NOT NULL DEFAULT '0',
  `submit_type` int(11) NOT NULL DEFAULT '0',
  `unit_order` int(11) DEFAULT NULL,
  `unit_order_change` int(11) DEFAULT NULL,
  `unit_order_old` int(11) DEFAULT NULL,
  `unit_score` double DEFAULT NULL,
  `unit_score1` double DEFAULT NULL,
  `unit_score2` double DEFAULT NULL,
  `unit_score3` double DEFAULT NULL,
  `unit_score4` double DEFAULT NULL,
  `unit_score5` double DEFAULT NULL,
  `unit_score6` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_score
-- ----------------------------
DROP TABLE IF EXISTS `game_score`;
CREATE TABLE `game_score` (
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
  `game_guid` varchar(100) DEFAULT NULL,
  `group_guid` varchar(100) DEFAULT NULL,
  `max_date` datetime DEFAULT NULL,
  `order_flag` int(11) DEFAULT NULL,
  `season_guid` varchar(100) DEFAULT NULL,
  `unit_order` int(11) DEFAULT NULL,
  `unit_order_change` int(11) DEFAULT NULL,
  `unit_order_old` int(11) DEFAULT NULL,
  `unit_score` double DEFAULT NULL,
  `unit_score1` double DEFAULT NULL,
  `unit_score2` double DEFAULT NULL,
  `unit_score3` double DEFAULT NULL,
  `unit_score4` double DEFAULT NULL,
  `unit_score5` double DEFAULT NULL,
  `unit_score6` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_season
-- ----------------------------
DROP TABLE IF EXISTS `game_season`;
CREATE TABLE `game_season` (
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
  `begin_date` datetime DEFAULT NULL,
  `data_guid` varchar(500) NOT NULL,
  `discrib` text,
  `down_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `game_guid` varchar(100) DEFAULT NULL,
  `judge_script1` varchar(100) DEFAULT NULL,
  `judge_script2` varchar(100) DEFAULT NULL,
  `judge_script3` varchar(100) DEFAULT NULL,
  `judge_script4` varchar(100) DEFAULT NULL,
  `judge_script5` varchar(100) DEFAULT NULL,
  `judge_script6` varchar(100) DEFAULT NULL,
  `judge_time1` datetime DEFAULT NULL,
  `judge_time2` datetime DEFAULT NULL,
  `judge_time3` datetime DEFAULT NULL,
  `judge_times` varchar(500) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `order_type` int(11) NOT NULL DEFAULT '1',
  `record_percent` int(11) NOT NULL DEFAULT '0',
  `record_remark` varchar(500) NOT NULL,
  `record_result` int(11) NOT NULL DEFAULT '0',
  `record_times` int(11) NOT NULL DEFAULT '0',
  `record_type` int(11) NOT NULL DEFAULT '0',
  `right_answer` varchar(200) DEFAULT NULL,
  `simple` varchar(30) DEFAULT NULL,
  `submit_num` int(11) NOT NULL DEFAULT '0',
  `test_file_type` int(11) NOT NULL DEFAULT '0',
  `test_html` text,
  `test_type` int(11) NOT NULL DEFAULT '0',
  `game_info_id` bigint(20) DEFAULT NULL,
  `data_discrib` text,
  PRIMARY KEY (`id`),
  KEY `FKksd2yknxhoubg5ix4qcken9jg` (`game_info_id`),
  CONSTRAINT `FKksd2yknxhoubg5ix4qcken9jg` FOREIGN KEY (`game_info_id`) REFERENCES `game_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_season_group
-- ----------------------------
DROP TABLE IF EXISTS `game_season_group`;
CREATE TABLE `game_season_group` (
  `season_id` bigint(20) NOT NULL,
  `season_group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`season_id`,`season_group_id`),
  KEY `FKl0ni5su674gyvw1n8r3e6udg7` (`season_group_id`),
  CONSTRAINT `FKl0ni5su674gyvw1n8r3e6udg7` FOREIGN KEY (`season_group_id`) REFERENCES `game_group` (`id`),
  CONSTRAINT `FKple5yxh2ffb3nbsuumm8xqgu7` FOREIGN KEY (`season_id`) REFERENCES `game_season` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for game_unit
-- ----------------------------
DROP TABLE IF EXISTS `game_unit`;
CREATE TABLE `game_unit` (
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
  `game_guid` varchar(100) DEFAULT NULL,
  `group_guid` varchar(100) DEFAULT NULL,
  `if_group` int(11) NOT NULL DEFAULT '0',
  `if_submit` int(11) NOT NULL DEFAULT '0',
  `last_rank` int(11) NOT NULL DEFAULT '0',
  `user_guid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_log
-- ----------------------------
DROP TABLE IF EXISTS `task_log`;
CREATE TABLE `task_log` (
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
  `category` int(11) NOT NULL DEFAULT '0',
  `input` text,
  `now_page` int(11) NOT NULL DEFAULT '1',
  `output` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `record300` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `record_guid` varchar(100) DEFAULT NULL,
  `record_time` datetime DEFAULT NULL,
  `result` int(11) NOT NULL DEFAULT '0',
  `run_time` datetime DEFAULT NULL,
  `total_num` int(11) NOT NULL DEFAULT '0',
  `use_times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=660 DEFAULT CHARSET=utf8;
