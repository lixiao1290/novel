/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : yii2advanced

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-07-07 16:43:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('超级管理员', '6', '1467880965');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1467880865', '1467880865');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1467880866', '1467880866');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1467880867', '1467880867');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/site/do', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1467880868', '1467880868');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/user/create', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/user/delete', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/user/index', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/user/update', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('/user/view', '2', null, null, null, '1467880869', '1467880869');
INSERT INTO `auth_item` VALUES ('root', '2', null, null, null, '1467880890', '1467880890');
INSERT INTO `auth_item` VALUES ('超级管理员', '1', null, null, null, '1467880928', '1467880928');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('root', '/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('root', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('root', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('root', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('root', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('root', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('root', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('root', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('root', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('root', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('root', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('root', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('root', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('root', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('root', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('root', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('root', '/site/*');
INSERT INTO `auth_item_child` VALUES ('root', '/site/do');
INSERT INTO `auth_item_child` VALUES ('root', '/site/error');
INSERT INTO `auth_item_child` VALUES ('root', '/site/index');
INSERT INTO `auth_item_child` VALUES ('root', '/site/login');
INSERT INTO `auth_item_child` VALUES ('root', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('root', '/user/*');
INSERT INTO `auth_item_child` VALUES ('root', '/user/create');
INSERT INTO `auth_item_child` VALUES ('root', '/user/delete');
INSERT INTO `auth_item_child` VALUES ('root', '/user/index');
INSERT INTO `auth_item_child` VALUES ('root', '/user/update');
INSERT INTO `auth_item_child` VALUES ('root', '/user/view');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', 'li', '5c2dqj8Bxt6tItId0t1XFeStJ0myBLqp', '$2y$13$j70nxL5j3eMIwygnyCkJu.S2ihvkMIgriZX/h/kyw/V/xt/Xyr.ie', null, 'li@q.com', '10', '10', '1467810209', '1467810209');
