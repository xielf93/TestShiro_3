/*
Navicat MySQL Data Transfer

Source Server         : newTest
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : shiro_test

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-10-13 10:19:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for leaveapply
-- ----------------------------
DROP TABLE IF EXISTS `leaveapply`;
CREATE TABLE `leaveapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_instance_id` varchar(45) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `start_time` varchar(45) DEFAULT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  `leave_type` varchar(45) DEFAULT NULL,
  `reason` varchar(400) DEFAULT NULL,
  `apply_time` varchar(100) DEFAULT NULL,
  `reality_start_time` varchar(45) DEFAULT NULL,
  `reality_end_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveapply
-- ----------------------------
INSERT INTO `leaveapply` VALUES ('1', '2501', 'admin', '2017-08-28', '2017-09-01', '事假', '不能进女内部成本女你们不能没那么高没可能，模拟考', '2017-08-28', '2017-08-28', '2017-09-01');
INSERT INTO `leaveapply` VALUES ('2', '12501', 'admin', '2017-08-31', '2017-09-01', '病假', 'dsadsadad', '2017-08-29', '2017-08-28', '2017-09-01');
INSERT INTO `leaveapply` VALUES ('3', '12520', 'zhang', '2017-09-04', '2017-09-08', '事假', '卫计委开启快乐数控技术侃大山', '2017-08-29', '2017-08-28', '2017-09-01');
INSERT INTO `leaveapply` VALUES ('4', '20001', 'admin', '2017-08-29', '2017-09-01', '病假', 'dasdasdsdsd', '2017-08-29', '2017-08-29', '2017-09-01');
INSERT INTO `leaveapply` VALUES ('5', '22502', 'zhang', '2017-08-29', '2017-09-01', '事假', 'ddwqewcv', '2017-08-29', '2017-08-29', '2017-09-01');
INSERT INTO `leaveapply` VALUES ('6', '25001', 'admin', '2017-08-29', '2017-09-01', '事假', 'dasdasdasdsadsas', '2017-08-30', null, null);
INSERT INTO `leaveapply` VALUES ('7', '27501', 'admin', '2017-08-31', '2017-09-01', '病假', 'heiehieeheie', '2017-08-30', null, null);
INSERT INTO `leaveapply` VALUES ('8', '30026', 'zhang', '2017-08-30', '2017-09-01', '病假', 'dasdsadasdsa', '2017-08-30', null, null);
INSERT INTO `leaveapply` VALUES ('9', '30045', 'wang', '2017-08-30', '2017-09-01', '病假', '多撒大所多所', '2017-08-30', null, null);
INSERT INTO `leaveapply` VALUES ('10', '7501', 'admin', '2017-09-15', '2017-09-20', '年假', 'dsadsads', '2017-09-15', '2017-09-15', '2017-09-20');
INSERT INTO `leaveapply` VALUES ('11', '10001', 'admin', '2017-09-18', '2017-09-22', '产假', 'gjhghjghj', '2017-09-18', '2017-09-18', '2017-09-22');
INSERT INTO `leaveapply` VALUES ('12', '10024', 'admin', '', '', '事假', 'erfdsfdsfdsf', '2017-09-18', null, null);
INSERT INTO `leaveapply` VALUES ('13', '12501', 'admin', '2017-09-21', '2017-09-26', '事假', '不舒服', '2017-09-21', '2017-09-21', '2017-09-23');
INSERT INTO `leaveapply` VALUES ('14', '22502', 'admin', '2017-09-19', '2017-09-23', '事假', 'dsadasd', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('15', '25001', 'admin', '2017-09-19', '2017-09-23', '病假', '11111111111', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('16', '8', 'admin', '2017-09-19', '2017-09-23', '事假', '123132132', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('18', '5', 'admin', '2017-09-19', '2017-09-23', '事假', '', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('19', '5', 'admin', '2017-09-19', '2017-09-23', '事假', 'dsadas', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('20', '50009', 'admin', '2017-09-19', '2017-09-23', '事假', 'dsdsad', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('21', '52501', 'admin', '2017-09-19', '2017-09-23', '事假', 'rrrrrrrrrrrrr', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('22', '9', 'admin', '2017-09-19', '2017-09-23', '事假', 'errrrrrrrrrrrrrrr', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('23', '9', 'admin', '2017-09-18', '2017-09-22', '事假', 'eeeeeeeeeeeeeeeeeee', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('24', '7501', 'admin', '2017-09-19', '2017-09-22', '事假', 'oooooooooooooo', '2017-09-21', '2017-09-22', '2017-09-23');
INSERT INTO `leaveapply` VALUES ('25', '7512', 'admin', '2017-09-26', '2017-09-27', '事假', '6666666', '2017-09-21', '2017-09-22', '2017-09-23');
INSERT INTO `leaveapply` VALUES ('26', '7535', 'admin', '2017-09-18', '2017-09-23', '事假', '77777', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('27', '9', 'admin', '2017-09-18', '2017-09-23', '事假', '555555555', '2017-09-21', null, null);
INSERT INTO `leaveapply` VALUES ('28', '20', 'admin', '2017-09-21', '2017-09-22', '事假', '1111111111111111', '2017-09-21', '2017-09-21', '2017-09-22');
INSERT INTO `leaveapply` VALUES ('29', '2502', 'admin', '2017-09-25', '2017-09-30', '事假', '55555555555tian', '2017-09-21', '2017-09-21', '2017-09-22');
INSERT INTO `leaveapply` VALUES ('30', '2513', 'admin', '2017-09-28', '2017-09-29', '事假', '1111111111tian', '2017-09-21', '2017-09-21', '2017-09-22');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('17', 'admin', '操作用户', '2017-08-17 14:23:09');
INSERT INTO `sys_log` VALUES ('18', 'admin', '操作日志', '2017-08-17 14:23:10');
INSERT INTO `sys_log` VALUES ('19', 'admin', '操作组织机构', '2017-08-17 14:23:21');
INSERT INTO `sys_log` VALUES ('20', 'admin', '操作角色', '2017-08-17 14:23:23');
INSERT INTO `sys_log` VALUES ('21', 'admin', '操作资源', '2017-08-17 14:23:25');
INSERT INTO `sys_log` VALUES ('22', 'admin', '操作角色', '2017-08-17 14:23:25');
INSERT INTO `sys_log` VALUES ('23', 'admin', '操作角色', '2017-08-17 14:23:46');
INSERT INTO `sys_log` VALUES ('24', 'admin', '操作角色', '2017-08-17 14:23:46');
INSERT INTO `sys_log` VALUES ('25', 'admin', '操作角色', '2017-08-17 14:23:50');
INSERT INTO `sys_log` VALUES ('26', 'admin', '操作用户', '2017-08-17 14:23:53');
INSERT INTO `sys_log` VALUES ('27', 'admin', '操作组织机构', '2017-08-17 14:23:56');
INSERT INTO `sys_log` VALUES ('28', 'admin', '操作用户', '2017-08-17 14:24:06');
INSERT INTO `sys_log` VALUES ('29', 'admin', '操作用户', '2017-08-17 14:24:09');
INSERT INTO `sys_log` VALUES ('30', 'admin', '操作用户', '2017-08-17 14:24:10');
INSERT INTO `sys_log` VALUES ('31', 'admin', '操作角色', '2017-08-17 14:24:10');
INSERT INTO `sys_log` VALUES ('32', 'admin', '操作用户', '2017-08-17 14:24:13');
INSERT INTO `sys_log` VALUES ('33', 'admin', '操作用户', '2017-08-17 14:24:13');
INSERT INTO `sys_log` VALUES ('34', 'admin', '操作用户', '2017-08-17 14:24:18');
INSERT INTO `sys_log` VALUES ('35', 'lala', '操作用户', '2017-08-17 14:24:28');
INSERT INTO `sys_log` VALUES ('36', 'lala', '操作组织机构', '2017-08-17 14:24:30');
INSERT INTO `sys_log` VALUES ('37', 'lala', '操作组织机构', '2017-08-17 14:24:33');
INSERT INTO `sys_log` VALUES ('38', 'lala', '操作组织机构', '2017-08-17 14:24:33');
INSERT INTO `sys_log` VALUES ('39', 'lala', '操作组织机构', '2017-08-17 14:24:46');
INSERT INTO `sys_log` VALUES ('40', 'lala', '操作组织机构', '2017-08-17 14:24:48');
INSERT INTO `sys_log` VALUES ('41', 'lala', '操作组织机构', '2017-08-17 14:24:51');
INSERT INTO `sys_log` VALUES ('42', 'lala', '操作组织机构', '2017-08-17 14:24:51');
INSERT INTO `sys_log` VALUES ('43', 'lala', '操作组织机构', '2017-08-17 14:25:00');
INSERT INTO `sys_log` VALUES ('44', 'lala', '操作组织机构', '2017-08-17 14:25:00');
INSERT INTO `sys_log` VALUES ('45', 'lala', '操作组织机构', '2017-08-17 14:25:04');
INSERT INTO `sys_log` VALUES ('46', 'lala', '操作组织机构', '2017-08-17 14:25:06');
INSERT INTO `sys_log` VALUES ('47', 'lala', '操作组织机构', '2017-08-17 14:25:47');
INSERT INTO `sys_log` VALUES ('48', 'lala', '操作组织机构', '2017-08-17 14:25:47');
INSERT INTO `sys_log` VALUES ('49', 'lala', '操作组织机构', '2017-08-17 14:25:50');
INSERT INTO `sys_log` VALUES ('50', 'lala', '操作组织机构', '2017-08-17 14:25:52');
INSERT INTO `sys_log` VALUES ('51', 'lala', '操作组织机构', '2017-08-17 14:25:56');
INSERT INTO `sys_log` VALUES ('52', 'lala', '操作组织机构', '2017-08-17 14:25:56');
INSERT INTO `sys_log` VALUES ('53', 'lala', '操作用户', '2017-08-17 14:27:15');
INSERT INTO `sys_log` VALUES ('54', 'lala', '操作组织机构', '2017-08-17 14:27:16');
INSERT INTO `sys_log` VALUES ('55', 'admin', '操作用户', '2017-08-17 14:27:56');
INSERT INTO `sys_log` VALUES ('56', 'admin', '操作角色', '2017-08-17 14:28:00');
INSERT INTO `sys_log` VALUES ('57', 'admin', '操作资源', '2017-08-17 14:28:01');
INSERT INTO `sys_log` VALUES ('58', 'admin', '操作角色', '2017-08-17 14:28:01');
INSERT INTO `sys_log` VALUES ('59', 'admin', '操作角色', '2017-08-17 14:28:12');
INSERT INTO `sys_log` VALUES ('60', 'admin', '操作角色', '2017-08-17 14:28:12');
INSERT INTO `sys_log` VALUES ('61', 'lala', '操作用户', '2017-08-17 14:28:28');
INSERT INTO `sys_log` VALUES ('62', 'lala', '操作组织机构', '2017-08-17 14:28:30');
INSERT INTO `sys_log` VALUES ('63', 'lala', '操作组织机构', '2017-08-17 14:28:31');
INSERT INTO `sys_log` VALUES ('64', 'lala', '操作组织机构', '2017-08-17 14:28:31');
INSERT INTO `sys_log` VALUES ('65', 'admin', '操作用户', '2017-08-17 22:00:27');
INSERT INTO `sys_log` VALUES ('66', 'admin', '操作资源', '2017-08-17 22:00:29');
INSERT INTO `sys_log` VALUES ('67', 'admin', '操作资源', '2017-08-17 22:00:35');
INSERT INTO `sys_log` VALUES ('68', 'admin', '操作资源', '2017-08-17 22:00:39');
INSERT INTO `sys_log` VALUES ('69', 'admin', '操作资源', '2017-08-17 22:00:51');
INSERT INTO `sys_log` VALUES ('70', 'admin', '操作资源', '2017-08-17 22:00:57');
INSERT INTO `sys_log` VALUES ('71', 'admin', '操作资源', '2017-08-17 22:01:01');
INSERT INTO `sys_log` VALUES ('72', 'admin', '操作资源', '2017-08-17 22:01:02');
INSERT INTO `sys_log` VALUES ('73', 'admin', '操作用户', '2017-08-17 22:01:44');
INSERT INTO `sys_log` VALUES ('74', 'admin', '操作资源', '2017-08-17 22:01:48');
INSERT INTO `sys_log` VALUES ('75', 'admin', '操作资源', '2017-08-17 22:01:50');
INSERT INTO `sys_log` VALUES ('76', 'admin', '操作资源', '2017-08-17 22:02:09');
INSERT INTO `sys_log` VALUES ('77', 'admin', '操作资源', '2017-08-17 22:02:50');
INSERT INTO `sys_log` VALUES ('78', 'admin', '操作用户', '2017-08-17 22:03:28');
INSERT INTO `sys_log` VALUES ('79', 'admin', '操作用户', '2017-08-17 22:04:38');
INSERT INTO `sys_log` VALUES ('80', 'admin', '操作资源', '2017-08-17 22:04:39');
INSERT INTO `sys_log` VALUES ('81', 'admin', '操作资源', '2017-08-17 22:04:40');
INSERT INTO `sys_log` VALUES ('82', 'admin', '操作资源', '2017-08-17 22:04:41');
INSERT INTO `sys_log` VALUES ('83', 'admin', '操作用户', '2017-08-17 22:05:26');
INSERT INTO `sys_log` VALUES ('84', 'admin', '操作资源', '2017-08-17 22:05:28');
INSERT INTO `sys_log` VALUES ('85', 'admin', '操作资源', '2017-08-17 22:05:29');
INSERT INTO `sys_log` VALUES ('86', 'admin', '操作用户', '2017-08-17 22:06:56');
INSERT INTO `sys_log` VALUES ('87', 'admin', '操作资源', '2017-08-17 22:06:58');
INSERT INTO `sys_log` VALUES ('88', 'admin', '操作资源', '2017-08-17 22:06:58');
INSERT INTO `sys_log` VALUES ('89', 'admin', '操作用户', '2017-08-17 22:08:10');
INSERT INTO `sys_log` VALUES ('90', 'admin', '操作资源', '2017-08-17 22:08:11');
INSERT INTO `sys_log` VALUES ('91', 'admin', '操作资源', '2017-08-17 22:08:11');
INSERT INTO `sys_log` VALUES ('92', 'admin', '操作资源', '2017-08-17 22:08:22');
INSERT INTO `sys_log` VALUES ('93', 'admin', '操作资源', '2017-08-17 22:08:37');
INSERT INTO `sys_log` VALUES ('94', 'admin', '操作资源', '2017-08-17 22:08:37');
INSERT INTO `sys_log` VALUES ('95', 'admin', '操作用户', '2017-08-17 22:11:40');
INSERT INTO `sys_log` VALUES ('96', 'admin', '操作资源', '2017-08-17 22:11:42');
INSERT INTO `sys_log` VALUES ('97', 'admin', '操作资源', '2017-08-17 22:11:43');
INSERT INTO `sys_log` VALUES ('98', 'admin', '操作资源', '2017-08-17 22:11:55');
INSERT INTO `sys_log` VALUES ('99', 'admin', '操作资源', '2017-08-17 22:11:55');
INSERT INTO `sys_log` VALUES ('100', 'admin', '操作资源', '2017-08-17 22:12:15');
INSERT INTO `sys_log` VALUES ('101', 'admin', '操作资源', '2017-08-17 22:12:29');
INSERT INTO `sys_log` VALUES ('102', 'admin', '操作角色', '2017-08-17 22:12:33');
INSERT INTO `sys_log` VALUES ('103', 'admin', '操作用户', '2017-08-17 22:15:15');
INSERT INTO `sys_log` VALUES ('104', 'admin', '操作用户', '2017-08-17 22:15:18');
INSERT INTO `sys_log` VALUES ('105', 'admin', '操作组织机构', '2017-08-17 22:15:22');
INSERT INTO `sys_log` VALUES ('106', 'admin', '操作用户', '2017-08-17 22:15:32');
INSERT INTO `sys_log` VALUES ('107', 'admin', '操作用户', '2017-08-17 22:15:35');
INSERT INTO `sys_log` VALUES ('108', 'admin', '操作日志', '2017-08-17 22:15:46');
INSERT INTO `sys_log` VALUES ('109', 'admin', '操作用户', '2017-08-17 22:15:55');
INSERT INTO `sys_log` VALUES ('110', 'admin', '操作组织机构', '2017-08-17 22:16:03');
INSERT INTO `sys_log` VALUES ('111', 'admin', '操作组织机构', '2017-08-17 22:16:07');
INSERT INTO `sys_log` VALUES ('112', 'admin', '操作组织机构', '2017-08-17 22:16:15');
INSERT INTO `sys_log` VALUES ('113', 'admin', '操作用户', '2017-08-18 09:40:18');
INSERT INTO `sys_log` VALUES ('114', 'admin', '操作组织机构', '2017-08-18 09:40:30');
INSERT INTO `sys_log` VALUES ('115', 'admin', '操作角色', '2017-08-18 09:40:32');
INSERT INTO `sys_log` VALUES ('116', 'admin', '操作资源', '2017-08-18 09:40:33');
INSERT INTO `sys_log` VALUES ('117', 'admin', '操作日志', '2017-08-18 09:40:34');
INSERT INTO `sys_log` VALUES ('118', 'admin', '操作用户', '2017-08-18 09:40:35');
INSERT INTO `sys_log` VALUES ('119', 'admin', '操作用户', '2017-08-18 10:15:31');
INSERT INTO `sys_log` VALUES ('120', 'admin', '操作组织机构', '2017-08-18 10:15:41');
INSERT INTO `sys_log` VALUES ('121', 'admin', '操作组织机构', '2017-08-18 10:15:56');
INSERT INTO `sys_log` VALUES ('122', 'admin', '操作组织机构', '2017-08-18 10:15:57');
INSERT INTO `sys_log` VALUES ('123', 'admin', '操作用户', '2017-08-18 10:24:19');
INSERT INTO `sys_log` VALUES ('124', 'admin', '操作组织机构', '2017-08-18 10:24:21');
INSERT INTO `sys_log` VALUES ('125', 'admin', '操作组织机构', '2017-08-18 10:24:23');
INSERT INTO `sys_log` VALUES ('126', 'admin', '操作组织机构', '2017-08-18 10:24:23');
INSERT INTO `sys_log` VALUES ('127', 'admin', '操作组织机构', '2017-08-18 10:24:27');
INSERT INTO `sys_log` VALUES ('128', 'admin', '操作组织机构', '2017-08-18 10:24:27');
INSERT INTO `sys_log` VALUES ('129', 'admin', '操作角色', '2017-08-18 10:24:29');
INSERT INTO `sys_log` VALUES ('130', 'admin', '操作资源', '2017-08-18 10:24:34');
INSERT INTO `sys_log` VALUES ('131', 'admin', '操作角色', '2017-08-18 10:24:34');
INSERT INTO `sys_log` VALUES ('132', 'admin', '操作资源', '2017-08-18 10:24:42');
INSERT INTO `sys_log` VALUES ('133', 'admin', '操作日志', '2017-08-18 10:24:46');
INSERT INTO `sys_log` VALUES ('134', 'admin', '操作用户', '2017-08-18 10:24:58');
INSERT INTO `sys_log` VALUES ('135', 'admin', '操作用户', '2017-08-18 12:47:10');
INSERT INTO `sys_log` VALUES ('136', 'admin', '操作资源', '2017-08-18 12:47:14');
INSERT INTO `sys_log` VALUES ('137', 'admin', '操作用户', '2017-08-18 12:50:12');
INSERT INTO `sys_log` VALUES ('138', 'admin', '操作资源', '2017-08-18 12:50:16');
INSERT INTO `sys_log` VALUES ('139', 'admin', '操作资源', '2017-08-18 12:50:43');
INSERT INTO `sys_log` VALUES ('140', 'admin', '操作资源', '2017-08-18 12:50:53');
INSERT INTO `sys_log` VALUES ('141', 'admin', '操作资源', '2017-08-18 12:52:32');
INSERT INTO `sys_log` VALUES ('142', 'admin', '操作日志', '2017-08-18 12:52:36');
INSERT INTO `sys_log` VALUES ('143', 'admin', '操作用户', '2017-08-18 12:52:59');
INSERT INTO `sys_log` VALUES ('144', 'admin', '操作日志', '2017-08-18 12:53:01');
INSERT INTO `sys_log` VALUES ('145', 'admin', '操作用户', '2017-08-18 12:55:32');
INSERT INTO `sys_log` VALUES ('146', 'admin', '操作资源', '2017-08-18 12:55:37');
INSERT INTO `sys_log` VALUES ('147', 'admin', '操作用户', '2017-08-18 12:56:47');
INSERT INTO `sys_log` VALUES ('148', 'admin', '操作资源', '2017-08-18 12:56:50');
INSERT INTO `sys_log` VALUES ('149', 'admin', '操作用户', '2017-08-18 12:58:27');
INSERT INTO `sys_log` VALUES ('150', 'admin', '操作资源', '2017-08-18 12:58:29');
INSERT INTO `sys_log` VALUES ('151', 'admin', '操作用户', '2017-08-18 12:58:36');
INSERT INTO `sys_log` VALUES ('152', 'admin', '操作资源', '2017-08-18 12:58:39');
INSERT INTO `sys_log` VALUES ('153', 'admin', '操作用户', '2017-08-18 13:03:39');
INSERT INTO `sys_log` VALUES ('154', 'admin', '操作用户', '2017-08-18 13:05:57');
INSERT INTO `sys_log` VALUES ('155', 'admin', '操作资源', '2017-08-18 13:06:00');
INSERT INTO `sys_log` VALUES ('156', 'admin', '操作用户', '2017-08-18 13:07:29');
INSERT INTO `sys_log` VALUES ('157', 'admin', '操作资源', '2017-08-18 13:07:30');
INSERT INTO `sys_log` VALUES ('158', 'admin', '操作用户', '2017-08-18 13:10:08');
INSERT INTO `sys_log` VALUES ('159', 'admin', '操作资源', '2017-08-18 13:10:10');
INSERT INTO `sys_log` VALUES ('160', 'admin', '操作用户', '2017-08-18 13:23:08');
INSERT INTO `sys_log` VALUES ('161', 'lala', '操作用户', '2017-08-18 13:35:43');
INSERT INTO `sys_log` VALUES ('162', 'lala', '操作组织机构', '2017-08-18 13:35:46');
INSERT INTO `sys_log` VALUES ('163', 'lala', '操作组织机构', '2017-08-18 13:35:47');
INSERT INTO `sys_log` VALUES ('164', 'lala', '操作组织机构', '2017-08-18 13:35:47');
INSERT INTO `sys_log` VALUES ('165', 'admin', '操作用户', '2017-08-18 13:35:59');
INSERT INTO `sys_log` VALUES ('166', 'admin', '操作组织机构', '2017-08-18 13:36:03');
INSERT INTO `sys_log` VALUES ('167', 'admin', '操作组织机构', '2017-08-18 13:36:05');
INSERT INTO `sys_log` VALUES ('168', 'admin', '操作组织机构', '2017-08-18 13:36:05');
INSERT INTO `sys_log` VALUES ('169', 'admin', '操作用户', '2017-08-18 14:50:21');
INSERT INTO `sys_log` VALUES ('170', 'admin', '操作组织机构', '2017-08-18 14:50:24');
INSERT INTO `sys_log` VALUES ('171', 'admin', '操作角色', '2017-08-18 14:50:26');
INSERT INTO `sys_log` VALUES ('172', 'admin', '操作资源', '2017-08-18 14:50:26');
INSERT INTO `sys_log` VALUES ('173', 'admin', '操作日志', '2017-08-18 14:50:27');
INSERT INTO `sys_log` VALUES ('174', 'admin', '操作资源', '2017-08-18 14:50:28');
INSERT INTO `sys_log` VALUES ('175', 'admin', '操作资源', '2017-08-18 14:50:38');
INSERT INTO `sys_log` VALUES ('176', 'admin', '操作用户', '2017-08-18 14:52:18');
INSERT INTO `sys_log` VALUES ('177', 'admin', '操作资源', '2017-08-18 14:52:20');
INSERT INTO `sys_log` VALUES ('178', 'admin', '操作组织机构', '2017-08-18 14:58:31');
INSERT INTO `sys_log` VALUES ('179', 'admin', '操作资源', '2017-08-18 14:58:33');
INSERT INTO `sys_log` VALUES ('180', 'admin', '操作日志', '2017-08-18 14:58:34');
INSERT INTO `sys_log` VALUES ('181', 'admin', '操作用户', '2017-08-18 14:58:35');
INSERT INTO `sys_log` VALUES ('182', 'admin', '操作用户', '2017-08-18 16:48:16');
INSERT INTO `sys_log` VALUES ('183', 'lala', '操作用户', '2017-08-18 16:48:29');
INSERT INTO `sys_log` VALUES ('184', 'lala', '操作组织机构', '2017-08-18 16:48:31');
INSERT INTO `sys_log` VALUES ('185', 'lala', '操作组织机构', '2017-08-18 16:48:32');
INSERT INTO `sys_log` VALUES ('186', 'lala', '操作组织机构', '2017-08-18 16:48:32');
INSERT INTO `sys_log` VALUES ('187', 'admin', '操作用户', '2017-08-18 16:48:45');
INSERT INTO `sys_log` VALUES ('188', 'admin', '操作组织机构', '2017-08-18 16:48:47');
INSERT INTO `sys_log` VALUES ('189', 'admin', '操作组织机构', '2017-08-18 16:48:49');
INSERT INTO `sys_log` VALUES ('190', 'admin', '操作组织机构', '2017-08-18 16:48:49');
INSERT INTO `sys_log` VALUES ('191', 'admin', '操作角色', '2017-08-18 16:57:42');
INSERT INTO `sys_log` VALUES ('192', 'admin', '操作日志', '2017-08-18 16:57:44');
INSERT INTO `sys_log` VALUES ('193', 'admin', '操作用户', '2017-08-18 16:57:48');
INSERT INTO `sys_log` VALUES ('194', 'admin', '操作资源', '2017-08-18 16:57:50');
INSERT INTO `sys_log` VALUES ('195', 'admin', '操作角色', '2017-08-18 16:57:52');
INSERT INTO `sys_log` VALUES ('196', 'admin', '操作资源', '2017-08-18 16:57:54');
INSERT INTO `sys_log` VALUES ('197', 'admin', '操作日志', '2017-08-18 16:57:55');
INSERT INTO `sys_log` VALUES ('198', 'admin', '操作用户', '2017-08-18 16:59:02');
INSERT INTO `sys_log` VALUES ('199', 'admin', '操作组织机构', '2017-08-18 16:59:06');
INSERT INTO `sys_log` VALUES ('200', 'admin', '操作角色', '2017-08-18 16:59:07');
INSERT INTO `sys_log` VALUES ('201', 'admin', '操作日志', '2017-08-18 16:59:10');
INSERT INTO `sys_log` VALUES ('202', 'admin', '操作角色', '2017-08-18 16:59:11');
INSERT INTO `sys_log` VALUES ('203', 'admin', '操作资源', '2017-08-18 16:59:17');
INSERT INTO `sys_log` VALUES ('204', 'admin', '操作日志', '2017-08-18 16:59:19');
INSERT INTO `sys_log` VALUES ('205', 'admin', '操作用户', '2017-08-18 16:59:26');
INSERT INTO `sys_log` VALUES ('206', 'admin', '操作日志', '2017-08-18 16:59:30');
INSERT INTO `sys_log` VALUES ('207', 'admin', '操作用户', '2017-08-18 17:00:04');
INSERT INTO `sys_log` VALUES ('208', 'admin', '操作资源', '2017-08-18 17:00:05');
INSERT INTO `sys_log` VALUES ('209', 'admin', '操作组织机构', '2017-08-18 17:00:23');
INSERT INTO `sys_log` VALUES ('210', 'admin', '操作角色', '2017-08-18 17:00:24');
INSERT INTO `sys_log` VALUES ('211', 'admin', '操作资源', '2017-08-18 17:00:26');
INSERT INTO `sys_log` VALUES ('212', 'admin', '操作用户', '2017-08-19 21:37:13');
INSERT INTO `sys_log` VALUES ('213', 'admin', '操作用户', '2017-08-19 21:37:25');
INSERT INTO `sys_log` VALUES ('214', 'lala', '操作用户', '2017-08-19 21:37:41');
INSERT INTO `sys_log` VALUES ('215', 'lala', '操作组织机构', '2017-08-19 21:37:45');
INSERT INTO `sys_log` VALUES ('216', 'lala', '操作组织机构', '2017-08-19 21:37:47');
INSERT INTO `sys_log` VALUES ('217', 'lala', '操作组织机构', '2017-08-19 21:37:47');
INSERT INTO `sys_log` VALUES ('218', 'admin', '操作用户', '2017-08-19 22:07:37');
INSERT INTO `sys_log` VALUES ('219', 'lala', '操作用户', '2017-08-19 22:21:13');
INSERT INTO `sys_log` VALUES ('220', 'admin', '操作用户', '2017-08-21 10:07:10');
INSERT INTO `sys_log` VALUES ('221', 'admin', '操作组织机构', '2017-08-21 10:07:13');
INSERT INTO `sys_log` VALUES ('222', 'admin', '操作资源', '2017-08-21 10:07:16');
INSERT INTO `sys_log` VALUES ('223', 'admin', '操作用户', '2017-08-21 10:08:16');
INSERT INTO `sys_log` VALUES ('224', 'admin', '操作用户', '2017-08-21 10:57:44');
INSERT INTO `sys_log` VALUES ('225', 'admin', '操作用户', '2017-08-21 10:58:40');
INSERT INTO `sys_log` VALUES ('226', 'admin', '操作用户', '2017-08-21 10:59:24');
INSERT INTO `sys_log` VALUES ('227', 'admin', '操作用户', '2017-08-21 11:03:35');
INSERT INTO `sys_log` VALUES ('228', 'admin', '操作用户', '2017-08-21 11:10:18');
INSERT INTO `sys_log` VALUES ('229', 'admin', '操作用户', '2017-08-21 11:12:55');
INSERT INTO `sys_log` VALUES ('230', 'admin', '操作用户', '2017-08-21 11:13:22');
INSERT INTO `sys_log` VALUES ('231', 'admin', '操作用户', '2017-08-21 11:19:33');
INSERT INTO `sys_log` VALUES ('232', 'admin', '操作用户', '2017-08-21 11:20:21');
INSERT INTO `sys_log` VALUES ('233', 'admin', '操作用户', '2017-08-21 11:23:07');
INSERT INTO `sys_log` VALUES ('234', 'admin', '操作用户', '2017-08-21 11:27:24');
INSERT INTO `sys_log` VALUES ('235', 'admin', '操作用户', '2017-08-21 11:28:16');
INSERT INTO `sys_log` VALUES ('236', 'admin', '操作角色', '2017-08-21 11:28:22');
INSERT INTO `sys_log` VALUES ('237', 'admin', '操作用户', '2017-08-21 11:28:32');
INSERT INTO `sys_log` VALUES ('238', 'admin', '操作日志', '2017-08-21 11:28:34');
INSERT INTO `sys_log` VALUES ('239', 'admin', '操作组织机构', '2017-08-21 11:28:37');
INSERT INTO `sys_log` VALUES ('240', 'admin', '操作组织机构', '2017-08-21 11:28:39');
INSERT INTO `sys_log` VALUES ('241', 'admin', '操作组织机构', '2017-08-21 11:28:39');
INSERT INTO `sys_log` VALUES ('242', 'admin', '操作资源', '2017-08-21 11:28:41');
INSERT INTO `sys_log` VALUES ('243', 'admin', '操作用户', '2017-08-21 11:31:40');
INSERT INTO `sys_log` VALUES ('244', 'admin', '操作用户', '2017-08-21 11:32:52');
INSERT INTO `sys_log` VALUES ('245', 'admin', '操作角色', '2017-08-21 11:33:33');
INSERT INTO `sys_log` VALUES ('246', 'admin', '操作组织机构', '2017-08-21 11:33:41');
INSERT INTO `sys_log` VALUES ('247', 'admin', '操作用户', '2017-08-21 11:33:45');
INSERT INTO `sys_log` VALUES ('248', 'admin', '操作资源', '2017-08-21 11:33:49');
INSERT INTO `sys_log` VALUES ('249', 'admin', '操作用户', '2017-08-21 13:07:46');
INSERT INTO `sys_log` VALUES ('250', 'admin', '操作用户', '2017-08-21 13:16:42');
INSERT INTO `sys_log` VALUES ('251', 'admin', '操作用户', '2017-08-21 13:18:12');
INSERT INTO `sys_log` VALUES ('252', 'admin', '操作用户', '2017-08-21 13:24:28');
INSERT INTO `sys_log` VALUES ('253', 'admin', '操作组织机构', '2017-08-21 13:24:49');
INSERT INTO `sys_log` VALUES ('254', 'admin', '操作日志', '2017-08-21 13:24:53');
INSERT INTO `sys_log` VALUES ('255', 'admin', '操作用户', '2017-08-21 13:27:27');
INSERT INTO `sys_log` VALUES ('256', 'admin', '操作日志', '2017-08-21 13:27:33');
INSERT INTO `sys_log` VALUES ('257', 'admin', '操作用户', '2017-08-21 13:29:20');
INSERT INTO `sys_log` VALUES ('258', 'admin', '操作资源', '2017-08-21 13:29:23');
INSERT INTO `sys_log` VALUES ('259', 'admin', '操作用户', '2017-08-21 13:29:53');
INSERT INTO `sys_log` VALUES ('260', 'admin', '操作用户', '2017-08-21 13:30:09');
INSERT INTO `sys_log` VALUES ('261', 'admin', '操作用户', '2017-08-21 13:30:10');
INSERT INTO `sys_log` VALUES ('262', 'admin', '操作资源', '2017-08-21 13:31:16');
INSERT INTO `sys_log` VALUES ('263', 'admin', '操作用户', '2017-08-21 13:31:47');
INSERT INTO `sys_log` VALUES ('264', 'admin', '操作用户', '2017-08-21 13:31:48');
INSERT INTO `sys_log` VALUES ('265', 'admin', '操作用户', '2017-08-21 13:32:18');
INSERT INTO `sys_log` VALUES ('266', 'admin', '操作用户', '2017-08-21 13:34:38');
INSERT INTO `sys_log` VALUES ('267', 'admin', '操作用户', '2017-08-21 13:34:44');
INSERT INTO `sys_log` VALUES ('268', 'admin', '操作用户', '2017-08-21 13:34:46');
INSERT INTO `sys_log` VALUES ('269', 'admin', '操作角色', '2017-08-21 13:34:46');
INSERT INTO `sys_log` VALUES ('270', 'admin', '操作用户', '2017-08-21 13:34:52');
INSERT INTO `sys_log` VALUES ('271', 'admin', '操作角色', '2017-08-21 13:34:52');
INSERT INTO `sys_log` VALUES ('272', 'admin', '操作用户', '2017-08-21 13:34:54');
INSERT INTO `sys_log` VALUES ('273', 'admin', '操作组织机构', '2017-08-21 13:34:54');
INSERT INTO `sys_log` VALUES ('274', 'admin', '操作用户', '2017-08-21 13:35:03');
INSERT INTO `sys_log` VALUES ('275', 'admin', '操作用户', '2017-08-21 13:35:16');
INSERT INTO `sys_log` VALUES ('276', 'admin', '操作角色', '2017-08-21 13:35:16');
INSERT INTO `sys_log` VALUES ('277', 'admin', '操作用户', '2017-08-21 13:35:21');
INSERT INTO `sys_log` VALUES ('278', 'admin', '操作用户', '2017-08-21 13:35:26');
INSERT INTO `sys_log` VALUES ('279', 'admin', '操作用户', '2017-08-21 13:35:27');
INSERT INTO `sys_log` VALUES ('280', 'admin', '操作用户', '2017-08-21 13:35:30');
INSERT INTO `sys_log` VALUES ('281', 'admin', '操作用户', '2017-08-21 13:35:41');
INSERT INTO `sys_log` VALUES ('282', 'admin', '操作用户', '2017-08-21 13:35:42');
INSERT INTO `sys_log` VALUES ('283', 'admin', '操作用户', '2017-08-21 13:35:45');
INSERT INTO `sys_log` VALUES ('284', 'admin', '操作用户', '2017-08-21 13:35:48');
INSERT INTO `sys_log` VALUES ('285', 'admin', '操作用户', '2017-08-21 13:43:26');
INSERT INTO `sys_log` VALUES ('286', 'admin', '操作日志', '2017-08-21 13:43:33');
INSERT INTO `sys_log` VALUES ('287', 'admin', '操作资源', '2017-08-21 13:43:39');
INSERT INTO `sys_log` VALUES ('288', 'admin', '操作资源', '2017-08-21 13:43:47');
INSERT INTO `sys_log` VALUES ('289', 'admin', '操作用户', '2017-08-21 13:43:52');
INSERT INTO `sys_log` VALUES ('290', 'admin', '操作用户', '2017-08-21 13:43:54');
INSERT INTO `sys_log` VALUES ('291', 'admin', '操作组织机构', '2017-08-21 13:43:54');
INSERT INTO `sys_log` VALUES ('292', 'admin', '操作用户', '2017-08-21 13:44:00');
INSERT INTO `sys_log` VALUES ('293', 'admin', '操作组织机构', '2017-08-21 13:44:00');
INSERT INTO `sys_log` VALUES ('294', 'admin', '操作用户', '2017-08-21 13:44:05');
INSERT INTO `sys_log` VALUES ('295', 'admin', '操作组织机构', '2017-08-21 13:44:07');
INSERT INTO `sys_log` VALUES ('296', 'admin', '操作角色', '2017-08-21 13:44:09');
INSERT INTO `sys_log` VALUES ('297', 'admin', '操作用户', '2017-08-23 13:24:10');
INSERT INTO `sys_log` VALUES ('298', 'admin', '操作角色', '2017-08-23 13:24:16');
INSERT INTO `sys_log` VALUES ('299', 'admin', '操作组织机构', '2017-08-23 13:24:17');
INSERT INTO `sys_log` VALUES ('300', 'admin', '操作用户', '2017-08-23 13:24:18');
INSERT INTO `sys_log` VALUES ('301', 'admin', '操作资源', '2017-08-23 13:24:19');
INSERT INTO `sys_log` VALUES ('302', 'admin', '操作日志', '2017-08-23 13:24:20');
INSERT INTO `sys_log` VALUES ('303', 'admin', '操作用户', '2017-08-23 13:30:01');
INSERT INTO `sys_log` VALUES ('304', 'admin', '操作日志', '2017-08-23 13:30:04');
INSERT INTO `sys_log` VALUES ('305', 'admin', '操作用户', '2017-08-23 13:30:44');
INSERT INTO `sys_log` VALUES ('306', 'admin', '操作日志', '2017-08-23 13:30:50');
INSERT INTO `sys_log` VALUES ('307', 'admin', '操作日志', '2017-08-23 13:31:16');
INSERT INTO `sys_log` VALUES ('308', 'admin', '操作用户', '2017-08-23 13:31:25');
INSERT INTO `sys_log` VALUES ('309', 'admin', '操作日志', '2017-08-23 13:31:46');
INSERT INTO `sys_log` VALUES ('310', 'admin', '操作用户', '2017-08-23 13:33:33');
INSERT INTO `sys_log` VALUES ('311', 'admin', '操作日志', '2017-08-23 13:33:35');
INSERT INTO `sys_log` VALUES ('312', 'admin', '操作用户', '2017-08-27 10:30:16');
INSERT INTO `sys_log` VALUES ('313', 'admin', '操作角色', '2017-08-27 10:30:20');
INSERT INTO `sys_log` VALUES ('314', 'admin', '操作角色', '2017-08-27 10:30:59');
INSERT INTO `sys_log` VALUES ('315', 'admin', '操作用户', '2017-08-27 10:35:41');
INSERT INTO `sys_log` VALUES ('316', 'admin', '操作角色', '2017-08-27 10:35:44');
INSERT INTO `sys_log` VALUES ('317', 'admin', '操作用户', '2017-08-27 10:36:38');
INSERT INTO `sys_log` VALUES ('318', 'admin', '操作角色', '2017-08-27 10:36:41');
INSERT INTO `sys_log` VALUES ('319', 'admin', '操作用户', '2017-08-27 10:38:01');
INSERT INTO `sys_log` VALUES ('320', 'admin', '操作角色', '2017-08-27 10:38:05');
INSERT INTO `sys_log` VALUES ('321', 'admin', '操作用户', '2017-08-27 10:40:16');
INSERT INTO `sys_log` VALUES ('322', 'admin', '操作组织机构', '2017-08-27 10:40:20');
INSERT INTO `sys_log` VALUES ('323', 'admin', '操作组织机构', '2017-08-27 10:40:32');
INSERT INTO `sys_log` VALUES ('324', 'admin', '操作组织机构', '2017-08-27 10:40:32');
INSERT INTO `sys_log` VALUES ('325', 'admin', '操作组织机构', '2017-08-27 10:40:32');
INSERT INTO `sys_log` VALUES ('326', 'admin', '操作组织机构', '2017-08-27 10:40:32');
INSERT INTO `sys_log` VALUES ('327', 'admin', '操作组织机构', '2017-08-27 10:40:39');
INSERT INTO `sys_log` VALUES ('328', 'admin', '操作组织机构', '2017-08-27 10:40:41');
INSERT INTO `sys_log` VALUES ('329', 'admin', '操作组织机构', '2017-08-27 10:40:47');
INSERT INTO `sys_log` VALUES ('330', 'admin', '操作组织机构', '2017-08-27 10:40:48');
INSERT INTO `sys_log` VALUES ('331', 'admin', '操作角色', '2017-08-27 10:40:54');
INSERT INTO `sys_log` VALUES ('332', 'admin', '操作用户', '2017-08-27 10:44:06');
INSERT INTO `sys_log` VALUES ('333', 'admin', '操作角色', '2017-08-27 10:44:08');
INSERT INTO `sys_log` VALUES ('334', 'admin', '操作用户', '2017-08-27 10:49:02');
INSERT INTO `sys_log` VALUES ('335', 'admin', '操作角色', '2017-08-27 10:49:05');
INSERT INTO `sys_log` VALUES ('336', 'admin', '操作用户', '2017-08-27 10:51:17');
INSERT INTO `sys_log` VALUES ('337', 'admin', '操作角色', '2017-08-27 10:51:19');
INSERT INTO `sys_log` VALUES ('338', 'admin', '操作用户', '2017-08-27 10:53:44');
INSERT INTO `sys_log` VALUES ('339', 'admin', '操作角色', '2017-08-27 10:53:46');
INSERT INTO `sys_log` VALUES ('340', 'admin', '操作角色', '2017-08-27 10:53:57');
INSERT INTO `sys_log` VALUES ('341', 'admin', '操作角色', '2017-08-27 10:54:00');
INSERT INTO `sys_log` VALUES ('342', 'admin', '操作用户', '2017-08-27 10:54:06');
INSERT INTO `sys_log` VALUES ('343', 'admin', '操作组织机构', '2017-08-27 10:54:08');
INSERT INTO `sys_log` VALUES ('344', 'admin', '操作用户', '2017-08-27 10:54:20');
INSERT INTO `sys_log` VALUES ('345', 'admin', '操作用户', '2017-08-27 10:54:23');
INSERT INTO `sys_log` VALUES ('346', 'admin', '操作角色', '2017-08-27 10:54:32');
INSERT INTO `sys_log` VALUES ('347', 'admin', '操作角色', '2017-08-27 10:54:58');
INSERT INTO `sys_log` VALUES ('348', 'admin', '操作资源', '2017-08-27 10:56:28');
INSERT INTO `sys_log` VALUES ('349', 'admin', '操作资源', '2017-08-27 10:56:31');
INSERT INTO `sys_log` VALUES ('350', 'admin', '操作资源', '2017-08-27 10:57:18');
INSERT INTO `sys_log` VALUES ('351', 'admin', '操作资源', '2017-08-27 10:57:18');
INSERT INTO `sys_log` VALUES ('352', 'admin', '操作资源', '2017-08-27 10:57:21');
INSERT INTO `sys_log` VALUES ('353', 'admin', '操作资源', '2017-08-27 10:57:26');
INSERT INTO `sys_log` VALUES ('354', 'admin', '操作资源', '2017-08-27 10:57:26');
INSERT INTO `sys_log` VALUES ('355', 'admin', '操作资源', '2017-08-27 10:57:28');
INSERT INTO `sys_log` VALUES ('356', 'admin', '操作资源', '2017-08-27 10:57:35');
INSERT INTO `sys_log` VALUES ('357', 'admin', '操作资源', '2017-08-27 10:58:12');
INSERT INTO `sys_log` VALUES ('358', 'admin', '操作资源', '2017-08-27 10:58:12');
INSERT INTO `sys_log` VALUES ('359', 'admin', '操作资源', '2017-08-27 10:58:22');
INSERT INTO `sys_log` VALUES ('360', 'admin', '操作资源', '2017-08-27 10:58:29');
INSERT INTO `sys_log` VALUES ('361', 'admin', '操作资源', '2017-08-27 11:11:22');
INSERT INTO `sys_log` VALUES ('362', 'admin', '操作资源', '2017-08-27 11:11:22');
INSERT INTO `sys_log` VALUES ('363', 'admin', '操作资源', '2017-08-27 11:11:24');
INSERT INTO `sys_log` VALUES ('364', 'admin', '操作资源', '2017-08-27 11:11:29');
INSERT INTO `sys_log` VALUES ('365', 'admin', '操作资源', '2017-08-27 11:11:29');
INSERT INTO `sys_log` VALUES ('366', 'admin', '操作资源', '2017-08-27 11:11:37');
INSERT INTO `sys_log` VALUES ('367', 'admin', '操作资源', '2017-08-27 11:11:40');
INSERT INTO `sys_log` VALUES ('368', 'admin', '操作资源', '2017-08-27 11:11:41');
INSERT INTO `sys_log` VALUES ('369', 'admin', '操作资源', '2017-08-27 11:11:44');
INSERT INTO `sys_log` VALUES ('370', 'admin', '操作资源', '2017-08-27 11:11:49');
INSERT INTO `sys_log` VALUES ('371', 'admin', '操作用户', '2017-08-27 14:36:05');
INSERT INTO `sys_log` VALUES ('372', 'admin', '操作用户', '2017-08-27 14:42:04');
INSERT INTO `sys_log` VALUES ('373', 'admin', '操作用户', '2017-08-27 14:45:11');
INSERT INTO `sys_log` VALUES ('374', 'admin', '操作用户', '2017-08-27 14:47:25');
INSERT INTO `sys_log` VALUES ('375', 'admin', '操作用户', '2017-08-27 14:49:08');
INSERT INTO `sys_log` VALUES ('376', 'admin', '操作用户', '2017-08-27 14:51:16');
INSERT INTO `sys_log` VALUES ('377', 'admin', '操作用户', '2017-08-27 14:53:51');
INSERT INTO `sys_log` VALUES ('378', 'admin', '操作用户', '2017-08-27 14:56:52');
INSERT INTO `sys_log` VALUES ('379', 'admin', '操作用户', '2017-08-27 14:59:50');
INSERT INTO `sys_log` VALUES ('380', 'admin', '操作用户', '2017-08-27 15:02:08');
INSERT INTO `sys_log` VALUES ('381', 'admin', '操作用户', '2017-08-27 15:05:56');
INSERT INTO `sys_log` VALUES ('382', 'admin', '操作用户', '2017-08-27 15:07:08');
INSERT INTO `sys_log` VALUES ('383', 'admin', '操作用户', '2017-08-27 15:07:15');
INSERT INTO `sys_log` VALUES ('384', 'admin', '操作组织机构', '2017-08-27 15:07:45');
INSERT INTO `sys_log` VALUES ('385', 'admin', '操作用户', '2017-08-27 15:09:05');
INSERT INTO `sys_log` VALUES ('386', 'admin', '操作组织机构', '2017-08-27 15:09:08');
INSERT INTO `sys_log` VALUES ('387', 'admin', '操作用户', '2017-08-27 15:10:19');
INSERT INTO `sys_log` VALUES ('388', 'admin', '操作组织机构', '2017-08-27 15:10:22');
INSERT INTO `sys_log` VALUES ('389', 'admin', '操作组织机构', '2017-08-27 15:10:23');
INSERT INTO `sys_log` VALUES ('390', 'admin', '操作组织机构', '2017-08-27 15:10:24');
INSERT INTO `sys_log` VALUES ('391', 'admin', '操作用户', '2017-08-27 15:10:27');
INSERT INTO `sys_log` VALUES ('392', 'admin', '操作资源', '2017-08-27 15:10:32');
INSERT INTO `sys_log` VALUES ('393', 'admin', '操作角色', '2017-08-27 15:10:43');
INSERT INTO `sys_log` VALUES ('394', 'admin', '操作资源', '2017-08-27 15:10:48');
INSERT INTO `sys_log` VALUES ('395', 'admin', '操作角色', '2017-08-27 15:10:48');
INSERT INTO `sys_log` VALUES ('396', 'admin', '操作角色', '2017-08-27 15:11:04');
INSERT INTO `sys_log` VALUES ('397', 'admin', '操作角色', '2017-08-27 15:11:04');
INSERT INTO `sys_log` VALUES ('398', 'admin', '操作角色', '2017-08-27 15:11:08');
INSERT INTO `sys_log` VALUES ('399', 'admin', '操作资源', '2017-08-27 15:11:11');
INSERT INTO `sys_log` VALUES ('400', 'admin', '操作角色', '2017-08-27 15:11:11');
INSERT INTO `sys_log` VALUES ('401', 'admin', '操作角色', '2017-08-27 15:11:17');
INSERT INTO `sys_log` VALUES ('402', 'admin', '操作角色', '2017-08-27 15:11:18');
INSERT INTO `sys_log` VALUES ('403', 'admin', '操作资源', '2017-08-27 15:11:20');
INSERT INTO `sys_log` VALUES ('404', 'admin', '操作角色', '2017-08-27 15:11:20');
INSERT INTO `sys_log` VALUES ('405', 'admin', '操作资源', '2017-08-27 15:11:25');
INSERT INTO `sys_log` VALUES ('406', 'admin', '操作角色', '2017-08-27 15:11:25');
INSERT INTO `sys_log` VALUES ('407', 'admin', '操作资源', '2017-08-27 15:11:30');
INSERT INTO `sys_log` VALUES ('408', 'admin', '操作角色', '2017-08-27 15:11:30');
INSERT INTO `sys_log` VALUES ('409', 'admin', '操作角色', '2017-08-27 15:11:37');
INSERT INTO `sys_log` VALUES ('410', 'admin', '操作角色', '2017-08-27 15:11:37');
INSERT INTO `sys_log` VALUES ('411', 'admin', '操作资源', '2017-08-27 15:11:40');
INSERT INTO `sys_log` VALUES ('412', 'admin', '操作角色', '2017-08-27 15:11:40');
INSERT INTO `sys_log` VALUES ('413', 'admin', '操作资源', '2017-08-27 15:11:48');
INSERT INTO `sys_log` VALUES ('414', 'admin', '操作角色', '2017-08-27 15:11:48');
INSERT INTO `sys_log` VALUES ('415', 'admin', '操作角色', '2017-08-27 15:11:52');
INSERT INTO `sys_log` VALUES ('416', 'admin', '操作角色', '2017-08-27 15:11:53');
INSERT INTO `sys_log` VALUES ('417', 'admin', '操作资源', '2017-08-27 15:13:07');
INSERT INTO `sys_log` VALUES ('418', 'admin', '操作角色', '2017-08-27 15:13:07');
INSERT INTO `sys_log` VALUES ('419', 'admin', '操作用户', '2017-08-27 15:14:10');
INSERT INTO `sys_log` VALUES ('420', 'admin', '操作角色', '2017-08-27 15:14:17');
INSERT INTO `sys_log` VALUES ('421', 'admin', '操作资源', '2017-08-27 15:14:19');
INSERT INTO `sys_log` VALUES ('422', 'admin', '操作角色', '2017-08-27 15:14:19');
INSERT INTO `sys_log` VALUES ('423', 'admin', '操作角色', '2017-08-27 15:15:54');
INSERT INTO `sys_log` VALUES ('424', 'admin', '操作资源', '2017-08-27 15:15:56');
INSERT INTO `sys_log` VALUES ('425', 'admin', '操作角色', '2017-08-27 15:15:56');
INSERT INTO `sys_log` VALUES ('426', 'admin', '操作角色', '2017-08-27 15:16:30');
INSERT INTO `sys_log` VALUES ('427', 'admin', '操作角色', '2017-08-27 15:16:30');
INSERT INTO `sys_log` VALUES ('428', 'admin', '操作资源', '2017-08-27 15:16:39');
INSERT INTO `sys_log` VALUES ('429', 'admin', '操作角色', '2017-08-27 15:16:39');
INSERT INTO `sys_log` VALUES ('430', 'admin', '操作资源', '2017-08-27 15:17:16');
INSERT INTO `sys_log` VALUES ('431', 'admin', '操作角色', '2017-08-27 15:17:16');
INSERT INTO `sys_log` VALUES ('432', 'admin', '操作用户', '2017-08-27 15:17:27');
INSERT INTO `sys_log` VALUES ('433', 'admin', '操作角色', '2017-08-27 15:17:31');
INSERT INTO `sys_log` VALUES ('434', 'admin', '操作资源', '2017-08-27 15:17:32');
INSERT INTO `sys_log` VALUES ('435', 'admin', '操作角色', '2017-08-27 15:17:32');
INSERT INTO `sys_log` VALUES ('436', 'admin', '操作资源', '2017-08-27 15:17:37');
INSERT INTO `sys_log` VALUES ('437', 'admin', '操作角色', '2017-08-27 15:17:37');
INSERT INTO `sys_log` VALUES ('438', 'admin', '操作资源', '2017-08-27 15:17:41');
INSERT INTO `sys_log` VALUES ('439', 'admin', '操作角色', '2017-08-27 15:17:41');
INSERT INTO `sys_log` VALUES ('440', 'admin', '操作用户', '2017-08-27 15:18:13');
INSERT INTO `sys_log` VALUES ('441', 'admin', '操作角色', '2017-08-27 15:18:17');
INSERT INTO `sys_log` VALUES ('442', 'admin', '操作资源', '2017-08-27 15:18:17');
INSERT INTO `sys_log` VALUES ('443', 'admin', '操作角色', '2017-08-27 15:18:17');
INSERT INTO `sys_log` VALUES ('444', 'admin', '操作资源', '2017-08-27 15:18:24');
INSERT INTO `sys_log` VALUES ('445', 'admin', '操作角色', '2017-08-27 15:18:24');
INSERT INTO `sys_log` VALUES ('446', 'admin', '操作资源', '2017-08-27 15:18:52');
INSERT INTO `sys_log` VALUES ('447', 'admin', '操作角色', '2017-08-27 15:18:52');
INSERT INTO `sys_log` VALUES ('448', 'admin', '操作资源', '2017-08-27 15:18:56');
INSERT INTO `sys_log` VALUES ('449', 'admin', '操作角色', '2017-08-27 15:18:56');
INSERT INTO `sys_log` VALUES ('450', 'admin', '操作用户', '2017-08-27 15:20:24');
INSERT INTO `sys_log` VALUES ('451', 'admin', '操作角色', '2017-08-27 15:20:28');
INSERT INTO `sys_log` VALUES ('452', 'admin', '操作资源', '2017-08-27 15:20:30');
INSERT INTO `sys_log` VALUES ('453', 'admin', '操作角色', '2017-08-27 15:20:30');
INSERT INTO `sys_log` VALUES ('454', 'admin', '操作用户', '2017-08-27 15:24:01');
INSERT INTO `sys_log` VALUES ('455', 'admin', '操作角色', '2017-08-27 15:24:06');
INSERT INTO `sys_log` VALUES ('456', 'admin', '操作资源', '2017-08-27 15:24:07');
INSERT INTO `sys_log` VALUES ('457', 'admin', '操作角色', '2017-08-27 15:24:07');
INSERT INTO `sys_log` VALUES ('458', 'admin', '操作用户', '2017-08-27 15:25:53');
INSERT INTO `sys_log` VALUES ('459', 'admin', '操作角色', '2017-08-27 15:25:57');
INSERT INTO `sys_log` VALUES ('460', 'admin', '操作资源', '2017-08-27 15:25:58');
INSERT INTO `sys_log` VALUES ('461', 'admin', '操作角色', '2017-08-27 15:25:59');
INSERT INTO `sys_log` VALUES ('462', 'admin', '操作用户', '2017-08-27 15:27:44');
INSERT INTO `sys_log` VALUES ('463', 'admin', '操作角色', '2017-08-27 15:27:51');
INSERT INTO `sys_log` VALUES ('464', 'admin', '操作资源', '2017-08-27 15:27:52');
INSERT INTO `sys_log` VALUES ('465', 'admin', '操作角色', '2017-08-27 15:27:53');
INSERT INTO `sys_log` VALUES ('466', 'admin', '操作用户', '2017-08-27 15:28:17');
INSERT INTO `sys_log` VALUES ('467', 'admin', '操作角色', '2017-08-27 15:28:23');
INSERT INTO `sys_log` VALUES ('468', 'admin', '操作资源', '2017-08-27 15:28:24');
INSERT INTO `sys_log` VALUES ('469', 'admin', '操作角色', '2017-08-27 15:28:24');
INSERT INTO `sys_log` VALUES ('470', 'admin', '操作资源', '2017-08-27 15:28:24');
INSERT INTO `sys_log` VALUES ('471', 'admin', '操作角色', '2017-08-27 15:28:24');
INSERT INTO `sys_log` VALUES ('472', 'admin', '操作资源', '2017-08-27 15:28:27');
INSERT INTO `sys_log` VALUES ('473', 'admin', '操作角色', '2017-08-27 15:28:27');
INSERT INTO `sys_log` VALUES ('474', 'admin', '操作资源', '2017-08-27 15:28:37');
INSERT INTO `sys_log` VALUES ('475', 'admin', '操作角色', '2017-08-27 15:28:37');
INSERT INTO `sys_log` VALUES ('476', 'admin', '操作资源', '2017-08-27 15:28:43');
INSERT INTO `sys_log` VALUES ('477', 'admin', '操作角色', '2017-08-27 15:28:43');
INSERT INTO `sys_log` VALUES ('478', 'admin', '操作资源', '2017-08-27 15:28:50');
INSERT INTO `sys_log` VALUES ('479', 'admin', '操作角色', '2017-08-27 15:28:50');
INSERT INTO `sys_log` VALUES ('480', 'admin', '操作资源', '2017-08-27 15:29:01');
INSERT INTO `sys_log` VALUES ('481', 'admin', '操作角色', '2017-08-27 15:29:01');
INSERT INTO `sys_log` VALUES ('482', 'admin', '操作资源', '2017-08-27 15:29:35');
INSERT INTO `sys_log` VALUES ('483', 'admin', '操作角色', '2017-08-27 15:29:35');
INSERT INTO `sys_log` VALUES ('484', 'admin', '操作资源', '2017-08-27 15:31:05');
INSERT INTO `sys_log` VALUES ('485', 'admin', '操作角色', '2017-08-27 15:31:05');
INSERT INTO `sys_log` VALUES ('486', 'admin', '操作资源', '2017-08-27 15:31:09');
INSERT INTO `sys_log` VALUES ('487', 'admin', '操作角色', '2017-08-27 15:31:09');
INSERT INTO `sys_log` VALUES ('488', 'admin', '操作资源', '2017-08-27 15:31:12');
INSERT INTO `sys_log` VALUES ('489', 'admin', '操作角色', '2017-08-27 15:31:13');
INSERT INTO `sys_log` VALUES ('490', 'admin', '操作资源', '2017-08-27 15:31:16');
INSERT INTO `sys_log` VALUES ('491', 'admin', '操作角色', '2017-08-27 15:31:16');
INSERT INTO `sys_log` VALUES ('492', 'admin', '操作用户', '2017-08-27 15:34:32');
INSERT INTO `sys_log` VALUES ('493', 'admin', '操作角色', '2017-08-27 15:34:40');
INSERT INTO `sys_log` VALUES ('494', 'admin', '操作资源', '2017-08-27 15:34:41');
INSERT INTO `sys_log` VALUES ('495', 'admin', '操作角色', '2017-08-27 15:34:41');
INSERT INTO `sys_log` VALUES ('496', 'admin', '操作资源', '2017-08-27 15:34:41');
INSERT INTO `sys_log` VALUES ('497', 'admin', '操作角色', '2017-08-27 15:34:41');
INSERT INTO `sys_log` VALUES ('498', 'admin', '操作资源', '2017-08-27 15:34:44');
INSERT INTO `sys_log` VALUES ('499', 'admin', '操作角色', '2017-08-27 15:34:44');
INSERT INTO `sys_log` VALUES ('500', 'admin', '操作角色', '2017-08-27 15:34:51');
INSERT INTO `sys_log` VALUES ('501', 'admin', '操作资源', '2017-08-27 15:34:52');
INSERT INTO `sys_log` VALUES ('502', 'admin', '操作角色', '2017-08-27 15:34:52');
INSERT INTO `sys_log` VALUES ('503', 'admin', '操作资源', '2017-08-27 15:34:52');
INSERT INTO `sys_log` VALUES ('504', 'admin', '操作角色', '2017-08-27 15:34:52');
INSERT INTO `sys_log` VALUES ('505', 'admin', '操作用户', '2017-08-27 15:34:56');
INSERT INTO `sys_log` VALUES ('506', 'admin', '操作用户', '2017-08-27 15:34:59');
INSERT INTO `sys_log` VALUES ('507', 'admin', '操作角色', '2017-08-27 15:34:59');
INSERT INTO `sys_log` VALUES ('508', 'admin', '操作用户', '2017-08-27 15:35:02');
INSERT INTO `sys_log` VALUES ('509', 'admin', '操作角色', '2017-08-27 15:35:02');
INSERT INTO `sys_log` VALUES ('510', 'admin', '操作用户', '2017-08-27 15:35:05');
INSERT INTO `sys_log` VALUES ('511', 'admin', '操作角色', '2017-08-27 15:35:05');
INSERT INTO `sys_log` VALUES ('512', 'admin', '操作用户', '2017-08-27 15:35:07');
INSERT INTO `sys_log` VALUES ('513', 'admin', '操作角色', '2017-08-27 15:35:08');
INSERT INTO `sys_log` VALUES ('514', 'admin', '操作用户', '2017-08-27 15:35:10');
INSERT INTO `sys_log` VALUES ('515', 'admin', '操作角色', '2017-08-27 15:35:10');
INSERT INTO `sys_log` VALUES ('516', 'admin', '操作用户', '2017-08-27 15:35:17');
INSERT INTO `sys_log` VALUES ('517', 'admin', '操作资源', '2017-08-27 15:35:19');
INSERT INTO `sys_log` VALUES ('518', 'admin', '操作角色', '2017-08-27 15:35:19');
INSERT INTO `sys_log` VALUES ('519', 'admin', '操作用户', '2017-08-27 15:36:08');
INSERT INTO `sys_log` VALUES ('520', 'admin', '操作角色', '2017-08-27 15:36:11');
INSERT INTO `sys_log` VALUES ('521', 'admin', '操作资源', '2017-08-27 15:36:13');
INSERT INTO `sys_log` VALUES ('522', 'admin', '操作角色', '2017-08-27 15:36:13');
INSERT INTO `sys_log` VALUES ('523', 'admin', '操作用户', '2017-08-27 15:36:39');
INSERT INTO `sys_log` VALUES ('524', 'admin', '操作角色', '2017-08-27 15:36:42');
INSERT INTO `sys_log` VALUES ('525', 'admin', '操作资源', '2017-08-27 15:36:44');
INSERT INTO `sys_log` VALUES ('526', 'admin', '操作角色', '2017-08-27 15:36:44');
INSERT INTO `sys_log` VALUES ('527', 'admin', '操作用户', '2017-08-27 15:37:07');
INSERT INTO `sys_log` VALUES ('528', 'admin', '操作角色', '2017-08-27 15:37:11');
INSERT INTO `sys_log` VALUES ('529', 'admin', '操作资源', '2017-08-27 15:37:12');
INSERT INTO `sys_log` VALUES ('530', 'admin', '操作角色', '2017-08-27 15:37:13');
INSERT INTO `sys_log` VALUES ('531', 'admin', '操作用户', '2017-08-27 15:37:28');
INSERT INTO `sys_log` VALUES ('532', 'admin', '操作角色', '2017-08-27 15:37:30');
INSERT INTO `sys_log` VALUES ('533', 'admin', '操作资源', '2017-08-27 15:37:31');
INSERT INTO `sys_log` VALUES ('534', 'admin', '操作角色', '2017-08-27 15:37:31');
INSERT INTO `sys_log` VALUES ('535', 'admin', '操作用户', '2017-08-27 15:38:01');
INSERT INTO `sys_log` VALUES ('536', 'admin', '操作角色', '2017-08-27 15:38:05');
INSERT INTO `sys_log` VALUES ('537', 'admin', '操作资源', '2017-08-27 15:38:06');
INSERT INTO `sys_log` VALUES ('538', 'admin', '操作角色', '2017-08-27 15:38:06');
INSERT INTO `sys_log` VALUES ('539', 'admin', '操作用户', '2017-08-27 15:39:16');
INSERT INTO `sys_log` VALUES ('540', 'admin', '操作角色', '2017-08-27 15:39:21');
INSERT INTO `sys_log` VALUES ('541', 'admin', '操作资源', '2017-08-27 15:39:22');
INSERT INTO `sys_log` VALUES ('542', 'admin', '操作角色', '2017-08-27 15:39:22');
INSERT INTO `sys_log` VALUES ('543', 'admin', '操作用户', '2017-08-27 15:41:22');
INSERT INTO `sys_log` VALUES ('544', 'admin', '操作角色', '2017-08-27 15:41:27');
INSERT INTO `sys_log` VALUES ('545', 'admin', '操作资源', '2017-08-27 15:41:31');
INSERT INTO `sys_log` VALUES ('546', 'admin', '操作角色', '2017-08-27 15:41:31');
INSERT INTO `sys_log` VALUES ('547', 'admin', '操作用户', '2017-08-27 15:46:27');
INSERT INTO `sys_log` VALUES ('548', 'admin', '操作角色', '2017-08-27 15:46:32');
INSERT INTO `sys_log` VALUES ('549', 'admin', '操作用户', '2017-08-27 15:48:40');
INSERT INTO `sys_log` VALUES ('550', 'admin', '操作角色', '2017-08-27 15:48:45');
INSERT INTO `sys_log` VALUES ('551', 'admin', '操作资源', '2017-08-27 15:48:46');
INSERT INTO `sys_log` VALUES ('552', 'admin', '操作角色', '2017-08-27 15:48:46');
INSERT INTO `sys_log` VALUES ('553', 'admin', '操作角色', '2017-08-27 15:49:27');
INSERT INTO `sys_log` VALUES ('554', 'admin', '操作角色', '2017-08-27 15:49:27');
INSERT INTO `sys_log` VALUES ('555', 'admin', '操作用户', '2017-08-27 15:51:11');
INSERT INTO `sys_log` VALUES ('556', 'admin', '操作角色', '2017-08-27 15:51:14');
INSERT INTO `sys_log` VALUES ('557', 'admin', '操作用户', '2017-08-27 15:53:51');
INSERT INTO `sys_log` VALUES ('558', 'admin', '操作角色', '2017-08-27 15:53:54');
INSERT INTO `sys_log` VALUES ('559', 'admin', '操作资源', '2017-08-27 15:53:56');
INSERT INTO `sys_log` VALUES ('560', 'admin', '操作角色', '2017-08-27 15:53:56');
INSERT INTO `sys_log` VALUES ('561', 'admin', '操作资源', '2017-08-27 15:53:58');
INSERT INTO `sys_log` VALUES ('562', 'admin', '操作角色', '2017-08-27 15:53:58');
INSERT INTO `sys_log` VALUES ('563', 'admin', '操作用户', '2017-08-27 15:56:52');
INSERT INTO `sys_log` VALUES ('564', 'admin', '操作角色', '2017-08-27 15:56:55');
INSERT INTO `sys_log` VALUES ('565', 'admin', '操作资源', '2017-08-27 15:56:56');
INSERT INTO `sys_log` VALUES ('566', 'admin', '操作角色', '2017-08-27 15:56:57');
INSERT INTO `sys_log` VALUES ('567', 'admin', '操作资源', '2017-08-27 15:56:59');
INSERT INTO `sys_log` VALUES ('568', 'admin', '操作角色', '2017-08-27 15:56:59');
INSERT INTO `sys_log` VALUES ('569', 'admin', '操作资源', '2017-08-27 15:57:30');
INSERT INTO `sys_log` VALUES ('570', 'admin', '操作角色', '2017-08-27 15:57:30');
INSERT INTO `sys_log` VALUES ('571', 'admin', '操作用户', '2017-08-27 16:00:19');
INSERT INTO `sys_log` VALUES ('572', 'admin', '操作角色', '2017-08-27 16:00:23');
INSERT INTO `sys_log` VALUES ('573', 'admin', '操作资源', '2017-08-27 16:00:24');
INSERT INTO `sys_log` VALUES ('574', 'admin', '操作角色', '2017-08-27 16:00:24');
INSERT INTO `sys_log` VALUES ('575', 'admin', '操作资源', '2017-08-27 16:00:30');
INSERT INTO `sys_log` VALUES ('576', 'admin', '操作角色', '2017-08-27 16:00:30');
INSERT INTO `sys_log` VALUES ('577', 'admin', '操作用户', '2017-08-27 16:02:46');
INSERT INTO `sys_log` VALUES ('578', 'admin', '操作角色', '2017-08-27 16:02:50');
INSERT INTO `sys_log` VALUES ('579', 'admin', '操作资源', '2017-08-27 16:02:51');
INSERT INTO `sys_log` VALUES ('580', 'admin', '操作角色', '2017-08-27 16:02:52');
INSERT INTO `sys_log` VALUES ('581', 'admin', '操作资源', '2017-08-27 16:02:58');
INSERT INTO `sys_log` VALUES ('582', 'admin', '操作角色', '2017-08-27 16:02:58');
INSERT INTO `sys_log` VALUES ('583', 'admin', '操作资源', '2017-08-27 16:03:52');
INSERT INTO `sys_log` VALUES ('584', 'admin', '操作角色', '2017-08-27 16:03:52');
INSERT INTO `sys_log` VALUES ('585', 'admin', '操作资源', '2017-08-27 16:04:45');
INSERT INTO `sys_log` VALUES ('586', 'admin', '操作角色', '2017-08-27 16:04:46');
INSERT INTO `sys_log` VALUES ('587', 'admin', '操作资源', '2017-08-27 16:05:07');
INSERT INTO `sys_log` VALUES ('588', 'admin', '操作角色', '2017-08-27 16:05:07');
INSERT INTO `sys_log` VALUES ('589', 'admin', '操作用户', '2017-08-27 16:06:49');
INSERT INTO `sys_log` VALUES ('590', 'admin', '操作角色', '2017-08-27 16:06:55');
INSERT INTO `sys_log` VALUES ('591', 'admin', '操作资源', '2017-08-27 16:06:57');
INSERT INTO `sys_log` VALUES ('592', 'admin', '操作角色', '2017-08-27 16:06:57');
INSERT INTO `sys_log` VALUES ('593', 'admin', '操作用户', '2017-08-27 16:07:49');
INSERT INTO `sys_log` VALUES ('594', 'admin', '操作用户', '2017-08-27 16:08:49');
INSERT INTO `sys_log` VALUES ('595', 'admin', '操作角色', '2017-08-27 16:08:49');
INSERT INTO `sys_log` VALUES ('596', 'admin', '操作用户', '2017-08-27 16:08:55');
INSERT INTO `sys_log` VALUES ('597', 'admin', '操作角色', '2017-08-27 16:08:55');
INSERT INTO `sys_log` VALUES ('598', 'admin', '操作用户', '2017-08-27 16:09:53');
INSERT INTO `sys_log` VALUES ('599', 'admin', '操作角色', '2017-08-27 16:09:58');
INSERT INTO `sys_log` VALUES ('600', 'admin', '操作资源', '2017-08-27 16:10:00');
INSERT INTO `sys_log` VALUES ('601', 'admin', '操作角色', '2017-08-27 16:10:00');
INSERT INTO `sys_log` VALUES ('602', 'admin', '操作用户', '2017-08-27 16:12:02');
INSERT INTO `sys_log` VALUES ('603', 'admin', '操作角色', '2017-08-27 16:12:06');
INSERT INTO `sys_log` VALUES ('604', 'admin', '操作资源', '2017-08-27 16:12:10');
INSERT INTO `sys_log` VALUES ('605', 'admin', '操作角色', '2017-08-27 16:12:10');
INSERT INTO `sys_log` VALUES ('606', 'admin', '操作用户', '2017-08-27 16:14:00');
INSERT INTO `sys_log` VALUES ('607', 'admin', '操作角色', '2017-08-27 16:14:05');
INSERT INTO `sys_log` VALUES ('608', 'admin', '操作资源', '2017-08-27 16:14:06');
INSERT INTO `sys_log` VALUES ('609', 'admin', '操作角色', '2017-08-27 16:14:06');
INSERT INTO `sys_log` VALUES ('610', 'admin', '操作用户', '2017-08-27 16:14:45');
INSERT INTO `sys_log` VALUES ('611', 'admin', '操作角色', '2017-08-27 16:14:50');
INSERT INTO `sys_log` VALUES ('612', 'admin', '操作资源', '2017-08-27 16:14:51');
INSERT INTO `sys_log` VALUES ('613', 'admin', '操作角色', '2017-08-27 16:14:51');
INSERT INTO `sys_log` VALUES ('614', 'admin', '操作用户', '2017-08-27 16:15:32');
INSERT INTO `sys_log` VALUES ('615', 'admin', '操作角色', '2017-08-27 16:15:36');
INSERT INTO `sys_log` VALUES ('616', 'admin', '操作资源', '2017-08-27 16:15:38');
INSERT INTO `sys_log` VALUES ('617', 'admin', '操作角色', '2017-08-27 16:15:38');
INSERT INTO `sys_log` VALUES ('618', 'admin', '操作用户', '2017-08-27 16:18:57');
INSERT INTO `sys_log` VALUES ('619', 'admin', '操作角色', '2017-08-27 16:19:01');
INSERT INTO `sys_log` VALUES ('620', 'admin', '操作资源', '2017-08-27 16:19:02');
INSERT INTO `sys_log` VALUES ('621', 'admin', '操作角色', '2017-08-27 16:19:02');
INSERT INTO `sys_log` VALUES ('622', 'admin', '操作用户', '2017-08-27 16:22:11');
INSERT INTO `sys_log` VALUES ('623', 'admin', '操作角色', '2017-08-27 16:22:16');
INSERT INTO `sys_log` VALUES ('624', 'admin', '操作资源', '2017-08-27 16:22:18');
INSERT INTO `sys_log` VALUES ('625', 'admin', '操作角色', '2017-08-27 16:22:18');
INSERT INTO `sys_log` VALUES ('626', 'admin', '操作用户', '2017-08-27 16:24:23');
INSERT INTO `sys_log` VALUES ('627', 'admin', '操作角色', '2017-08-27 16:24:26');
INSERT INTO `sys_log` VALUES ('628', 'admin', '操作资源', '2017-08-27 16:24:28');
INSERT INTO `sys_log` VALUES ('629', 'admin', '操作角色', '2017-08-27 16:24:28');
INSERT INTO `sys_log` VALUES ('630', 'admin', '操作资源', '2017-08-27 16:24:31');
INSERT INTO `sys_log` VALUES ('631', 'admin', '操作角色', '2017-08-27 16:24:31');
INSERT INTO `sys_log` VALUES ('632', 'admin', '操作资源', '2017-08-27 16:24:37');
INSERT INTO `sys_log` VALUES ('633', 'admin', '操作角色', '2017-08-27 16:24:37');

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sys_organization_parent_id` (`parent_id`),
  KEY `idx_sys_organization_parent_ids` (`parent_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
INSERT INTO `sys_organization` VALUES ('1', 'XX公司', '0', '0/', '1');
INSERT INTO `sys_organization` VALUES ('2', '部门1', '1', '0/1/', '1');
INSERT INTO `sys_organization` VALUES ('3', '部门2', '2', '0/1/', '1');
INSERT INTO `sys_organization` VALUES ('5', '部门4', '2', '0/1/2/4/', '0');
INSERT INTO `sys_organization` VALUES ('6', '部门5', '5', null, '0');
INSERT INTO `sys_organization` VALUES ('7', '部门6', '6', null, '0');
INSERT INTO `sys_organization` VALUES ('8', '部门99', '7', null, '0');

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('1', '资源', 'menu', '', null, '1', 'all', '1');
INSERT INTO `sys_resource` VALUES ('11', '组织机构管理', 'menu', '/organization/index', '1', '2', 'organizations', '1');
INSERT INTO `sys_resource` VALUES ('12', '组织机构新增', 'button', '', '11', '3', 'organization:create', '1');
INSERT INTO `sys_resource` VALUES ('13', '组织机构修改', 'button', '', '11', '3', 'organization:update', '1');
INSERT INTO `sys_resource` VALUES ('14', '组织机构删除', 'button', '', '11', '3', 'organization:delete', '1');
INSERT INTO `sys_resource` VALUES ('15', '组织机构查看', 'button', '', '11', '3', 'organization:view', '1');
INSERT INTO `sys_resource` VALUES ('21', '用户管理', 'menu', '/user/index', '1', '2', 'users', '1');
INSERT INTO `sys_resource` VALUES ('22', '用户新增', 'button', '', '21', '3', 'user:create', '1');
INSERT INTO `sys_resource` VALUES ('23', '用户修改', 'button', '', '21', '3', 'user:update', '1');
INSERT INTO `sys_resource` VALUES ('24', '用户删除', 'button', '', '21', '3', 'user:delete', '1');
INSERT INTO `sys_resource` VALUES ('25', '用户查看', 'button', '', '21', '3', 'user:view', '1');
INSERT INTO `sys_resource` VALUES ('31', '资源管理', 'menu', '/resource/index', '1', '2', 'resources', '1');
INSERT INTO `sys_resource` VALUES ('32', '资源新增', 'button', '', '31', '3', 'resource:create', '1');
INSERT INTO `sys_resource` VALUES ('33', '资源修改', 'button', '', '31', '3', 'resource:update', '1');
INSERT INTO `sys_resource` VALUES ('34', '资源删除', 'button', '', '31', '3', 'resource:delete', '1');
INSERT INTO `sys_resource` VALUES ('35', '资源查看', 'button', '', '31', '3', 'resource:view', '1');
INSERT INTO `sys_resource` VALUES ('41', '角色管理', 'menu', '/role/index', '1', '2', 'roles', '1');
INSERT INTO `sys_resource` VALUES ('42', '角色新增', 'button', '', '41', '3', 'role:create', '1');
INSERT INTO `sys_resource` VALUES ('43', '角色修改', 'button', '', '41', '3', 'role:update', '1');
INSERT INTO `sys_resource` VALUES ('44', '角色删除', 'button', '', '41', '3', 'role:delete', '1');
INSERT INTO `sys_resource` VALUES ('45', '角色查看', 'button', '', '41', '3', 'role:view', '1');
INSERT INTO `sys_resource` VALUES ('51', '日志管理', 'menu', '/log/index', '1', '2', 'logs', '1');
INSERT INTO `sys_resource` VALUES ('52', '日志查看', 'button', '', '51', '3', 'log:view', '1');
INSERT INTO `sys_resource` VALUES ('53', '嘿嘿嘿', 'menu', '', '1', '2', 'hhs', '1');
INSERT INTO `sys_resource` VALUES ('54', '嘻嘻嘻', 'button', '', '53', '3', '312312', '0');
INSERT INTO `sys_resource` VALUES ('55', '办公管理', 'menu', '', null, '1', 'oas', '1');
INSERT INTO `sys_resource` VALUES ('56', '请假申请', 'menu', '/oa/apply', '55', '2', 'oa:apply', '1');
INSERT INTO `sys_resource` VALUES ('57', '请假审批', 'menu', '/oa/approve', '55', '2', 'oa:approve', '1');
INSERT INTO `sys_resource` VALUES ('58', '销假', 'menu', '/oa/xj', '55', '2', 'oa:xj', '1');
INSERT INTO `sys_resource` VALUES ('59', '请假历史', 'menu', '/oa/his', '55', '2', 'oa:his', '1');
INSERT INTO `sys_resource` VALUES ('60', '调整申请', 'menu', '/oa/updateapply', '55', '2', 'oa:updateapply', '1');
INSERT INTO `sys_resource` VALUES ('61', '模型管理', 'menu', '/model/modelList', '1', '2', 'model', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'admin', '超级管理员', '1');
INSERT INTO `sys_role` VALUES ('2', '小弟', '端茶倒水', '1');
INSERT INTO `sys_role` VALUES ('3', '打杂的', '扫地', '1');
INSERT INTO `sys_role` VALUES ('4', '部门经理', '部门的大佬', '1');
INSERT INTO `sys_role` VALUES ('5', '人事', '很厉害的说', '1');
INSERT INTO `sys_role` VALUES ('6', '总经理', '大佬来的', '1');

-- ----------------------------
-- Table structure for sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_roles_id` (`role_id`),
  KEY `fk_resource` (`resource_id`),
  CONSTRAINT `fk_resource` FOREIGN KEY (`resource_id`) REFERENCES `sys_resource` (`id`),
  CONSTRAINT `fk_roles_id` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------
INSERT INTO `sys_role_resource` VALUES ('34', '2', '41');
INSERT INTO `sys_role_resource` VALUES ('35', '2', '42');
INSERT INTO `sys_role_resource` VALUES ('36', '2', '43');
INSERT INTO `sys_role_resource` VALUES ('37', '2', '44');
INSERT INTO `sys_role_resource` VALUES ('38', '2', '45');
INSERT INTO `sys_role_resource` VALUES ('39', '2', '51');
INSERT INTO `sys_role_resource` VALUES ('40', '2', '52');
INSERT INTO `sys_role_resource` VALUES ('78', '3', '55');
INSERT INTO `sys_role_resource` VALUES ('79', '3', '56');
INSERT INTO `sys_role_resource` VALUES ('181', '4', '55');
INSERT INTO `sys_role_resource` VALUES ('182', '4', '56');
INSERT INTO `sys_role_resource` VALUES ('183', '4', '57');
INSERT INTO `sys_role_resource` VALUES ('184', '4', '58');
INSERT INTO `sys_role_resource` VALUES ('185', '4', '59');
INSERT INTO `sys_role_resource` VALUES ('186', '4', '60');
INSERT INTO `sys_role_resource` VALUES ('187', '5', '55');
INSERT INTO `sys_role_resource` VALUES ('188', '5', '56');
INSERT INTO `sys_role_resource` VALUES ('189', '5', '57');
INSERT INTO `sys_role_resource` VALUES ('190', '5', '58');
INSERT INTO `sys_role_resource` VALUES ('191', '5', '59');
INSERT INTO `sys_role_resource` VALUES ('192', '5', '60');
INSERT INTO `sys_role_resource` VALUES ('193', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('194', '1', '11');
INSERT INTO `sys_role_resource` VALUES ('195', '1', '12');
INSERT INTO `sys_role_resource` VALUES ('196', '1', '13');
INSERT INTO `sys_role_resource` VALUES ('197', '1', '14');
INSERT INTO `sys_role_resource` VALUES ('198', '1', '15');
INSERT INTO `sys_role_resource` VALUES ('199', '1', '21');
INSERT INTO `sys_role_resource` VALUES ('200', '1', '22');
INSERT INTO `sys_role_resource` VALUES ('201', '1', '23');
INSERT INTO `sys_role_resource` VALUES ('202', '1', '24');
INSERT INTO `sys_role_resource` VALUES ('203', '1', '25');
INSERT INTO `sys_role_resource` VALUES ('204', '1', '31');
INSERT INTO `sys_role_resource` VALUES ('205', '1', '32');
INSERT INTO `sys_role_resource` VALUES ('206', '1', '33');
INSERT INTO `sys_role_resource` VALUES ('207', '1', '34');
INSERT INTO `sys_role_resource` VALUES ('208', '1', '35');
INSERT INTO `sys_role_resource` VALUES ('209', '1', '41');
INSERT INTO `sys_role_resource` VALUES ('210', '1', '42');
INSERT INTO `sys_role_resource` VALUES ('211', '1', '43');
INSERT INTO `sys_role_resource` VALUES ('212', '1', '44');
INSERT INTO `sys_role_resource` VALUES ('213', '1', '45');
INSERT INTO `sys_role_resource` VALUES ('214', '1', '51');
INSERT INTO `sys_role_resource` VALUES ('215', '1', '52');
INSERT INTO `sys_role_resource` VALUES ('216', '1', '61');
INSERT INTO `sys_role_resource` VALUES ('217', '1', '55');
INSERT INTO `sys_role_resource` VALUES ('218', '1', '56');
INSERT INTO `sys_role_resource` VALUES ('219', '1', '57');
INSERT INTO `sys_role_resource` VALUES ('220', '1', '58');
INSERT INTO `sys_role_resource` VALUES ('221', '1', '59');
INSERT INTO `sys_role_resource` VALUES ('222', '1', '60');
INSERT INTO `sys_role_resource` VALUES ('223', '6', '1');
INSERT INTO `sys_role_resource` VALUES ('224', '6', '11');
INSERT INTO `sys_role_resource` VALUES ('225', '6', '12');
INSERT INTO `sys_role_resource` VALUES ('226', '6', '13');
INSERT INTO `sys_role_resource` VALUES ('227', '6', '14');
INSERT INTO `sys_role_resource` VALUES ('228', '6', '15');
INSERT INTO `sys_role_resource` VALUES ('229', '6', '55');
INSERT INTO `sys_role_resource` VALUES ('230', '6', '56');
INSERT INTO `sys_role_resource` VALUES ('231', '6', '57');
INSERT INTO `sys_role_resource` VALUES ('232', '6', '58');
INSERT INTO `sys_role_resource` VALUES ('233', '6', '59');
INSERT INTO `sys_role_resource` VALUES ('234', '6', '60');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_user_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', 'admin', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '0', '2017-10-13 09:36:05', '2017-10-13 09:36:05');
INSERT INTO `sys_user` VALUES ('4', '2', 'zzz', '8041fae7660fc4096e1f360861b2b76b', 'bf20f07f5b5841b023b9222a912133a3', '0', '2017-08-17 10:20:13', '2017-08-17 10:20:10');
INSERT INTO `sys_user` VALUES ('6', '3', 'lala', '9e5fc697be5ccd6b3130016b0927f2c9', '889fe87379145254a5c154a32a37d6fe', '0', '2017-08-19 22:21:13', '2017-08-19 22:21:13');
INSERT INTO `sys_user` VALUES ('7', '3', 'heiehi', '043b4d47aeff67faff57fba03def33ee', '3d433dab7f456713f37239de690a1207', '0', '2017-08-17 22:15:33', null);
INSERT INTO `sys_user` VALUES ('8', '2', 'wang', 'caed35920e4a3ac70a125098a28f7ca4', '6b58dbb8ea983d9e84c389895edb39b0', '0', '2017-10-06 11:11:30', '2017-10-06 11:11:30');
INSERT INTO `sys_user` VALUES ('9', '3', 'zhang', '6e4361ea27a09593987c7c6c1f64110d', 'a43198c3335459300315be7e29fe0d6f', '0', '2017-10-13 09:36:11', '2017-10-13 09:36:11');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('8', '6', '3');
INSERT INTO `sys_user_role` VALUES ('13', '1', '1');
INSERT INTO `sys_user_role` VALUES ('14', '1', '2');
INSERT INTO `sys_user_role` VALUES ('15', '1', '4');
INSERT INTO `sys_user_role` VALUES ('22', '9', '5');
INSERT INTO `sys_user_role` VALUES ('23', '8', '6');
