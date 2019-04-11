/*
Navicat MySQL Data Transfer

Source Server         : mysql true
Source Server Version : 80015
Source Host           : 39.96.33.166:3306
Source Database       : management

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-11 14:30:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
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
  `company_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shortname` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgsxt4pb7gewmc5v44h53lu1bn` (`parent_id`),
  CONSTRAINT `FKgsxt4pb7gewmc5v44h53lu1bn` FOREIGN KEY (`parent_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '2019-03-27 18:49:54', null, '5a9cb536224da75e5634d4e3', '1', 'cac8690e074840458f47d6ec16763ecc', '0', '1', '1', '2019-03-27 18:53:34', null, '1', '华为总公司', '华为总', null);
INSERT INTO `company` VALUES ('2', '2019-04-02 13:31:56', null, '5a9cb536224da75e5634d4e4', '2', 'cac8690e074840458f47d6ec16763ec1', '0', '1', '1', '2019-04-02 13:34:02', null, '2', '华为北京公司', '华北京', '1');
INSERT INTO `company` VALUES ('3', '2019-04-02 13:34:52', null, '5a9cb536224da75e5634d4e5', '3', 'cac8690e074840458f47d6ec16763ec2', '0', '1', '1', '2019-04-02 13:35:15', null, '3', '华为上海公司', '华上海', '1');
INSERT INTO `company` VALUES ('4', '2019-04-02 13:36:08', null, '5a9cb536224da75e5634d4e6', '4', 'cac8690e074840458f47d6ec16763ec3', '0', '1', '1', '2019-04-02 13:36:29', null, '4', '北京研究所', '北研', '2');
INSERT INTO `company` VALUES ('5', '2019-04-02 13:37:12', null, '5a9cb536224da75e5634d4e7', '5', 'cac8690e074840458f47d6ec16763ec4', '0', '1', '1', '2019-04-02 13:37:38', null, '5', '北京芯片', '北芯', '2');
INSERT INTO `company` VALUES ('6', '2019-04-02 13:38:32', null, '5a9cb536224da75e5634d4e8', '6', 'cac8690e074840458f47d6ec16763ec5', '0', '1', '1', '2019-04-02 13:38:51', null, '6', '上海手机', 'sh手机', '3');
INSERT INTO `company` VALUES ('7', '2019-04-02 13:39:24', null, '5a9cb536224da75e5634d4e9', '7', 'cac8690e074840458f47d6ec16763ec6', '0', '1', '1', '2019-04-02 13:39:43', null, '7', '上海PC', 'sh电脑', '3');

-- ----------------------------
-- Table structure for dictionary_node
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_node`;
CREATE TABLE `dictionary_node` (
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
  `lv` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `supplement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcfljg0hqwy57ueebuipb9vdjb` (`parent_id`),
  CONSTRAINT `FKcfljg0hqwy57ueebuipb9vdjb` FOREIGN KEY (`parent_id`) REFERENCES `dictionary_node` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary_node
-- ----------------------------
INSERT INTO `dictionary_node` VALUES ('3', '2019-04-01 04:02:20', null, '5a9cb536224da75e5634d4e3', null, 'd0d96da60a564ebd8248bedef4dce225', '0', '0', null, null, null, '1', '根节点', '', null, '');

-- ----------------------------
-- Table structure for permission_action
-- ----------------------------
DROP TABLE IF EXISTS `permission_action`;
CREATE TABLE `permission_action` (
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
  `permission` varchar(255) DEFAULT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_action
-- ----------------------------
INSERT INTO `permission_action` VALUES ('1', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, 'ca6315a15e984760b83997b7eee53f95', '0', '0', null, null, null, 'action_change_password', '修改密码');
INSERT INTO `permission_action` VALUES ('2', '2019-03-28 10:50:49', null, '5a9cb536224da75e5634d4e3', null, '4b863d4c93ad4364b7a237a70088f715', '0', '0', null, null, null, 'train_admin', '实训系统管理员');
INSERT INTO `permission_action` VALUES ('3', '2019-03-28 10:51:04', null, '5a9cb536224da75e5634d4e3', null, '5aeee6fdeefb4263be3f1c6f1387de84', '0', '0', null, null, null, 'All_Admin', '全系统超级管理员');
INSERT INTO `permission_action` VALUES ('4', '2019-03-29 13:31:54', null, '5a9cb536224da75e5634d4e3', null, '29d7269656794dca80885124eb4dfa49', '0', '0', null, null, null, 'competition_admin', '大赛申请管理员');

-- ----------------------------
-- Table structure for permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `permission_menu`;
CREATE TABLE `permission_menu` (
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
  `hidden` tinyint(1) DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `leaf` tinyint(1) DEFAULT '1',
  `level` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkrg79n3yylsx508wkw8r82f6u` (`parent_id`),
  CONSTRAINT `FKkrg79n3yylsx508wkw8r82f6u` FOREIGN KEY (`parent_id`) REFERENCES `permission_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_menu
-- ----------------------------
INSERT INTO `permission_menu` VALUES ('1', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, '5eb502a8f5724f9d8facf668c1ae8c42', '0', '0', null, null, null, '0', 'iconfont icon-jingsai', '0', '0', '大赛系统', '/test', '20', '/Layout.vue', null);
INSERT INTO `permission_menu` VALUES ('2', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, 'e78e263c4dd74c4da35017941c8031cb', '0', '0', null, null, null, '0', 'iconfont icon-zhishijingsai', '1', '1', '赛事列表', '/competition/list', '20', '/competition/list.vue', '1');
INSERT INTO `permission_menu` VALUES ('3', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, '5cbf7705403e4a2bb920fe85fb2929c0', '0', '0', null, null, null, '0', 'iconfont icon-SysManagement', '0', '0', '系统管理', '/system/', '200', '/Layout.vue', null);
INSERT INTO `permission_menu` VALUES ('4', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, '2e81d68c31474a1fa893e50959df3093', '0', '0', null, null, null, '0', 'iconfont icon-shaixuan', '1', '1', '菜单', '/system/menus', '40', '/system/Menu.vue', '3');
INSERT INTO `permission_menu` VALUES ('5', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, '2990e0aba03b4aa180cf0ce29a9d101b', '0', '0', null, null, null, '0', 'el-icon-menu', '1', '0', '首页', '/Layout', '0', '/Layout.vue', null);
INSERT INTO `permission_menu` VALUES ('6', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, 'cf56f97730084a67959209e408eb2588', '0', '0', null, null, null, '0', 'el-icon-document', '0', '1', '~', '/home', '90', '/Index.vue', '5');
INSERT INTO `permission_menu` VALUES ('7', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, '545a34d905914fdc99252f0271f09ee6', '0', '0', null, null, null, '0', 'iconfont icon-quanxian', '1', '1', '权限', '/system/permission', '30', '/system/Permission.vue', '3');
INSERT INTO `permission_menu` VALUES ('8', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, '4f8269f624a64b1ea02bd72673bff016', '0', '0', null, null, null, '0', 'iconfont icon-guanliyuan', '1', '1', '管路员', '/system/operators', '10', '/system/Operator.vue', '3');
INSERT INTO `permission_menu` VALUES ('9', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, 'd9b813a084bf4ddd86caee1ab19a9250', '0', '0', null, null, null, '0', 'iconfont icon-jiaose', '1', '1', '角色', '/system/roles', '20', '/system/Role.vue', '3');
INSERT INTO `permission_menu` VALUES ('10', '2019-03-27 18:55:55', null, '5a9cb536224da75e5634d4e3', null, '4b6b431383ea467ebab3832a0591fcff', '0', '0', null, null, null, '0', 'iconfont icon-shenqing', '1', '1', '赛事申请', '/competition/appy', '10', '/competition/apply.vue', '1');
INSERT INTO `permission_menu` VALUES ('11', '2019-03-28 10:16:15', null, '5a9cb536224da75e5634d4e3', null, '1078ca1a3d7f46ac84ca1d0b090a7360', '1', '0', null, null, null, '0', 'iconfont icon-renwu', '1', '1', '任务列表', '/competition/task', '30', '/competition/task.vue', '3');
INSERT INTO `permission_menu` VALUES ('12', '2019-03-28 10:17:38', null, '5a9cb536224da75e5634d4e3', null, '116bd817d68a466999ffcc6258d283d1', '0', '0', null, null, null, '0', 'iconfont icon-renwu', '1', '1', '任务列表', '/competition/task', '30', '/competition/task.vue', '1');
INSERT INTO `permission_menu` VALUES ('13', '2019-03-28 10:29:35', null, '5a9cb536224da75e5634d4e3', null, '44d42f06c9ed41bdaccab7e8c186f9fe', '0', '0', null, null, null, '0', 'iconfont icon-gongsi', '1', '1', '企业管理', '/system/company', '50', '/system/company.vue', '3');
INSERT INTO `permission_menu` VALUES ('14', '2019-03-28 10:30:02', null, '5a9cb536224da75e5634d4e3', null, 'a1e4ba72b3624dedb6a800cd40ee2091', '0', '0', null, null, null, '0', 'iconfont icon-ccgl-shujuzidian-6', '1', '1', '字典系统', '/system/dictionaries', '60', '/system/Dictionaries.vue', '3');
INSERT INTO `permission_menu` VALUES ('15', '2019-03-28 10:46:31', null, '5a9cb536224da75e5634d4e3', null, '01da28dc6bb24fbbb4cb6ecb2a85050e', '0', '0', null, null, null, '0', 'iconfont icon-tubiao_fuzhi-', '0', '0', '实训系统', '/test', '10', '/Layout.vue', null);
INSERT INTO `permission_menu` VALUES ('16', '2019-03-28 10:48:26', null, '5a9cb536224da75e5634d4e3', null, 'b26cfe8111d140459b558e3d6a23ec32', '0', '0', null, null, null, '0', 'iconfont icon-shujujiguanli', '1', '1', '数据集管理', '/train/database', '10', '/train/database.vue', '15');
INSERT INTO `permission_menu` VALUES ('17', '2019-03-28 10:48:55', null, '5a9cb536224da75e5634d4e3', null, '8beaa036078d425680f0fd4ba7ab67cb', '0', '0', null, null, null, '0', 'iconfont icon-xiangmuguanli', '1', '1', '项目管理', '/train/project', '20', '/train/project.vue', '15');
INSERT INTO `permission_menu` VALUES ('18', '2019-03-28 10:49:08', null, '5a9cb536224da75e5634d4e3', null, '7434eb9e5f5e43c18eebcd3b3d3d90ae', '0', '0', null, null, null, '0', 'iconfont icon-zidian', '1', '1', '环境配置管理', '/train/dictionary', '30', '/train/dictionary.vue', '15');
INSERT INTO `permission_menu` VALUES ('19', '2019-03-28 10:49:19', null, '5a9cb536224da75e5634d4e3', null, '36620cc43b5e4bad996dfb7916f5ae0e', '0', '0', null, null, null, '0', 'iconfont icon-rongqi', '1', '1', '容器列表', '/train/docker', '50', '/train/docker.vue', '15');
INSERT INTO `permission_menu` VALUES ('20', '2019-03-28 10:56:00', null, '5a9cb536224da75e5634d4e3', null, '1025ca117fb249d1be3a83a17e8c605a', '0', '0', null, null, null, '0', 'iconfont icon-community', '0', '0', '社区系统', '/community/', '150', '/Layout.vue', null);
INSERT INTO `permission_menu` VALUES ('21', '2019-03-28 10:59:24', null, '5a9cb536224da75e5634d4e3', null, '8452cc0b1a68485d90ede46be4597d38', '0', '0', null, null, null, '0', 'iconfont icon-xiaoxi', '1', '1', '消息管理', '/community/msg', '10', '/community/msg.vue', '20');
INSERT INTO `permission_menu` VALUES ('22', '2019-03-28 10:59:45', null, '5a9cb536224da75e5634d4e3', null, '6b7c50094c354f20b64f2a8f7c375a34', '0', '0', null, null, null, '0', 'iconfont icon-luntan', '1', '1', '论坛管理', '/community/setting', '20', '/community/setting.vue', '20');
INSERT INTO `permission_menu` VALUES ('23', '2019-03-28 11:00:28', null, '5a9cb536224da75e5634d4e3', null, 'b3b89a75d9954983ae78cc72c45d3117', '0', '0', null, null, null, '0', 'iconfont icon-wenjian', '0', '0', '文件系统', '/file/', '180', '/Layout.vue', null);
INSERT INTO `permission_menu` VALUES ('24', '2019-03-28 11:01:22', null, '5a9cb536224da75e5634d4e3', null, 'a8f86c9335b340279ec53900274e81f3', '0', '0', null, null, null, '0', 'iconfont icon-liebiao', '1', '1', '文件列表', '/file/list', '10', '/file/list.vue', '23');
INSERT INTO `permission_menu` VALUES ('25', '2019-03-28 11:02:03', null, '5a9cb536224da75e5634d4e3', null, '8c556d0f122c4b8da4842532f94cbdc9', '0', '0', null, null, null, '0', 'iconfont icon-ziyuan', '0', '0', '会员系统', '/member/', '190', '/Layout.vue', null);
INSERT INTO `permission_menu` VALUES ('26', '2019-03-28 11:02:49', null, '5a9cb536224da75e5634d4e3', null, '566c3e25276f4e45ba434b681173c87e', '0', '0', null, null, null, '0', 'iconfont icon-houxuanren', '1', '1', '会员列表', '/member/list', '10', '/member/list.vue', '25');

-- ----------------------------
-- Table structure for permission_operator
-- ----------------------------
DROP TABLE IF EXISTS `permission_operator`;
CREATE TABLE `permission_operator` (
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
  `account_non_locked` tinyint(1) DEFAULT '0',
  `department` varchar(255) DEFAULT NULL,
  `login_name` varchar(32) NOT NULL,
  `login_password` varchar(64) NOT NULL,
  `mobile` varchar(16) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `real_name` varchar(16) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_84701ixh61iqtqu2pvs9qcxg7` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_operator
-- ----------------------------
INSERT INTO `permission_operator` VALUES ('1', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, '42885066b1224f6887fae9d0f4f4b9c8', '0', '0', null, null, null, '1', null, 'admin', '$2a$10$xehSjA0B4dbis.Af/nBjY.NMVmDeLkOCZF1gqxpp4r2XLuyL9tGW.', '13901234567', null, '张三', null, null);
INSERT INTO `permission_operator` VALUES ('2', '2019-03-29 13:19:57', null, '5a9cb536224da75e5634d4e3', null, '99310ccdcfc0401abbb1e93d3dcc2ea6', '0', '0', null, null, null, '1', null, '13910609199', '$2a$10$fpFN6ANaZXYwE3X50DYJeur0z5YH1JRuKS8a/2PoxgmywflO6ZPgy', '13910609199', null, '13910609199', null, null);
INSERT INTO `permission_operator` VALUES ('3', '2019-03-29 13:27:42', null, '5a9cb536224da75e5634d4e3', null, '81887f3324974d8aa9adf83324bb558d', '0', '0', null, null, null, '1', null, '18311022386', '$2a$10$xWGAqvuakrKMWjIfYC07Sua4g1..qjg04x1Im46rNB5V6Vq99EvGC', '18311022386', null, '亓', null, null);
INSERT INTO `permission_operator` VALUES ('4', '2019-03-29 18:30:34', null, '5a9cb536224da75e5634d4e3', null, 'abc918ffa16640828155184bf891aff3', '0', '0', null, null, null, '1', null, 'test', '$2a$10$uKK2Qgj1IiBbVkg6IuVGDO/gQRvjDQPDnhi5u7SRZ4nT.kh7FUkUS', '13600000003', null, 'test', null, null);
INSERT INTO `permission_operator` VALUES ('5', '2019-04-10 10:44:22', null, '5a9cb536224da75e5634d4e3', null, '382acebd01134559bd3455dabc8e08b2', '0', '0', null, null, null, '1', null, '13000000010', '$2a$10$IGt09g9q2KuTGc2ZU/zUDOJFmnJWXEL5gt36XmYpbKM2jt1GnKwZK', '13000000010', null, '13000000010', null, null);
INSERT INTO `permission_operator` VALUES ('6', '2019-04-10 19:06:42', null, '5a9cb536224da75e5634d4e3', null, '379cb5e6520e400c853cd07218155b2b', '0', '0', null, null, null, '1', null, '13641009388', '$2a$10$scjHsTCkBMknKBx1n8Ewl.HNXpPkpIWVtcChbmaZE9lp1pbUsCtH2', '13641009388', null, '13641009388', null, null);
INSERT INTO `permission_operator` VALUES ('7', '2019-04-10 19:08:21', null, '5a9cb536224da75e5634d4e3', null, '8912ddc01d984cc799fd51e1e86a8c1c', '0', '0', null, null, null, '1', null, '13641009387', '$2a$10$sZqbLQqbaye336bxE66hJuLJclbQ1cM9R12vd4flUETLiBk/86wpu', '13641009387', null, '13641009387', null, null);
INSERT INTO `permission_operator` VALUES ('8', '2019-04-11 12:37:48', null, '5a9cb536224da75e5634d4e3', null, 'a14f9c0656a0484d88a4f4583f1f5e52', '0', '0', null, null, null, '1', null, '18311111111', '$2a$10$/4tjS9fb9I.Loele9F3Ese7c7n7DT9SNoC1ze7M2bNhi4CZVETzoi', '18311111111', null, '18311111111', null, null);
INSERT INTO `permission_operator` VALUES ('9', '2019-04-11 12:40:42', null, '5a9cb536224da75e5634d4e3', null, '5f83a4ba9de441ec9e8f152252b54a9f', '0', '0', null, null, null, '1', null, '18322222222', '$2a$10$4./JC/dqa2F6d15T/kNR0uuXzXMstMLmhesqmXWEtEToGai83mqqC', '18322222222', null, '18322222222', null, null);
INSERT INTO `permission_operator` VALUES ('10', '2019-04-11 13:27:23', null, '5a9cb536224da75e5634d4e3', null, '6f6bdceafaf14c3d833bd6c2aa6e5e90', '0', '0', null, null, null, '1', null, '13783439804', '$2a$10$Z7oI4BVbXl0oGjbO1uLJG.CHH2cFG81PlReodG94u5/Bj/BnKNcVO', '13783439804', null, '我爱红烧肉', null, null);

-- ----------------------------
-- Table structure for permission_operator_company
-- ----------------------------
DROP TABLE IF EXISTS `permission_operator_company`;
CREATE TABLE `permission_operator_company` (
  `company_id` bigint(20) NOT NULL,
  `operator_id` bigint(20) NOT NULL,
  PRIMARY KEY (`operator_id`,`company_id`),
  KEY `FK537mqeqoftnhrx19vmjoyg4fn` (`company_id`),
  CONSTRAINT `FK537mqeqoftnhrx19vmjoyg4fn` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKf8wyhs884qly688wax74npg0n` FOREIGN KEY (`operator_id`) REFERENCES `permission_operator` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_operator_company
-- ----------------------------
INSERT INTO `permission_operator_company` VALUES ('1', '1');
INSERT INTO `permission_operator_company` VALUES ('1', '5');
INSERT INTO `permission_operator_company` VALUES ('1', '8');
INSERT INTO `permission_operator_company` VALUES ('1', '9');
INSERT INTO `permission_operator_company` VALUES ('1', '10');

-- ----------------------------
-- Table structure for permission_operator_log
-- ----------------------------
DROP TABLE IF EXISTS `permission_operator_log`;
CREATE TABLE `permission_operator_log` (
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
  `ip` varchar(255) DEFAULT NULL,
  `operate_type` varchar(255) DEFAULT NULL,
  `operator_id` bigint(20) DEFAULT NULL,
  `operator_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_operator_log
-- ----------------------------

-- ----------------------------
-- Table structure for permission_operator_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_operator_role`;
CREATE TABLE `permission_operator_role` (
  `operator_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`operator_id`,`role_id`),
  KEY `FKho3jdy5m05gxbdn4ls5a6iy5e` (`role_id`),
  CONSTRAINT `FKg3oa67u6a85aecjihm2akj8bq` FOREIGN KEY (`operator_id`) REFERENCES `permission_operator` (`id`),
  CONSTRAINT `FKho3jdy5m05gxbdn4ls5a6iy5e` FOREIGN KEY (`role_id`) REFERENCES `permission_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_operator_role
-- ----------------------------
INSERT INTO `permission_operator_role` VALUES ('1', '1');
INSERT INTO `permission_operator_role` VALUES ('2', '9');
INSERT INTO `permission_operator_role` VALUES ('3', '9');
INSERT INTO `permission_operator_role` VALUES ('5', '9');
INSERT INTO `permission_operator_role` VALUES ('7', '9');
INSERT INTO `permission_operator_role` VALUES ('8', '9');
INSERT INTO `permission_operator_role` VALUES ('9', '9');
INSERT INTO `permission_operator_role` VALUES ('10', '9');

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
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
  `role` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '2019-03-27 17:55:23', null, '5a9cb536224da75e5634d4e3', null, '2d000b49d6bd4c51aad5cbf8a22f1b46', '0', '0', null, null, null, 'role_admin', '管理员');
INSERT INTO `permission_role` VALUES ('2', '2019-03-29 13:23:00', null, '5a9cb536224da75e5634d4e3', null, '5379604ca14a415f9e2aa4ba92cbfff3', '0', '0', null, null, null, 'demo1', 'demo1');
INSERT INTO `permission_role` VALUES ('3', '2019-03-29 13:23:05', null, '5a9cb536224da75e5634d4e3', null, 'f7aa10c8ac0b4d088b2b90097ef42328', '0', '0', null, null, null, 'demo2', 'demo2');
INSERT INTO `permission_role` VALUES ('4', '2019-03-29 13:23:28', null, '5a9cb536224da75e5634d4e3', null, 'a0d6027ca48a485480873a1ff5662af5', '0', '0', null, null, null, 'demo3', 'demo3');
INSERT INTO `permission_role` VALUES ('5', '2019-03-29 13:23:33', null, '5a9cb536224da75e5634d4e3', null, '3ff7e4fb777547b2843d8c0cdcd1451e', '0', '0', null, null, null, 'demo4', 'demo4');
INSERT INTO `permission_role` VALUES ('6', '2019-03-29 13:23:38', null, '5a9cb536224da75e5634d4e3', null, 'c15822bf46d3438ca124824b76083712', '0', '0', null, null, null, 'demo5', 'demo5');
INSERT INTO `permission_role` VALUES ('7', '2019-03-29 13:23:42', null, '5a9cb536224da75e5634d4e3', null, 'd2b349acecbe4b7383017a77a833b09a', '0', '0', null, null, null, 'demo6', 'demo6');
INSERT INTO `permission_role` VALUES ('8', '2019-03-29 13:23:46', null, '5a9cb536224da75e5634d4e3', null, 'bff6893466714667947837477fb4ce7d', '0', '0', null, null, null, 'demo7', 'demo7');
INSERT INTO `permission_role` VALUES ('9', '2019-03-29 13:23:51', null, '5a9cb536224da75e5634d4e3', null, 'c4805c2034a94032b133ec82a44b426f', '0', '0', null, null, null, 'demo8', 'demo8');
INSERT INTO `permission_role` VALUES ('10', '2019-03-29 13:23:58', null, '5a9cb536224da75e5634d4e3', null, 'cc9a4a8eb7b04d5db59b5736171681ca', '0', '0', null, null, null, 'demo9', 'demo9');

-- ----------------------------
-- Table structure for permission_role_action
-- ----------------------------
DROP TABLE IF EXISTS `permission_role_action`;
CREATE TABLE `permission_role_action` (
  `role_id` bigint(20) NOT NULL,
  `action_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`action_id`),
  KEY `FKj85ectdapiyaekryus56ovbbq` (`action_id`),
  CONSTRAINT `FKj85ectdapiyaekryus56ovbbq` FOREIGN KEY (`action_id`) REFERENCES `permission_action` (`id`),
  CONSTRAINT `FKsfleqksgu4apeim7j3s7vfcca` FOREIGN KEY (`role_id`) REFERENCES `permission_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_role_action
-- ----------------------------
INSERT INTO `permission_role_action` VALUES ('1', '1');
INSERT INTO `permission_role_action` VALUES ('1', '2');
INSERT INTO `permission_role_action` VALUES ('9', '2');
INSERT INTO `permission_role_action` VALUES ('1', '3');
INSERT INTO `permission_role_action` VALUES ('9', '4');

-- ----------------------------
-- Table structure for permission_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `permission_role_menu`;
CREATE TABLE `permission_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `FKd8vgplc8ckqnkkoysb6u9cily` (`menu_id`),
  CONSTRAINT `FKd8vgplc8ckqnkkoysb6u9cily` FOREIGN KEY (`menu_id`) REFERENCES `permission_menu` (`id`),
  CONSTRAINT `FKhx89aoec3xwyjsvlox8bn5dlu` FOREIGN KEY (`role_id`) REFERENCES `permission_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_role_menu
-- ----------------------------
INSERT INTO `permission_role_menu` VALUES ('1', '1');
INSERT INTO `permission_role_menu` VALUES ('9', '1');
INSERT INTO `permission_role_menu` VALUES ('1', '2');
INSERT INTO `permission_role_menu` VALUES ('9', '2');
INSERT INTO `permission_role_menu` VALUES ('1', '3');
INSERT INTO `permission_role_menu` VALUES ('1', '4');
INSERT INTO `permission_role_menu` VALUES ('1', '5');
INSERT INTO `permission_role_menu` VALUES ('9', '5');
INSERT INTO `permission_role_menu` VALUES ('1', '6');
INSERT INTO `permission_role_menu` VALUES ('9', '6');
INSERT INTO `permission_role_menu` VALUES ('1', '7');
INSERT INTO `permission_role_menu` VALUES ('1', '8');
INSERT INTO `permission_role_menu` VALUES ('1', '9');
INSERT INTO `permission_role_menu` VALUES ('1', '10');
INSERT INTO `permission_role_menu` VALUES ('1', '12');
INSERT INTO `permission_role_menu` VALUES ('1', '13');
INSERT INTO `permission_role_menu` VALUES ('1', '14');
INSERT INTO `permission_role_menu` VALUES ('1', '15');
INSERT INTO `permission_role_menu` VALUES ('1', '16');
INSERT INTO `permission_role_menu` VALUES ('1', '17');
INSERT INTO `permission_role_menu` VALUES ('1', '18');
INSERT INTO `permission_role_menu` VALUES ('1', '19');
INSERT INTO `permission_role_menu` VALUES ('1', '20');
INSERT INTO `permission_role_menu` VALUES ('1', '21');
INSERT INTO `permission_role_menu` VALUES ('1', '22');
INSERT INTO `permission_role_menu` VALUES ('1', '23');
INSERT INTO `permission_role_menu` VALUES ('1', '24');
INSERT INTO `permission_role_menu` VALUES ('1', '25');
INSERT INTO `permission_role_menu` VALUES ('1', '26');
