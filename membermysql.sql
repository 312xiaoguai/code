/*
Navicat MySQL Data Transfer

Source Server         : mysql true
Source Server Version : 80015
Source Host           : 39.96.33.166:3306
Source Database       : member

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-11 15:38:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
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
  `enabled` bit(1) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `member_education_id` bigint(20) DEFAULT NULL,
  `member_info_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8ab5jrkrf2oq5b2c22ean42xg` (`member_education_id`),
  KEY `FKpd3sepb0sw3al1deejfqex7mc` (`member_info_id`),
  CONSTRAINT `FK8ab5jrkrf2oq5b2c22ean42xg` FOREIGN KEY (`member_education_id`) REFERENCES `member_education` (`id`),
  CONSTRAINT `FKpd3sepb0sw3al1deejfqex7mc` FOREIGN KEY (`member_info_id`) REFERENCES `member_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', '2019-04-01 05:30:02', null, '5a9cb536224da75e5634d4e3', null, 'b6a5a42d1d2d40a8bafb5e80c8556421', '0', '0', null, null, null, null, '', '13901234567', '$2a$10$eFdVpbCx7O/ZDugyema5KuJQyzX9rFl5mmU0GSLdf4eQMjCK6e20K', 'hellotest', '1', '1');
INSERT INTO `member` VALUES ('2', '2019-04-04 14:43:39', null, '5a9cb536224da75e5634d4e3', null, '20ec9e8d99714f57a6179cadf61b508c', '0', '0', null, null, null, '0', '', '18610234584', '$2a$10$1wE.Rsv49V/2l.dxjnAx8OCYYxkhj5bfVj3nF3rBZ9ubcmElohQPO', '18610234584', null, '5');
INSERT INTO `member` VALUES ('3', null, null, '5a9cb536224da75e5634d4e3', null, '516cafce1935447499e4dff6fe05fce8', '0', '0', null, null, null, '0', '\0', '18311022386', '$2a$10$IMp3ihW6EnIIkPBAReOd2OegKDYR/E/qT44vdbXev8Gz9xjd6momm', '亓楽', null, '6');
INSERT INTO `member` VALUES ('4', null, null, '5a9cb536224da75e5634d4e3', null, '10cb933ce32141fea8b6212d2a16e1b5', '0', '0', null, null, null, '0', '\0', '13834438635', '$2a$10$FFiUq66x9ZD8xZp8OMcO8uqC8Nt/12OeM2zCUq9KrCdWq2PQShcjS', '13834438635', null, '7');
INSERT INTO `member` VALUES ('5', '2019-04-04 02:45:30', null, '5a9cb536224da75e5634d4e3', null, 'f8362f387fec4bfd95917d484c0c6feb', '0', '0', null, null, null, '0', '', '18610867056', '$2a$10$m/eFz4KFpKJBpdbISEfs.ewKWKH8s/fhVEIY2QOyfaOkl6Z6FlQZi', '18610867056', null, '8');
INSERT INTO `member` VALUES ('6', '2019-04-04 04:03:35', null, '5a9cb536224da75e5634d4e3', null, '0fd55ad335b04a05adca219591a0fae3', '0', '0', null, null, null, '0', '', '15801653524', '$2a$10$lAQlflQsQQBZ3nUDYfhIk.VO8SMi/8lmP.FmDLWF001cE60UQiwqi', '15801653524', null, '9');
INSERT INTO `member` VALUES ('7', '2019-04-07 04:01:12', null, '5a9cb536224da75e5634d4e3', null, '9f5816bf85d94109add5a5528f8938ad', '0', '0', null, null, null, '0', '', '18500874386', '$2a$10$ukfKUxUO8hWx9yFp06WVJ.5G3pX26a/9S6POFLabngmejQ/CbcvwG', '18500874386', null, '10');
INSERT INTO `member` VALUES ('8', '2019-04-07 04:01:49', null, '5a9cb536224da75e5634d4e3', null, '968bdf4b95c34f52b01a65020716d58e', '0', '0', null, null, null, '0', '', '13783439804', '$2a$10$Z7oI4BVbXl0oGjbO1uLJG.CHH2cFG81PlReodG94u5/Bj/BnKNcVO', '我爱红烧肉', null, '11');
INSERT INTO `member` VALUES ('9', '2019-04-08 04:42:49', null, '5a9cb536224da75e5634d4e3', null, '1cc63ddb2c3142bf87a876502de3ae1c', '0', '0', null, null, null, '0', '', '13269877059', '$2a$10$6w/gGtYhdyNtCAGrFSrA0.U1qhRoUjns8d.16VMSFB7J.0RBWzDZ2', 'Acoder', null, '12');
INSERT INTO `member` VALUES ('10', '2019-04-08 19:20:53', null, '5a9cb536224da75e5634d4e3', null, '722dd9792e1045b4aee00204ab639a78', '0', '0', null, null, null, '0', '', '13641009387', '$2a$10$IBWH3vxDz6I8f9s7XVYVEut2ZWN5.i9jF8bjtHnuexom/cZuzHkIC', '136****9387', null, '13');
INSERT INTO `member` VALUES ('11', '2019-04-09 10:31:01', null, '5a9cb536224da75e5634d4e3', null, '973f03252b4c4b25bea826867b11087e', '0', '0', null, null, null, '0', '', '13910609997', '$2a$10$52XDEHDzIE9wJkR3JpbGxu/gU2ByJWT8SfRdeB7fYXz8WNIgPcwBO', 'Corry guo', null, '14');
INSERT INTO `member` VALUES ('12', '2019-04-09 14:41:30', null, '5a9cb536224da75e5634d4e3', null, '996b3ee5dc394797a6afba5fb472506d', '0', '0', null, null, null, '0', '', '10000000000', '$2a$10$oWVj25pb.Ds5jyOPCGbOO.oIL8ujNl.qy.h9QtLfGED7xh7OvOPMa', '10000000000', null, '15');
INSERT INTO `member` VALUES ('13', '2019-04-10 10:20:53', null, '5a9cb536224da75e5634d4e3', null, '45f251a3f4fc4f75aad82e8766662358', '0', '0', null, null, null, '0', '', '13000000010', '$2a$10$IGt09g9q2KuTGc2ZU/zUDOJFmnJWXEL5gt36XmYpbKM2jt1GnKwZK', '13000000010', null, '16');
INSERT INTO `member` VALUES ('14', '2019-04-10 14:31:46', null, '5a9cb536224da75e5634d4e3', null, 'f39ec10937564f03ac4321c5895a1e01', '0', '0', null, null, null, '0', '', '13000000011', '$2a$10$ZXxbWXowpUBNmT06FxBh0OaYlWJhXvn7dPrBU1nNo0HaE86Fb9E6y', 'coder', null, '17');
INSERT INTO `member` VALUES ('15', '2019-04-10 14:56:01', null, '5a9cb536224da75e5634d4e3', null, 'e106b6fe93d240088596c4767709fbd4', '0', '0', null, null, null, '0', '', '13000000012', '$2a$10$k2plrL8u41gIvMM9GTH5lOdZoIif52ktL3w8dr/VzFYiY07Jk06J2', '0101', null, '18');
INSERT INTO `member` VALUES ('16', '2019-04-10 15:01:20', null, '5a9cb536224da75e5634d4e3', null, '6e4f0e728a64404d8bf3c4c207255f0b', '0', '0', null, null, null, '0', '', '13000000013', '$2a$10$stQzyXnKugbDwdHLZQws1.DHv2Ms7R..6G.g7orwSwnRxQQfTbNLG', 'FrameWork13', null, '19');
INSERT INTO `member` VALUES ('17', '2019-04-10 16:01:26', null, '5a9cb536224da75e5634d4e3', null, 'a6bf1453ef7446d1b17addbef3a2e6ec', '0', '0', null, null, null, '0', '', '13910609199', '$2a$10$yt75UFVbMDZ3csbGwZvLXeBGhGTHqOXhfq717ESaxIyJyZawePmHS', '猿始人', null, '20');
INSERT INTO `member` VALUES ('18', '2019-04-10 19:00:59', null, '5a9cb536224da75e5634d4e3', null, '3523aeaa7f3e4976b3bf7b9c2f1e6b9e', '0', '0', null, null, null, '0', '', '13641009388', '$2a$10$6b/hNr0vgfcIz3.p/G8LWuqb.smq1.276U3EbkL/TuHgT3ZfLFwsK', '13641009388', null, '21');
INSERT INTO `member` VALUES ('19', '2019-04-11 12:37:11', null, '5a9cb536224da75e5634d4e3', null, '1a8063c1a895492fb0d82ec98c2d88d6', '0', '0', null, null, null, '0', '', '18311111111', '$2a$10$/4tjS9fb9I.Loele9F3Ese7c7n7DT9SNoC1ze7M2bNhi4CZVETzoi', '18311111111', null, '22');
INSERT INTO `member` VALUES ('20', '2019-04-11 12:38:18', null, '5a9cb536224da75e5634d4e3', null, 'e9ed80041a3347f8afeb2f7cfe2b4d85', '0', '0', null, null, null, '0', '', '18322222222', '$2a$10$4./JC/dqa2F6d15T/kNR0uuXzXMstMLmhesqmXWEtEToGai83mqqC', '18322222222', null, '23');

-- ----------------------------
-- Table structure for member_education
-- ----------------------------
DROP TABLE IF EXISTS `member_education`;
CREATE TABLE `member_education` (
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
  `degree` varchar(255) DEFAULT NULL,
  `enter_time` varchar(255) DEFAULT NULL,
  `graduate_time` varchar(255) DEFAULT NULL,
  `major_name` varchar(255) DEFAULT NULL,
  `member` tinyblob,
  `school_id` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_education
-- ----------------------------
INSERT INTO `member_education` VALUES ('1', '2019-04-01 05:30:02', null, '5a9cb536224da75e5634d4e3', null, '76a4afcb8fc343d78d76626455435fc6', '0', '0', null, null, null, '大学', '1995-11-24', '1999-11-24', null, null, null, null);

-- ----------------------------
-- Table structure for member_info
-- ----------------------------
DROP TABLE IF EXISTS `member_info`;
CREATE TABLE `member_info` (
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
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `home_city` varchar(255) DEFAULT NULL,
  `identity` int(11) DEFAULT NULL,
  `identity_number` varchar(255) DEFAULT NULL,
  `identity_type` int(11) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `member` tinyblob,
  `mobile` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `personal_info` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `resume_url` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `third_party_id` varchar(255) DEFAULT NULL,
  `types` int(11) DEFAULT NULL,
  `work_city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_info
-- ----------------------------
INSERT INTO `member_info` VALUES ('1', '2019-04-01 05:30:02', null, '5a9cb536224da75e5634d4e3', null, 'd04ae8024e3544e79551e0ce1e09b260', '0', '0', null, null, null, 'abc.png', '1981-11-24', null, null, null, null, '1', null, null, null, null, null, null, null, 'hello', null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('5', '2019-04-04 01:18:48', null, '5a9cb536224da75e5634d4e3', null, '5dfc16e00dc2431e9e8f4c93aa8f4f42', '0', '0', null, null, null, '/static/head.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('6', null, null, '5a9cb536224da75e5634d4e3', null, '516cafce1935447499e4dff6fe05fce8', '0', '0', null, null, null, 'https://kubetusfile.acmcoder.com/api/tus/aafde29db9a04037921a5d7e13995871', null, '华为', null, null, null, '2', null, null, null, '', null, '18311022386', null, null, null, '行走的BUG', '测试', null, null, '', null, null, null);
INSERT INTO `member_info` VALUES ('7', '2019-04-04 02:03:00', null, '5a9cb536224da75e5634d4e3', null, 'bd56540273444b77b7b72f42dd9beb82', '0', '0', null, null, null, '/static/head.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('8', '2019-04-04 02:45:30', null, '5a9cb536224da75e5634d4e3', null, 'a3d504ef599944fc8a7ad86841ad7232', '0', '0', null, null, null, '/static/head.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('9', '2019-04-04 04:03:35', null, '5a9cb536224da75e5634d4e3', null, '37b1d6e71e09433d83b5aca016a19d7b', '0', '0', null, null, null, '/static/head.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('10', '2019-04-07 04:01:12', null, '5a9cb536224da75e5634d4e3', null, 'f5c3b31b121f4b08be7e3841aa4b1f04', '0', '0', null, null, null, '/static/head.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('11', '2019-04-07 04:01:49', null, '5a9cb536224da75e5634d4e3', null, '968bdf4b95c34f52b01a65020716d58e', '0', '0', null, null, null, 'https://kubetusfile.acmcoder.com/api/tus/7440f487d3a7428ca0f7a6b31a8b5e8e', null, '', null, null, null, '1', null, null, null, null, null, '13783439804', null, null, null, null, '', null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('12', '2019-04-08 04:42:49', null, '5a9cb536224da75e5634d4e3', null, '1cc63ddb2c3142bf87a876502de3ae1c', '0', '0', null, null, null, '/static/head.png', null, '', null, null, null, '1', null, null, null, null, null, '13269877059', null, null, null, null, '', null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('13', '2019-04-08 19:20:53', null, '5a9cb536224da75e5634d4e3', null, '722dd9792e1045b4aee00204ab639a78', '0', '0', null, null, null, '/static/head.png', null, '', null, null, null, '1', null, null, null, null, null, '13641009387', null, null, null, null, '', null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('14', '2019-04-09 10:31:01', null, '5a9cb536224da75e5634d4e3', null, '973f03252b4c4b25bea826867b11087e', '0', '0', null, null, null, 'http://kubeai.acmcoder.com/static/headImgs/head5.png', null, '华为北京研究所', null, null, null, '2', null, null, null, '', null, '13910609997', null, null, null, '就是牛人一个！', '高级经理', null, null, '', null, null, null);
INSERT INTO `member_info` VALUES ('15', '2019-04-09 14:41:30', null, '5a9cb536224da75e5634d4e3', null, 'd7d98aa73fd44822bb8b480704231592', '0', '0', null, null, null, '/static/headImgs/head8.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('16', '2019-04-10 10:20:53', null, '5a9cb536224da75e5634d4e3', null, 'e9d0176db9924520b4d8ec89b63aa421', '0', '0', null, null, null, '/static/headImgs/head8.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('17', '2019-04-10 14:31:46', null, '5a9cb536224da75e5634d4e3', null, 'f39ec10937564f03ac4321c5895a1e01', '0', '0', null, null, null, '/static/headImgs/head10.png', null, '', null, null, null, '1', null, null, null, null, null, '13000000011', null, null, null, null, '', null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('18', '2019-04-10 14:56:01', null, '5a9cb536224da75e5634d4e3', null, 'e106b6fe93d240088596c4767709fbd4', '0', '0', null, null, null, '/static/headImgs/head1.png', null, '', null, null, null, '1', null, null, null, null, null, '13000000012', null, null, null, null, '', null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('19', '2019-04-10 15:01:20', null, '5a9cb536224da75e5634d4e3', null, '6e4f0e728a64404d8bf3c4c207255f0b', '0', '0', null, null, null, '/static/headImgs/head3.png', null, '', null, null, null, '1', null, null, null, null, null, '13000000013', null, null, null, null, '', null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('20', '2019-04-10 16:01:26', null, '5a9cb536224da75e5634d4e3', null, 'a6bf1453ef7446d1b17addbef3a2e6ec', '0', '0', null, null, null, '/static/headImgs/head2.png', null, '华为深圳研究所', null, null, null, '2', null, null, null, '', null, '13910609199', null, null, null, '没有什么是一顿烤串解决不了的，如果有，那就是两顿', '高级总监', null, null, '', null, null, null);
INSERT INTO `member_info` VALUES ('21', '2019-04-10 19:00:59', null, '5a9cb536224da75e5634d4e3', null, '311c7bbf9c6642a58467d842e21f5291', '0', '0', null, null, null, '/static/headImgs/head1.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('22', '2019-04-11 12:37:11', null, '5a9cb536224da75e5634d4e3', null, '08e70958c76c4b2b9f471d9ac1338c0b', '0', '0', null, null, null, '/static/headImgs/head10.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `member_info` VALUES ('23', '2019-04-11 12:38:18', null, '5a9cb536224da75e5634d4e3', null, 'b355ba83e0b240f5aa50096327e735b5', '0', '0', null, null, null, '/static/headImgs/head6.png', null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
  `source_guid` varchar(255) DEFAULT NULL,
  `target_guid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES ('1', '2019-04-04 01:18:49', null, '5a9cb536224da75e5634d4e3', null, 'a45542d20c5b4f04a2a98959166de33e', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '20ec9e8d99714f57a6179cadf61b508c');
INSERT INTO `notification` VALUES ('2', '2019-04-04 01:58:07', null, '5a9cb536224da75e5634d4e3', null, '6dde63e9837e47af922a16d6b1976a98', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '516cafce1935447499e4dff6fe05fce8');
INSERT INTO `notification` VALUES ('3', '2019-04-04 02:03:00', null, '5a9cb536224da75e5634d4e3', null, 'a31b24eec5734edaa886dc2b617e5a9c', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '10cb933ce32141fea8b6212d2a16e1b5');
INSERT INTO `notification` VALUES ('4', '2019-04-04 02:45:30', null, '5a9cb536224da75e5634d4e3', null, '55bfc1a8828d4af99a5dd3fceed04857', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', 'f8362f387fec4bfd95917d484c0c6feb');
INSERT INTO `notification` VALUES ('5', '2019-04-04 04:03:35', null, '5a9cb536224da75e5634d4e3', null, '92ec73c12a984b56979ac0e5a05b712c', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '0fd55ad335b04a05adca219591a0fae3');
INSERT INTO `notification` VALUES ('6', '2019-04-07 04:01:12', null, '5a9cb536224da75e5634d4e3', null, '99a7bb0b4ab14eca9b5519abced7c490', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '9f5816bf85d94109add5a5528f8938ad');
INSERT INTO `notification` VALUES ('7', '2019-04-07 04:01:50', null, '5a9cb536224da75e5634d4e3', null, '954fa187925548e0b2f1e981e047cbbd', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '968bdf4b95c34f52b01a65020716d58e');
INSERT INTO `notification` VALUES ('8', '2019-04-08 04:42:49', null, '5a9cb536224da75e5634d4e3', null, '1b42d85593fa4111977deaf16586096e', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '1cc63ddb2c3142bf87a876502de3ae1c');
INSERT INTO `notification` VALUES ('9', '2019-04-08 19:20:53', null, '5a9cb536224da75e5634d4e3', null, '8f95c985b75b42f78533ec195b854bf3', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '722dd9792e1045b4aee00204ab639a78');
INSERT INTO `notification` VALUES ('10', '2019-04-09 10:31:02', null, '5a9cb536224da75e5634d4e3', null, '352be5d6baef49088d88b5284d8b2752', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '973f03252b4c4b25bea826867b11087e');
INSERT INTO `notification` VALUES ('11', '2019-04-09 14:41:31', null, '5a9cb536224da75e5634d4e3', null, '47ee7b55d0704d24a0c191cd6af9ffc1', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '996b3ee5dc394797a6afba5fb472506d');
INSERT INTO `notification` VALUES ('12', '2019-04-10 10:20:54', null, '5a9cb536224da75e5634d4e3', null, 'c1d9916162fe43b58c109ddbb46c9493', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '45f251a3f4fc4f75aad82e8766662358');
INSERT INTO `notification` VALUES ('13', '2019-04-10 14:31:46', null, '5a9cb536224da75e5634d4e3', null, '63964c59ae7343fd8c66fb3b65aaeeae', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', 'f39ec10937564f03ac4321c5895a1e01');
INSERT INTO `notification` VALUES ('14', '2019-04-10 14:56:01', null, '5a9cb536224da75e5634d4e3', null, 'ecf909e98c1a4a5da84e30b3665e6e11', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', 'e106b6fe93d240088596c4767709fbd4');
INSERT INTO `notification` VALUES ('15', '2019-04-10 15:01:20', null, '5a9cb536224da75e5634d4e3', null, '651497a83d5f4dd2b97ac29597309611', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '6e4f0e728a64404d8bf3c4c207255f0b');
INSERT INTO `notification` VALUES ('16', '2019-04-10 16:01:27', null, '5a9cb536224da75e5634d4e3', null, 'c13ad20075344db080c69b6d8604ad55', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', 'a6bf1453ef7446d1b17addbef3a2e6ec');
INSERT INTO `notification` VALUES ('17', '2019-04-10 19:00:59', null, '5a9cb536224da75e5634d4e3', null, '1cb3d2f90c9c4d5f85a24bbbcbf53fc2', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '3523aeaa7f3e4976b3bf7b9c2f1e6b9e');
INSERT INTO `notification` VALUES ('18', '2019-04-11 12:37:11', null, '5a9cb536224da75e5634d4e3', null, 'b03d683db95b491ea6236a6554119ebc', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', '1a8063c1a895492fb0d82ec98c2d88d6');
INSERT INTO `notification` VALUES ('19', '2019-04-11 12:38:18', null, '5a9cb536224da75e5634d4e3', null, '6fa082c1c4b04ed8a53ea738e15932f4', '0', '0', null, null, null, '1', '', '您已经注册成功！', '0', '', 'e9ed80041a3347f8afeb2f7cfe2b4d85');

-- ----------------------------
-- Table structure for validation_code
-- ----------------------------
DROP TABLE IF EXISTS `validation_code`;
CREATE TABLE `validation_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of validation_code
-- ----------------------------
INSERT INTO `validation_code` VALUES ('1', '2', '412838', '2019-04-08 00:36:47', null, '18610234567');
INSERT INTO `validation_code` VALUES ('2', '2', '324848', '2019-04-08 00:38:01', null, '15001378150');
INSERT INTO `validation_code` VALUES ('3', '2', '278532', '2019-04-08 00:44:08', null, '18610234589');
INSERT INTO `validation_code` VALUES ('4', '2', '595953', '2019-04-08 19:20:15', null, '13641009387');
INSERT INTO `validation_code` VALUES ('5', '2', '157335', '2019-04-09 10:30:20', null, '13910609997');
INSERT INTO `validation_code` VALUES ('6', '2', '969853', '2019-04-10 16:01:08', null, '13910609199');
