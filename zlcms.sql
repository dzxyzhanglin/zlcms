/*
Navicat MySQL Data Transfer

Source Server         : Mysql_localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zlcms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-06-02 11:01:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yzn_addons
-- ----------------------------
DROP TABLE IF EXISTS `yzn_addons`;
CREATE TABLE `yzn_addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '插件名或标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `config` text COMMENT '配置',
  `author` varchar(40) DEFAULT '' COMMENT '作者',
  `version` varchar(20) DEFAULT '' COMMENT '版本号',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `has_adminlist` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台列表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of yzn_addons
-- ----------------------------
INSERT INTO `yzn_addons` VALUES ('2', 'database', '数据库备份', '简单的数据库备份', '1', '{\"path\":\"\\/Data\\/\",\"part\":\"20971520\",\"compress\":\"1\",\"level\":\"9\"}', '御宅男', '1.0.0', '1554790573', '1');

-- ----------------------------
-- Table structure for yzn_admin
-- ----------------------------
DROP TABLE IF EXISTS `yzn_admin`;
CREATE TABLE `yzn_admin` (
  `userid` smallint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) DEFAULT NULL COMMENT '管理账号',
  `password` varchar(32) DEFAULT NULL COMMENT '管理密码',
  `roleid` tinyint(4) unsigned DEFAULT '1',
  `encrypt` varchar(6) DEFAULT NULL COMMENT '加密因子',
  `nickname` char(16) NOT NULL COMMENT '昵称',
  `last_login_time` int(10) unsigned DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) unsigned DEFAULT '0' COMMENT '最后登录IP',
  `email` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '会员状态',
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of yzn_admin
-- ----------------------------
INSERT INTO `yzn_admin` VALUES ('1', 'admin', 'aafe32203ccc259349dd9696c9310e6f', '1', 'd9hhee', '御宅男', '1559432152', '0', '530765310@qq.com', '1');
INSERT INTO `yzn_admin` VALUES ('3', 'test', '3fed751c32c7df7dbe163f663fb2c6b1', '1', 'vpTk3s', 'test', '1556234600', '0', 'test@163.com', '1');
INSERT INTO `yzn_admin` VALUES ('4', 'test2', 'b78113852d7b311b48ecab5eb616186d', '1', 'zcWPM4', 'tt', '1559437506', '0', 't2@163.com', '1');

-- ----------------------------
-- Table structure for yzn_adminlog
-- ----------------------------
DROP TABLE IF EXISTS `yzn_adminlog`;
CREATE TABLE `yzn_adminlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `uid` smallint(3) NOT NULL DEFAULT '0' COMMENT '操作者ID',
  `info` text COMMENT '说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0',
  `get` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=614 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of yzn_adminlog
-- ----------------------------
INSERT INTO `yzn_adminlog` VALUES ('613', '1', '1', '提示语:操作成功！', '1559444253', '0', '/zlcms/public/index.php/cms/category/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('612', '1', '1', '提示语:操作成功！', '1559444252', '0', '/zlcms/public/index.php/cms/category/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('611', '1', '1', '提示语:设置更新成功', '1559444217', '0', '/zlcms/public/index.php/admin/config/setting/group/pppp.html');
INSERT INTO `yzn_adminlog` VALUES ('610', '1', '1', '提示语:更新缓存成功！', '1559443115', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('609', '0', '1', '提示语:模型被禁用！', '1559443054', '0', '/zlcms/public/index.php/cms/cms/classlist/catid/22.html');
INSERT INTO `yzn_adminlog` VALUES ('608', '1', '1', '提示语:更新缓存成功！', '1559442993', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('607', '0', '1', '提示语:模型被禁用！', '1559442981', '0', '/zlcms/public/index.php/cms/cms/classlist/catid/22.html');
INSERT INTO `yzn_adminlog` VALUES ('606', '1', '1', '提示语:操作成功！', '1559442977', '0', '/zlcms/public/index.php/cms/category/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('605', '1', '1', '提示语:操作成功！', '1559442969', '0', '/zlcms/public/index.php/cms/category/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('604', '1', '1', '提示语:操作成功！', '1559442946', '0', '/zlcms/public/index.php/cms/category/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('603', '0', '1', '提示语:模型被禁用！', '1559442869', '0', '/zlcms/public/index.php/cms/cms/classlist/catid/22.html');
INSERT INTO `yzn_adminlog` VALUES ('602', '0', '1', '提示语:配置项分组只能为字母', '1559442839', '0', '/zlcms/public/index.php/cms/category/edit.html');
INSERT INTO `yzn_adminlog` VALUES ('601', '1', '1', '提示语:更新缓存成功！', '1559442491', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('600', '1', '1', '提示语:添加成功！', '1559442352', '0', '/zlcms/public/index.php/cms/category/add.html');
INSERT INTO `yzn_adminlog` VALUES ('599', '0', '1', '提示语:栏目状态不得为空', '1559442298', '0', '/zlcms/public/index.php/cms/category/add.html');
INSERT INTO `yzn_adminlog` VALUES ('598', '0', '1', '提示语:栏目状态不得为空', '1559442083', '0', '/zlcms/public/index.php/cms/category/add.html');
INSERT INTO `yzn_adminlog` VALUES ('597', '0', '1', '提示语:所属模型不得为空', '1559441835', '0', '/zlcms/public/index.php/cms/category/add.html');
INSERT INTO `yzn_adminlog` VALUES ('596', '1', '1', '提示语:修改成功！', '1559440966', '0', '/zlcms/public/index.php/cms/category/edit.html');
INSERT INTO `yzn_adminlog` VALUES ('595', '1', '1', '提示语:修改成功！', '1559440904', '0', '/zlcms/public/index.php/cms/category/edit.html');
INSERT INTO `yzn_adminlog` VALUES ('594', '1', '1', '提示语:添加成功！', '1559440781', '0', '/zlcms/public/index.php/cms/category/add.html');
INSERT INTO `yzn_adminlog` VALUES ('593', '1', '1', '提示语:更新缓存成功！', '1559440229', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('592', '1', '1', '提示语:栏目删除成功！', '1559440227', '0', '/zlcms/public/index.php/cms/category/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('591', '1', '1', '提示语:更新缓存成功！', '1559440219', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('590', '1', '1', '提示语:栏目删除成功！', '1559440217', '0', '/zlcms/public/index.php/cms/category/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('589', '1', '1', '提示语:更新缓存成功！', '1559440213', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('588', '1', '1', '提示语:栏目删除成功！', '1559440211', '0', '/zlcms/public/index.php/cms/category/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('587', '1', '1', '提示语:更新缓存成功！', '1559440208', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('586', '1', '1', '提示语:栏目删除成功！', '1559440206', '0', '/zlcms/public/index.php/cms/category/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('585', '1', '1', '提示语:更新缓存成功！', '1559440202', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('584', '1', '1', '提示语:栏目删除成功！', '1559440201', '0', '/zlcms/public/index.php/cms/category/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('583', '1', '1', '提示语:更新缓存成功！', '1559440187', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('582', '1', '1', '提示语:栏目删除成功！', '1559440185', '0', '/zlcms/public/index.php/cms/category/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('581', '1', '1', '提示语:更新缓存成功！', '1559440181', '0', '/zlcms/public/index.php/cms/category/public_cache.html');
INSERT INTO `yzn_adminlog` VALUES ('580', '1', '1', '提示语:栏目删除成功！', '1559440179', '0', '/zlcms/public/index.php/cms/category/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('579', '1', '1', '提示语:删除成功！', '1559440144', '0', '/zlcms/public/index.php/cms/cms/delete/catid/14.html');
INSERT INTO `yzn_adminlog` VALUES ('578', '1', '1', '提示语:删除成功！', '1559440130', '0', '/zlcms/public/index.php/cms/cms/delete/catid/14.html');
INSERT INTO `yzn_adminlog` VALUES ('577', '1', '1', '提示语:删除成功！', '1559440122', '0', '/zlcms/public/index.php/cms/cms/delete/catid/5.html');
INSERT INTO `yzn_adminlog` VALUES ('576', '1', '1', '提示语:删除日志成功！', '1559440099', '0', '/zlcms/public/index.php/admin/adminlog/deletelog.html');
INSERT INTO `yzn_adminlog` VALUES ('521', '1', '0', '提示语:注销成功！', '1559231676', '0', '/zlcms/public/index.php/admin/index/logout.html');
INSERT INTO `yzn_adminlog` VALUES ('522', '1', '1', '提示语:恭喜您，登陆成功', '1559231707', '0', '/zlcms/public/index.php/admin/index/login.html');
INSERT INTO `yzn_adminlog` VALUES ('523', '1', '1', '提示语:操作成功！', '1559231794', '0', '/zlcms/public/index.php/admin/menu/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('524', '1', '1', '提示语:操作成功！', '1559231794', '0', '/zlcms/public/index.php/admin/menu/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('525', '1', '1', '提示语:操作成功！', '1559231795', '0', '/zlcms/public/index.php/admin/menu/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('526', '1', '1', '提示语:操作成功！', '1559231795', '0', '/zlcms/public/index.php/admin/menu/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('527', '1', '1', '提示语:操作成功！', '1559231796', '0', '/zlcms/public/index.php/admin/menu/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('528', '1', '1', '提示语:清理缓存', '1559231802', '0', '/zlcms/public/index.php/admin/index/cache.html?type=all&_=1559231798594');
INSERT INTO `yzn_adminlog` VALUES ('529', '1', '1', '提示语:模块卸载成功！一键清理缓存后生效！', '1559231823', '0', '/zlcms/public/index.php/admin/module/uninstall.html');
INSERT INTO `yzn_adminlog` VALUES ('530', '1', '1', '提示语:清理缓存', '1559231853', '0', '/zlcms/public/index.php/admin/index/cache.html?type=all&_=1559231835128');
INSERT INTO `yzn_adminlog` VALUES ('531', '1', '1', '提示语:插件卸载成功！清除浏览器缓存和框架缓存后生效！', '1559232155', '0', '/zlcms/public/index.php/addons/addons/uninstall.html');
INSERT INTO `yzn_adminlog` VALUES ('532', '0', '0', '提示语:请先登陆', '1559432136', '0', '/zlcms/public/index.php/admin');
INSERT INTO `yzn_adminlog` VALUES ('533', '0', '0', '提示语:用户名或者密码错误，登陆失败！', '1559432145', '0', '/zlcms/public/index.php/admin/index/login.html');
INSERT INTO `yzn_adminlog` VALUES ('534', '1', '1', '提示语:恭喜您，登陆成功', '1559432152', '0', '/zlcms/public/index.php/admin/index/login.html');
INSERT INTO `yzn_adminlog` VALUES ('535', '1', '1', '提示语:删除成功！', '1559432320', '0', '/zlcms/public/index.php/cms/cms/delete/catid/9.html');
INSERT INTO `yzn_adminlog` VALUES ('536', '1', '1', '提示语:操作成功！', '1559432654', '0', '/zlcms/public/index.php/cms/cms/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('537', '1', '1', '提示语:操作成功！', '1559432658', '0', '/zlcms/public/index.php/cms/cms/setstate.html');
INSERT INTO `yzn_adminlog` VALUES ('538', '1', '1', '提示语:删除成功！', '1559432964', '0', '/zlcms/public/index.php/cms/tags/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('539', '1', '1', '提示语:删除成功！', '1559432973', '0', '/zlcms/public/index.php/cms/tags/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('540', '1', '1', '提示语:删除成功！', '1559432980', '0', '/zlcms/public/index.php/cms/tags/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('541', '1', '1', '提示语:删除成功！', '1559432997', '0', '/zlcms/public/index.php/cms/cms/delete/catid/9.html');
INSERT INTO `yzn_adminlog` VALUES ('542', '1', '1', '提示语:删除成功！', '1559433006', '0', '/zlcms/public/index.php/cms/cms/delete/catid/9.html');
INSERT INTO `yzn_adminlog` VALUES ('543', '1', '1', '提示语:操作成功！', '1559433016', '0', '/zlcms/public/index.php/cms/cms/add/catid/9.html');
INSERT INTO `yzn_adminlog` VALUES ('544', '1', '1', '提示语:删除成功！', '1559433161', '0', '/zlcms/public/index.php/cms/cms/delete/catid/9.html');
INSERT INTO `yzn_adminlog` VALUES ('545', '1', '1', '提示语:删除菜单成功！', '1559436918', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('546', '1', '1', '提示语:删除菜单成功！', '1559437028', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('547', '1', '1', '提示语:删除菜单成功！', '1559437052', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('548', '1', '1', '提示语:删除菜单成功！', '1559437058', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('549', '0', '1', '提示语:用户名长度不符合要求 3,20', '1559437444', '0', '/zlcms/public/index.php/admin/manager/add.html');
INSERT INTO `yzn_adminlog` VALUES ('550', '0', '1', '提示语:权限组不能为空', '1559437450', '0', '/zlcms/public/index.php/admin/manager/add.html');
INSERT INTO `yzn_adminlog` VALUES ('551', '1', '1', '提示语:添加管理员成功！', '1559437476', '0', '/zlcms/public/index.php/admin/manager/add.html');
INSERT INTO `yzn_adminlog` VALUES ('552', '0', '0', '提示语:请先登陆', '1559437495', '0', '/zlcms/public/index.php/admin/index/index.html');
INSERT INTO `yzn_adminlog` VALUES ('553', '1', '4', '提示语:恭喜您，登陆成功', '1559437506', '0', '/zlcms/public/index.php/admin/index/login.html');
INSERT INTO `yzn_adminlog` VALUES ('554', '1', '4', '提示语:操作成功！', '1559437547', '0', '/zlcms/public/index.php/cms/cms/add/catid/2.html');
INSERT INTO `yzn_adminlog` VALUES ('555', '1', '4', '提示语:设置更新成功', '1559437562', '0', '/zlcms/public/index.php/admin/config/setting/group/base.html');
INSERT INTO `yzn_adminlog` VALUES ('556', '1', '1', '提示语:删除菜单成功！', '1559437639', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('557', '1', '1', '提示语:删除菜单成功！', '1559439625', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('558', '1', '1', '提示语:删除菜单成功！', '1559439632', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('559', '1', '1', '提示语:删除菜单成功！', '1559439641', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('560', '1', '1', '提示语:模块卸载成功！一键清理缓存后生效！', '1559439664', '0', '/zlcms/public/index.php/admin/module/uninstall.html');
INSERT INTO `yzn_adminlog` VALUES ('561', '1', '1', '提示语:清理缓存', '1559439670', '0', '/zlcms/public/index.php/admin/index/cache.html?type=all&_=1559439645097');
INSERT INTO `yzn_adminlog` VALUES ('562', '1', '1', '提示语:删除菜单成功！', '1559439734', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('563', '1', '1', '提示语:删除菜单成功！', '1559439740', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('564', '1', '1', '提示语:删除菜单成功！', '1559439748', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('565', '1', '1', '提示语:删除菜单成功！', '1559439755', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('566', '1', '1', '提示语:删除菜单成功！', '1559439762', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('567', '1', '1', '提示语:编辑成功！', '1559439837', '0', '/zlcms/public/index.php/admin/menu/edit.html');
INSERT INTO `yzn_adminlog` VALUES ('568', '1', '1', '提示语:编辑成功！', '1559439911', '0', '/zlcms/public/index.php/admin/menu/edit.html');
INSERT INTO `yzn_adminlog` VALUES ('569', '1', '1', '提示语:编辑成功！', '1559439941', '0', '/zlcms/public/index.php/admin/menu/edit.html');
INSERT INTO `yzn_adminlog` VALUES ('570', '1', '1', '提示语:编辑成功！', '1559439958', '0', '/zlcms/public/index.php/admin/menu/edit.html');
INSERT INTO `yzn_adminlog` VALUES ('571', '1', '1', '提示语:删除菜单成功！', '1559439970', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('572', '1', '1', '提示语:删除菜单成功！', '1559439975', '0', '/zlcms/public/index.php/admin/menu/delete.html');
INSERT INTO `yzn_adminlog` VALUES ('573', '1', '1', '提示语:编辑成功！', '1559439989', '0', '/zlcms/public/index.php/admin/menu/edit.html');
INSERT INTO `yzn_adminlog` VALUES ('574', '1', '1', '提示语:清理缓存', '1559439995', '0', '/zlcms/public/index.php/admin/index/cache.html?type=all&_=1559439992417');
INSERT INTO `yzn_adminlog` VALUES ('575', '1', '1', '提示语:清理缓存', '1559440060', '0', '/zlcms/public/index.php/admin/index/cache.html?type=all&_=1559440057616');

-- ----------------------------
-- Table structure for yzn_article
-- ----------------------------
DROP TABLE IF EXISTS `yzn_article`;
CREATE TABLE `yzn_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `flag` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '属性',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Tags标签',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `hits` mediumint(8) unsigned DEFAULT '0' COMMENT '点击量',
  `inputtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `img` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '封面图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文章模型模型表';

-- ----------------------------
-- Records of yzn_article
-- ----------------------------

-- ----------------------------
-- Table structure for yzn_article_data
-- ----------------------------
DROP TABLE IF EXISTS `yzn_article_data`;
CREATE TABLE `yzn_article_data` (
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文章模型模型表';

-- ----------------------------
-- Records of yzn_article_data
-- ----------------------------

-- ----------------------------
-- Table structure for yzn_attachment
-- ----------------------------
DROP TABLE IF EXISTS `yzn_attachment`;
CREATE TABLE `yzn_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` char(50) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` char(15) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(64) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorders` int(5) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of yzn_attachment
-- ----------------------------
INSERT INTO `yzn_attachment` VALUES ('1', '1', 'logo.png', 'links', 'images/20190409/7a1ccd14c93fa9a74e3532259b15b499.png', '', '', 'image/png', 'png', '4883', '90546a4d34494aaaa32733926d4c7a1c', '71b454e83893ee2ca290a8ec7a4661b8bdf0ce11', 'local', '1554791549', '1554791549', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('2', '1', 'QQ浏览器截图20181128215118.png', 'cms', 'images/20190409/7a731c60bcea92edd755382563e0bff1.png', '', '', 'image/png', 'png', '117396', 'c2199c59e986a3bdb74e029f5355f77f', '7d91d8e8c052ee89b39dc162d75f564a2f8787a6', 'local', '1554819721', '1554819721', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('3', '1', 'QQ截图20170627215103.png', 'cms', 'images/20190409/95110f740cca3b639ad427ef615f4643.png', '', '', 'image/png', 'png', '24278', '263e5afebdc7d998ef7186d8be4c063d', '6b1893b1e8179bf9158dc92c0cd6f1c4039f11b2', 'local', '1554819745', '1554819745', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('4', '1', 'l.png', 'admin', 'images/20190426/2249e535ceea3f53b9cb9ea2bd7b1c53.png', '', '', 'image/png', 'png', '2860', 'dcf309cc0516ac5723d5047cb7a14f10', 'bf2e91c6dfd4d246df56c459521203b9df38436d', 'local', '1556285692', '1556285692', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('5', '1', 'l.png', 'cms', 'images/20190426/9916842bd85cb925a2e8e36b7cb4fa34.png', '', '', 'image/png', 'png', '2860', 'dcf309cc0516ac5723d5047cb7a14f10', 'bf2e91c6dfd4d246df56c459521203b9df38436d', 'local', '1556286244', '1556286244', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('6', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/aae6e8bee345fea06bd0c9192c06b199.jpg', '', '', 'image/jpeg', 'jpg', '164984', '20457819054f249858bb79ab2c0645b2', 'bc3e86b4abe170a3bf84f42c93a7c736c67a2cbb', 'local', '1556286294', '1556286294', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('7', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/87637576fe7e2f97d17584de55ef17fd.jpg', '', '', 'image/jpeg', 'jpg', '164984', '20457819054f249858bb79ab2c0645b2', 'bc3e86b4abe170a3bf84f42c93a7c736c67a2cbb', 'local', '1556286481', '1556286481', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('8', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/d9a56181d6f5517c65f59589e92a0900.jpg', '', '', 'image/jpeg', 'jpg', '164984', '20457819054f249858bb79ab2c0645b2', 'bc3e86b4abe170a3bf84f42c93a7c736c67a2cbb', 'local', '1556287135', '1556287135', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('9', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/9065cefa826cecfb7d97e60655897530.jpg', '', '', 'image/jpeg', 'jpg', '164984', '20457819054f249858bb79ab2c0645b2', 'bc3e86b4abe170a3bf84f42c93a7c736c67a2cbb', 'local', '1556287194', '1556287194', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('10', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/fb86c869e7820e7f87188b9d0bf99740.jpg', '', '', 'image/jpeg', 'jpg', '164984', '20457819054f249858bb79ab2c0645b2', 'bc3e86b4abe170a3bf84f42c93a7c736c67a2cbb', 'local', '1556287329', '1556287329', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('11', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/1a12d14656327c502719916cd92bb8ce.jpg', '', '', 'image/jpeg', 'jpg', '164984', '20457819054f249858bb79ab2c0645b2', 'bc3e86b4abe170a3bf84f42c93a7c736c67a2cbb', 'local', '1556289737', '1556289737', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('12', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/faca25f327a048d008d5bff771a2b0c1.jpg', '', '', 'image/jpeg', 'jpg', '164984', '20457819054f249858bb79ab2c0645b2', 'bc3e86b4abe170a3bf84f42c93a7c736c67a2cbb', 'local', '1556289764', '1556289764', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('13', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/5e5fd19a621aedd169ea28200d77206a.jpg', '', '', 'image/jpeg', 'jpg', '31615', '58e78055a73e40ba2cb684bf839903b8', '916246d41da221b3f08bc89f29569e1ac897e386', 'local', '1556290114', '1556290114', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('14', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/88ce2bc1437a9414af1d1fcb83cf079f.jpg', '', '', 'image/jpeg', 'jpg', '31615', '58e78055a73e40ba2cb684bf839903b8', '916246d41da221b3f08bc89f29569e1ac897e386', 'local', '1556290236', '1556290236', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('15', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/02932e73a3eae109f63cf9aaa264e29f.jpg', '', '', 'image/jpeg', 'jpg', '31615', '58e78055a73e40ba2cb684bf839903b8', '916246d41da221b3f08bc89f29569e1ac897e386', 'local', '1556290337', '1556290337', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('16', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/256ac66b09e29be4a59a449a419a0949.jpg', '', '', 'image/jpeg', 'jpg', '31615', '58e78055a73e40ba2cb684bf839903b8', '916246d41da221b3f08bc89f29569e1ac897e386', 'local', '1556290397', '1556290397', '100', '1');
INSERT INTO `yzn_attachment` VALUES ('17', '1', 'a76699ac7a14b93fc938284236824ec1.jpg', 'cms', 'images/20190426/7ab2c2315bad1ed41d252b23dda628d8.jpg', '', '', 'image/jpeg', 'jpg', '31615', '58e78055a73e40ba2cb684bf839903b8', '916246d41da221b3f08bc89f29569e1ac897e386', 'local', '1556290434', '1556290434', '100', '1');

-- ----------------------------
-- Table structure for yzn_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `yzn_auth_group`;
CREATE TABLE `yzn_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='权限组表';

-- ----------------------------
-- Records of yzn_auth_group
-- ----------------------------
INSERT INTO `yzn_auth_group` VALUES ('1', 'admin', '1', '超级管理员', '拥有所有权限', '1', '37,91,45,46,47,48,49,50,51,52,53,54,55,55,56,57,58,59,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,92,85,85,111,113,114,115,85,89,90,116,117,118,90,43,27,101,102,103,104,105,106,107,108,109,110,112,44,21,22,23,24,93,94,95,96,97,98,99,100,2,3,4,40,41,42,6,7,16,17,18,39,19,20,8,9,11,12,14,10,15,30,31,32,33,13,5');
INSERT INTO `yzn_auth_group` VALUES ('2', 'admin', '1', '编辑', '编辑', '1', '');

-- ----------------------------
-- Table structure for yzn_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `yzn_auth_rule`;
CREATE TABLE `yzn_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of yzn_auth_rule
-- ----------------------------
INSERT INTO `yzn_auth_rule` VALUES ('1', 'admin', '2', 'admin/index/index', '首页', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('2', 'admin', '2', 'admin/setting/index', '设置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('3', 'admin', '1', 'admin/config/index1', '系统配置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('4', 'admin', '1', 'admin/config/index', '配置管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('5', 'admin', '1', 'admin/adminlog/deletelog', '删除日志', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('6', 'admin', '1', 'admin/config/setting', '网站设置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('7', 'admin', '1', 'admin/menu/index', '菜单管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('8', 'admin', '1', 'admin/manager/index1', '权限管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('9', 'admin', '1', 'admin/manager/index', '管理员管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('10', 'admin', '1', 'admin/authManager/index', '角色管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('11', 'admin', '1', 'admin/manager/add', '添加管理员', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('12', 'admin', '1', 'admin/manager/edit', '编辑管理员', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('13', 'admin', '1', 'admin/adminlog/index', '管理日志', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('14', 'admin', '1', 'admin/manager/del', '删除管理员', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('15', 'admin', '1', 'admin/authManager/createGroup', '添加角色', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('16', 'admin', '1', 'admin/menu/add', '新增菜单', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('17', 'admin', '1', 'admin/menu/edit', '编辑菜单', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('18', 'admin', '1', 'admin/menu/delete', '删除菜单', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('19', 'attachment', '1', 'attachment/attachments/upload', '附件上传', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('20', 'attachment', '1', 'attachment/attachments/delete', '附件删除', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('21', 'addons', '1', 'addons/addons/index2', '插件扩展', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('22', 'addons', '1', 'addons/addons/index', '插件管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('23', 'addons', '1', 'addons/addons/hooks', '行为管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('24', 'addons', '1', 'addons/addons/addonadmin', '插件后台列表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('25', 'admin', '1', 'admin/cloud/index', '在线云平台', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('26', 'admin', '1', 'admin/module/index2', '本地模块', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('27', 'admin', '1', 'admin/module/index', '模块后台列表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('28', 'admin', '1', 'admin/moduleshop/index', '模块商店', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('29', 'admin', '1', 'admin/addonshop/index', '插件商店', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('30', 'admin', '1', 'admin/authManager/editGroup', '编辑角色', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('31', 'admin', '1', 'admin/authManager/deleteGroup', '删除角色', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('32', 'admin', '1', 'admin/authManager/access', '访问授权', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('33', 'admin', '1', 'admin/authManager/writeGroup', '角色授权', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('34', 'admin', '1', 'admin/module/install', '模块安装', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('35', 'admin', '1', 'admin/module/uninstall', '模块卸载', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('36', 'admin', '1', 'admin/module/local', '本地安装', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('37', 'admin', '2', 'admin/index/cache', '缓存更新', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('38', 'admin', '2', 'admin/main/index', '控制面板', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('39', 'attachment', '1', 'attachment/attachments/index', '附件管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('40', 'admin', '1', 'admin/config/add', '新增配置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('41', 'admin', '1', 'admin/config/edit', '编辑配置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('42', 'admin', '1', 'admin/config/del', '删除配置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('43', 'admin', '2', 'admin/module/index1', '模块', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('44', 'addons', '2', 'addons/addons/index1', '扩展', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('45', 'cms', '1', 'cms/cms/index2', '内容管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('46', 'cms', '1', 'cms/cms/index', '管理内容', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('47', 'cms', '1', 'cms/cms/panl', '面板', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('48', 'cms', '1', 'cms/cms/public_categorys', '栏目列表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('49', 'cms', '1', 'cms/cms/classlist', '信息列表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('50', 'cms', '1', 'cms/cms/add', '添加', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('51', 'cms', '1', 'cms/cms/edit', '编辑', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('52', 'cms', '1', 'cms/cms/delete', '删除', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('53', 'cms', '1', 'cms/cms/listorder', '排序', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('54', 'cms', '1', 'cms/cms/setstate', '状态设置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('55', 'cms', '1', 'cms/tags/index', '列表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('56', 'cms', '1', 'cms/tags/add', '添加', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('57', 'cms', '1', 'cms/tags/edit', '编辑', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('58', 'cms', '1', 'cms/tags/delete', '删除', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('59', 'cms', '1', 'cms/category/index1', '相关设置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('60', 'cms', '1', 'cms/setting/index', 'CMS配置', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('61', 'cms', '1', 'cms/category/index', '栏目列表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('62', 'cms', '1', 'cms/category/add', '添加栏目', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('63', 'cms', '1', 'cms/category/singlepage', '添加单页', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('64', 'cms', '1', 'cms/category/wadd', '添加外部链接', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('65', 'cms', '1', 'cms/category/edit', '编辑栏目', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('66', 'cms', '1', 'cms/category/delete', '删除栏目', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('67', 'cms', '1', 'cms/category/public_cache', '更新栏目', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('68', 'cms', '1', 'cms/category/listorder', '排序', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('69', 'cms', '1', 'cms/category/setstate', '状态设置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('70', 'cms', '1', 'cms/models/index', '模型管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('71', 'cms', '1', 'cms/field/index', '字段管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('72', 'cms', '1', 'cms/field/add', '字段添加', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('73', 'cms', '1', 'cms/field/edit', '字段编辑', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('74', 'cms', '1', 'cms/field/delete', '字段删除', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('75', 'cms', '1', 'cms/field/listorder', '字段排序', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('76', 'cms', '1', 'cms/field/setstate', '字段状态', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('77', 'cms', '1', 'cms/field/setsearch', '字段搜索', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('78', 'cms', '1', 'cms/field/setvisible', '字段隐藏', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('79', 'cms', '1', 'cms/field/setrequire', '字段必须', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('80', 'cms', '1', 'cms/models/add', '添加模型', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('81', 'cms', '1', 'cms/models/edit', '修改模型', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('82', 'cms', '1', 'cms/models/delete', '删除模型', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('83', 'cms', '1', 'cms/models/setSub', '模型投稿', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('84', 'cms', '1', 'cms/models/setstate', '设置模型状态', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('85', 'member', '1', 'member/member/index', '列表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('86', 'member', '1', 'member/setting/setting', '会员设置', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('87', 'member', '1', 'member/member/manage', '会员管理', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('88', 'member', '1', 'member/member/userverify', '审核会员', '-1', '');
INSERT INTO `yzn_auth_rule` VALUES ('89', 'member', '1', 'member/group/index1', '会员组', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('90', 'member', '1', 'member/group/index', '列表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('91', 'cms', '2', 'cms/cms/index1', '内容', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('92', 'member', '2', 'member/member/index1', '会员', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('93', 'addons', '1', 'addons/database/index', '数据库备份', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('94', 'addons', '1', 'addons/database/restore', '备份还原', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('95', 'addons', '1', 'addons/database/del', '删除备份', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('96', 'addons', '1', 'addons/database/repair', '修复表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('97', 'addons', '1', 'addons/database/optimize', '优化表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('98', 'addons', '1', 'addons/database/import', '还原表', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('99', 'addons', '1', 'addons/database/export', '备份数据库', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('100', 'addons', '1', 'addons/database/download', '备份数据库下载', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('101', 'links', '1', 'links/links/index', '友情链接', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('102', 'links', '1', 'links/links/add', '添加友情链接', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('103', 'links', '1', 'links/links/edit', '链接编辑', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('104', 'links', '1', 'links/links/delete', '链接删除', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('105', 'links', '1', 'links/links/setstate', '链接状态', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('106', 'links', '1', 'links/links/listorder', '链接排序', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('107', 'links', '1', 'links/links/terms', '分类管理', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('108', 'links', '1', 'links/links/addTerms', '分类新增', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('109', 'links', '1', 'links/links/termsedit', '分类修改', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('110', 'links', '1', 'links/links/termsdelete', '分类删除', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('111', 'member', '1', 'member/member/setstate', '状态设置', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('112', 'sitemap', '1', 'sitemap/index/index', 'SiteMap地图', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('113', 'member', '1', 'member/member/add', '添加', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('114', 'member', '1', 'member/member/edit', '编辑', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('115', 'member', '1', 'member/member/delete', '删除', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('116', 'member', '1', 'member/group/add', '添加', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('117', 'member', '1', 'member/group/edit', '编辑', '1', '');
INSERT INTO `yzn_auth_rule` VALUES ('118', 'member', '1', 'member/group/delete', '删除', '1', '');

-- ----------------------------
-- Table structure for yzn_cache
-- ----------------------------
DROP TABLE IF EXISTS `yzn_cache`;
CREATE TABLE `yzn_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `key` char(100) NOT NULL DEFAULT '' COMMENT '缓存KEY值',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '名称',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `model` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '方法名',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='缓存列队表';

-- ----------------------------
-- Records of yzn_cache
-- ----------------------------
INSERT INTO `yzn_cache` VALUES ('1', 'Config', '网站配置', 'admin', 'Config', 'config_cache', '1');
INSERT INTO `yzn_cache` VALUES ('2', 'Menu', '后台菜单', 'admin', 'Menu', 'menu_cache', '1');
INSERT INTO `yzn_cache` VALUES ('3', 'Module', '可用模块列表', 'admin', 'Module', 'module_cache', '1');
INSERT INTO `yzn_cache` VALUES ('4', 'Model', '模型列表', 'admin', 'Models', 'model_cache', '1');
INSERT INTO `yzn_cache` VALUES ('5', 'ModelField', '模型字段', 'admin', 'ModelField', 'model_field_cache', '1');
INSERT INTO `yzn_cache` VALUES ('6', 'Category', '栏目索引', 'cms', 'Category', 'category_cache', '0');
INSERT INTO `yzn_cache` VALUES ('7', 'Cms_Config', 'CMS配置', 'cms', 'Cms', 'cms_cache', '0');

-- ----------------------------
-- Table structure for yzn_category
-- ----------------------------
DROP TABLE IF EXISTS `yzn_category`;
CREATE TABLE `yzn_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `catname` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `catdir` varchar(30) NOT NULL DEFAULT '' COMMENT '唯一标识',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类别  1栏目  2单页  3外部链接 4配置项',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `arrparentid` varchar(200) NOT NULL DEFAULT '' COMMENT '所有父ID',
  `arrchildid` varchar(200) NOT NULL DEFAULT '' COMMENT '所有子栏目ID',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `image` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '栏目图片',
  `description` mediumtext NOT NULL COMMENT '栏目描述',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `config_group` varchar(255) NOT NULL DEFAULT '' COMMENT '配置项分组 。 ',
  `setting` mediumtext NOT NULL COMMENT '相关配置信息',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of yzn_category
-- ----------------------------
INSERT INTO `yzn_category` VALUES ('2', '公司简介', 'Introduction', '1', '0', '1', '0,1', '2', '0', '0', '关于我们', '', '', 'a:4:{s:10:\"meta_title\";s:12:\"关于我们\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:9:\"page.html\";}', '1', '1');
INSERT INTO `yzn_category` VALUES ('3', '企业文化', 'culture', '1', '0', '1', '0,1', '3', '0', '0', '', '', '', 'a:7:{s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:13:\"category.html\";s:13:\"list_template\";s:9:\"list.html\";s:13:\"show_template\";s:9:\"show.html\";s:13:\"page_template\";s:9:\"page.html\";}', '2', '1');
INSERT INTO `yzn_category` VALUES ('21', '产品介绍', 'p', '2', '1', '0', '0', '21', '0', '0', '', 'product/index', '', 'a:6:{s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:13:\"category.html\";s:13:\"list_template\";s:9:\"list.html\";s:13:\"show_template\";s:9:\"show.html\";}', '100', '1');
INSERT INTO `yzn_category` VALUES ('1', '关于我们', 'about', '3', '0', '0', '0', '1,2,3,22', '1', '0', '11', 'index/index/lists?catid=2', '', 'a:3:{s:10:\"meta_title\";s:32:\"关于我们 - ZLCMS管理系统\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1', '1');
INSERT INTO `yzn_category` VALUES ('22', '配置1', 'p1', '4', '0', '1', '0,1', '22', '0', '0', '', '', 'pppp', 'N;', '100', '1');

-- ----------------------------
-- Table structure for yzn_config
-- ----------------------------
DROP TABLE IF EXISTS `yzn_config`;
CREATE TABLE `yzn_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '配置项',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text COMMENT '配置值',
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Records of yzn_config
-- ----------------------------
INSERT INTO `yzn_config` VALUES ('1', 'web_site_icp', 'text', '备案信息', 'base', '', '', '1551244923', '1554984357', '1', '渝A000001', '99');
INSERT INTO `yzn_config` VALUES ('2', 'web_site_statistics', 'textarea', '站点代码', 'base', '', '', '1551244957', '1551244957', '1', '', '100');
INSERT INTO `yzn_config` VALUES ('3', 'config_group', 'array', '配置分组', 'system', '', '', '1494408414', '1494408414', '1', 'base:基础\r\nemail:邮箱\r\nsystem:系统\r\nupload:上传', '0');
INSERT INTO `yzn_config` VALUES ('4', 'theme', 'text', '主题风格', 'system', '', '', '1541752781', '1541756888', '1', 'default', '1');
INSERT INTO `yzn_config` VALUES ('5', 'upload_image_size', 'text', '图片上传大小限制', 'upload', '', '0为不限制大小，单位：kb', '1540457656', '1552436075', '1', '0', '2');
INSERT INTO `yzn_config` VALUES ('6', 'upload_image_ext', 'text', '允许上传的图片后缀', 'upload', '', '多个后缀用逗号隔开，不填写则不限制类型', '1540457657', '1552436074', '1', 'gif,jpg,jpeg,bmp,png', '1');
INSERT INTO `yzn_config` VALUES ('7', 'upload_file_size', 'text', '文件上传大小限制', 'upload', '', '0为不限制大小，单位：kb', '1540457658', '1552436078', '1', '0', '3');
INSERT INTO `yzn_config` VALUES ('8', 'upload_file_ext', 'text', '允许上传的文件后缀', 'upload', '', '多个后缀用逗号隔开，不填写则不限制类型', '1540457659', '1552436080', '1', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z', '4');
INSERT INTO `yzn_config` VALUES ('9', 'upload_driver', 'radio', '上传驱动', 'upload', 'local:本地', '图片或文件上传驱动', '1541752781', '1552436085', '1', 'local', '9');
INSERT INTO `yzn_config` VALUES ('10', 'upload_thumb_water', 'switch', '添加水印', 'upload', '', '', '1552435063', '1552436080', '1', '1', '5');
INSERT INTO `yzn_config` VALUES ('11', 'upload_thumb_water_pic', 'image', '水印图片', 'upload', '', '只有开启水印功能才生效', '1552435183', '1552436081', '1', '4', '6');
INSERT INTO `yzn_config` VALUES ('12', 'upload_thumb_water_position', 'radio', '水印位置', 'upload', '1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角', '只有开启水印功能才生效', '1552435257', '1552436082', '1', '9', '7');
INSERT INTO `yzn_config` VALUES ('13', 'upload_thumb_water_alpha', 'text', '水印透明度', 'upload', '', '请输入0~100之间的数字，数字越小，透明度越高', '1552435299', '1552436083', '1', '50', '8');
INSERT INTO `yzn_config` VALUES ('14', 'mail_type', 'radio', '邮件发送模式', 'email', '1:SMTP\r\n2:Mail', '', '1553652833', '1553652915', '1', '1', '1');
INSERT INTO `yzn_config` VALUES ('15', 'mail_smtp_host', 'text', '邮件服务器', 'email', '', '错误的配置发送邮件会导致服务器超时', '1553652889', '1553652917', '1', 'smtp.163.com', '2');
INSERT INTO `yzn_config` VALUES ('16', 'mail_smtp_port', 'text', '邮件发送端口', 'email', '', '不加密默认25,SSL默认465,TLS默认587', '1553653165', '1553653292', '1', '465', '3');
INSERT INTO `yzn_config` VALUES ('17', 'mail_auth', 'radio', '身份认证', 'email', '0:关闭\r\n1:开启', '', '1553658375', '1553658392', '1', '1', '4');
INSERT INTO `yzn_config` VALUES ('18', 'mail_smtp_user', 'text', '用户名', 'email', '', '', '1553653267', '1553658393', '1', '', '5');
INSERT INTO `yzn_config` VALUES ('19', 'mail_smtp_pass', 'text', '密码', 'email', '', '', '1553653344', '1553658394', '1', '', '6');
INSERT INTO `yzn_config` VALUES ('20', 'mail_verify_type', 'radio', '验证方式', 'email', '1:TLS\r\n2:SSL', '', '1553653426', '1553658395', '1', '2', '7');
INSERT INTO `yzn_config` VALUES ('21', 'mail_from', 'text', '发件人邮箱', 'email', '', '', '1553653500', '1553658397', '1', '', '8');
INSERT INTO `yzn_config` VALUES ('22', 'web_site_name', 'text', '站点名称', 'base', '', '', '1554984344', '1554984344', '1', 'ZLCMS管理系统', '1');
INSERT INTO `yzn_config` VALUES ('23', 'web_site_keyword', 'text', '站点关键词', 'base', '', '', '1554984415', '1554984415', '1', 'ZLCMS管理系统', '2');
INSERT INTO `yzn_config` VALUES ('24', 'web_site_description', 'textarea', '站点描述', 'base', '', '', '1554984455', '1554984455', '1', 'ZLCMS管理系统1', '3');

-- ----------------------------
-- Table structure for yzn_field_type
-- ----------------------------
DROP TABLE IF EXISTS `yzn_field_type`;
CREATE TABLE `yzn_field_type` (
  `name` varchar(32) NOT NULL COMMENT '字段类型',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '中文类型名',
  `listorder` int(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `default_define` varchar(128) NOT NULL DEFAULT '' COMMENT '默认定义',
  `ifoption` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要设置选项',
  `ifstring` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否自由字符',
  `vrule` varchar(256) NOT NULL DEFAULT '' COMMENT '验证规则',
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='字段类型表';

-- ----------------------------
-- Records of yzn_field_type
-- ----------------------------
INSERT INTO `yzn_field_type` VALUES ('text', '输入框', '1', 'varchar(255) NOT NULL DEFAULT \'\'', '0', '1', '');
INSERT INTO `yzn_field_type` VALUES ('checkbox', '复选框', '2', 'varchar(32) NOT NULL DEFAULT \'\'', '1', '0', '');
INSERT INTO `yzn_field_type` VALUES ('textarea', '多行文本', '3', 'varchar(255) NOT NULL DEFAULT \'\'', '0', '1', '');
INSERT INTO `yzn_field_type` VALUES ('radio', '单选按钮', '4', 'tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'', '1', '0', 'isChsAlphaNum');
INSERT INTO `yzn_field_type` VALUES ('switch', '开关', '5', 'tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', 'isBool');
INSERT INTO `yzn_field_type` VALUES ('array', '数组', '6', 'varchar(512) NOT NULL DEFAULT \'\'', '0', '0', '');
INSERT INTO `yzn_field_type` VALUES ('select', '下拉框', '7', 'tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'', '1', '0', 'isChsAlphaNum');
INSERT INTO `yzn_field_type` VALUES ('image', '单张图', '8', 'int(5) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', 'isNumber');
INSERT INTO `yzn_field_type` VALUES ('tags', '标签', '10', 'varchar(255) NOT NULL DEFAULT \'\'', '0', '1', '');
INSERT INTO `yzn_field_type` VALUES ('number', '数字', '11', 'int(10) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', 'isNumber');
INSERT INTO `yzn_field_type` VALUES ('datetime', '日期和时间', '12', 'int(11) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', '');
INSERT INTO `yzn_field_type` VALUES ('Ueditor', '百度编辑器', '13', 'text NOT NULL', '0', '1', '');
INSERT INTO `yzn_field_type` VALUES ('images', '多张图', '9', 'varchar(256) NOT NULL DEFAULT \'\'', '0', '0', '');
INSERT INTO `yzn_field_type` VALUES ('color', '颜色值', '17', 'varchar(7) NOT NULL DEFAULT \'\'', '0', '0', '');
INSERT INTO `yzn_field_type` VALUES ('files', '多文件', '15', 'varchar(255) NOT NULL DEFAULT \'\'', '0', '0', '');
INSERT INTO `yzn_field_type` VALUES ('summernote', '简洁编辑器', '14', 'text NOT NULL', '0', '1', '');
INSERT INTO `yzn_field_type` VALUES ('file', '单文件', '16', 'int(5) UNSIGNED NOT NULL DEFAULT \'0\'', '0', '0', 'isNumber');

-- ----------------------------
-- Table structure for yzn_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `yzn_guestbook`;
CREATE TABLE `yzn_guestbook` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '您的姓名',
  `flag` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '属性',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `hits` mediumint(8) unsigned DEFAULT '0' COMMENT '点击量',
  `inputtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '您的电话',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '您的邮箱',
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '您的意见或建议',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='留言本模型表';

-- ----------------------------
-- Records of yzn_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for yzn_hooks
-- ----------------------------
DROP TABLE IF EXISTS `yzn_hooks`;
CREATE TABLE `yzn_hooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` text NOT NULL COMMENT '描述',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `addons` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件 ''，''分割',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='插件钩子';

-- ----------------------------
-- Records of yzn_hooks
-- ----------------------------
INSERT INTO `yzn_hooks` VALUES ('1', 'pageHeader', '页面header钩子，一般用于加载插件CSS文件和代码', '1', '1509174020', '');
INSERT INTO `yzn_hooks` VALUES ('2', 'pageFooter', '页面footer钩子，一般用于加载插件JS文件和JS代码', '1', '1509174020', '');

-- ----------------------------
-- Table structure for yzn_links
-- ----------------------------
DROP TABLE IF EXISTS `yzn_links`;
CREATE TABLE `yzn_links` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0:文字链接,1:logo链接',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '链接名称',
  `image` mediumint(8) unsigned NOT NULL COMMENT '链接图片',
  `target` varchar(25) NOT NULL DEFAULT '' COMMENT '链接打开方式',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '链接描述',
  `inputtime` int(11) NOT NULL COMMENT '添加时间',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `termsid` smallint(4) NOT NULL COMMENT '分类id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未通过,1正常,2未审核',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of yzn_links
-- ----------------------------
INSERT INTO `yzn_links` VALUES ('1', '1', 'http://52changdu.com', '畅读小说', '1', '', '网站简介', '1554791551', '100', '1', '1');

-- ----------------------------
-- Table structure for yzn_menu
-- ----------------------------
DROP TABLE IF EXISTS `yzn_menu`;
CREATE TABLE `yzn_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `app` char(20) NOT NULL DEFAULT '' COMMENT '应用标识',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '控制器标识',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '方法标识',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `menu_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '菜单类型 1菜单 2操作',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开发者可见',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `pid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of yzn_menu
-- ----------------------------
INSERT INTO `yzn_menu` VALUES ('3', '设置', 'icon-setup', '0', 'admin', 'setting', 'index', '', '1', '1', '', '0', '100');
INSERT INTO `yzn_menu` VALUES ('5', '扩展', 'icon-tools', '0', 'addons', 'addons', 'index1', '', '1', '1', '', '0', '10');
INSERT INTO `yzn_menu` VALUES ('10', '系统配置', 'icon-zidongxiufu', '3', 'admin', 'config', 'index1', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('11', '配置管理', 'icon-apartment', '10', 'admin', 'config', 'index', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('12', '删除日志', '', '20', 'admin', 'adminlog', 'deletelog', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('13', '网站设置', 'icon-setup', '10', 'admin', 'config', 'setting', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('14', '菜单管理', 'icon-other', '10', 'admin', 'menu', 'index', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('15', '权限管理', 'icon-guanliyuan', '3', 'admin', 'manager', 'index1', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('16', '管理员管理', 'icon-guanliyuan', '15', 'admin', 'manager', 'index', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('18', '添加管理员', '', '16', 'admin', 'manager', 'add', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('19', '编辑管理员', '', '16', 'admin', 'manager', 'edit', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('20', '管理日志', 'icon-rizhi', '15', 'admin', 'adminlog', 'index', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('21', '删除管理员', '', '16', 'admin', 'manager', 'del', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('23', '附件管理', 'icon-accessory', '10', 'attachment', 'attachments', 'index', '', '1', '1', '', '0', '1');
INSERT INTO `yzn_menu` VALUES ('24', '新增配置', '', '11', 'admin', 'config', 'add', '', '2', '1', '', '0', '1');
INSERT INTO `yzn_menu` VALUES ('25', '编辑配置', '', '11', 'admin', 'config', 'edit', '', '2', '1', '', '0', '2');
INSERT INTO `yzn_menu` VALUES ('26', '删除配置', '', '11', 'admin', 'config', 'del', '', '2', '1', '', '0', '3');
INSERT INTO `yzn_menu` VALUES ('27', '新增菜单', '', '14', 'admin', 'menu', 'add', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('28', '编辑菜单', '', '14', 'admin', 'menu', 'edit', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('29', '删除菜单', '', '14', 'admin', 'menu', 'delete', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('30', '附件上传', '', '23', 'attachment', 'attachments', 'upload', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('31', '附件删除', '', '23', 'attachment', 'attachments', 'delete', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('35', '扩展列表', 'icon-liebiaosousuo', '5', 'addons', 'addons', 'addonadmin', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('49', '缓存更新', '', '0', 'admin', 'index', 'cache', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('50', '内容', 'icon-shiyongwendang', '0', 'cms', 'cms', 'index1', '', '1', '1', '', '0', '3');
INSERT INTO `yzn_menu` VALUES ('66', '相关设置', 'icon-zidongxiufu', '50', 'cms', 'category', 'index1', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('68', '栏目列表', 'icon-other', '66', 'cms', 'category', 'index', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('69', '添加栏目', '', '68', 'cms', 'category', 'add', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('70', '添加单页', '', '68', 'cms', 'category', 'singlepage', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('71', '添加外部链接', '', '68', 'cms', 'category', 'wadd', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('72', '编辑栏目', '', '68', 'cms', 'category', 'edit', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('73', '删除栏目', '', '68', 'cms', 'category', 'delete', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('74', '更新栏目', '', '68', 'cms', 'category', 'public_cache', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('75', '排序', '', '68', 'cms', 'category', 'listorder', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('76', '状态设置', '', '68', 'cms', 'category', 'setstate', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('77', '模型管理', 'icon-apartment', '66', 'cms', 'models', 'index', '', '1', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('78', '字段管理', '', '77', 'cms', 'field', 'index', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('79', '字段添加', '', '77', 'cms', 'field', 'add', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('80', '字段编辑', '', '77', 'cms', 'field', 'edit', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('81', '字段删除', '', '77', 'cms', 'field', 'delete', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('82', '字段排序', '', '77', 'cms', 'field', 'listorder', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('83', '字段状态', '', '77', 'cms', 'field', 'setstate', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('84', '字段搜索', '', '77', 'cms', 'field', 'setsearch', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('85', '字段隐藏', '', '77', 'cms', 'field', 'setvisible', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('86', '字段必须', '', '77', 'cms', 'field', 'setrequire', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('87', '添加模型', '', '77', 'cms', 'models', 'add', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('88', '修改模型', '', '77', 'cms', 'models', 'edit', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('89', '删除模型', '', '77', 'cms', 'models', 'delete', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('90', '模型投稿', '', '77', 'cms', 'models', 'setSub', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('91', '设置模型状态', '', '77', 'cms', 'models', 'setstate', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('99', '数据库备份', 'icon-shiyongwendang', '35', 'addons', 'database', 'index', 'isadmin=1', '1', '1', '数据库备份插件管理后台！', '0', '0');
INSERT INTO `yzn_menu` VALUES ('100', '备份还原', '', '35', 'addons', 'database', 'restore', 'isadmin=1', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('101', '删除备份', '', '35', 'addons', 'database', 'del', 'isadmin=1', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('102', '修复表', '', '35', 'addons', 'database', 'repair', 'isadmin=1', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('103', '优化表', '', '35', 'addons', 'database', 'optimize', 'isadmin=1', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('104', '还原表', '', '35', 'addons', 'database', 'import', 'isadmin=1', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('105', '备份数据库', '', '35', 'addons', 'database', 'export', 'isadmin=1', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('106', '备份数据库下载', '', '35', 'addons', 'database', 'download', 'isadmin=1', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('107', '友情链接', 'icon-lianjie', '35', 'links', 'links', 'index', '', '1', '1', '友情链接！', '0', '0');
INSERT INTO `yzn_menu` VALUES ('108', '添加友情链接', '', '107', 'links', 'links', 'add', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('109', '链接编辑', '', '107', 'links', 'links', 'edit', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('110', '链接删除', '', '107', 'links', 'links', 'delete', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('111', '链接状态', '', '107', 'links', 'links', 'setstate', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('112', '链接排序', '', '107', 'links', 'links', 'listorder', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('113', '分类管理', '', '107', 'links', 'links', 'terms', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('114', '分类新增', '', '107', 'links', 'links', 'addTerms', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('115', '分类修改', '', '107', 'links', 'links', 'termsedit', '', '2', '1', '', '0', '0');
INSERT INTO `yzn_menu` VALUES ('116', '分类删除', '', '107', 'links', 'links', 'termsdelete', '', '2', '1', '', '0', '0');

-- ----------------------------
-- Table structure for yzn_model
-- ----------------------------
DROP TABLE IF EXISTS `yzn_model`;
CREATE TABLE `yzn_model` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `tablename` char(20) NOT NULL DEFAULT '' COMMENT '表名',
  `description` char(100) NOT NULL DEFAULT '' COMMENT '描述',
  `setting` text COMMENT '配置信息',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '模型类别：1-独立表，2-主附表',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorders` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用 1禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='模型列表';

-- ----------------------------
-- Records of yzn_model
-- ----------------------------
INSERT INTO `yzn_model` VALUES ('1', 'cms', '文章模型', 'article', '文章模型', 'a:1:{s:5:\"ifsub\";s:1:\"0\";}', '2', '1546574975', '1546574975', '0', '1');
INSERT INTO `yzn_model` VALUES ('3', 'cms', '产品模型', 'product', '产品模型', 'a:1:{s:5:\"ifsub\";s:1:\"0\";}', '2', '1549165800', '1549165800', '0', '1');
INSERT INTO `yzn_model` VALUES ('5', 'cms', '留言本', 'guestbook', '留言本', 'a:1:{s:5:\"ifsub\";s:1:\"1\";}', '1', '1550480944', '1550480944', '0', '1');

-- ----------------------------
-- Table structure for yzn_model_field
-- ----------------------------
DROP TABLE IF EXISTS `yzn_model_field`;
CREATE TABLE `yzn_model_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '别名',
  `remark` tinytext NOT NULL COMMENT '字段提示',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `setting` mediumtext,
  `ifsystem` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否主表字段 1 是',
  `ifeditable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可以编辑',
  `iffixed` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否固定不可修改',
  `ifrequire` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否必填',
  `ifsearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为搜索条件',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 禁用 1启用',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='模型字段列表';

-- ----------------------------
-- Records of yzn_model_field
-- ----------------------------
INSERT INTO `yzn_model_field` VALUES ('1', '1', 'id', '文档id', '', 'hidden', '', '1', '1', '1', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('2', '1', 'catid', '栏目id', '', 'hidden', '', '1', '1', '1', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('3', '1', 'title', '标题', '', 'text', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '1', '1', '1546574975', '1556286174', '1', '1');
INSERT INTO `yzn_model_field` VALUES ('4', '1', 'flag', '属性', '', 'checkbox', 'a:3:{s:6:\"define\";s:31:\"varchar(32) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:76:\"1:置顶[1]\r\n2:头条[2]\r\n3:特荐[3]\r\n4:推荐[4]\r\n5:热点[5]\r\n6:幻灯[6]\";s:5:\"value\";s:0:\"\";}', '1', '1', '1', '0', '0', '1551846870', '1551846870', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('5', '1', 'keywords', 'SEO关键词', '多关键词之间用空格或者“,”隔开', 'text', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('6', '1', 'description', 'SEO摘要', '如不填写，则自动截取附表中编辑器的200字符', 'textarea', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('7', '1', 'tags', 'Tags标签', '多关键词之间用空格或者“,”隔开', 'text', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('8', '1', 'uid', '用户id', '', 'number', 'a:3:{s:6:\"define\";s:21:\"mediumint(8) UNSIGNED\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '0', '1', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('9', '1', 'listorder', '排序', '', 'number', 'a:3:{s:6:\"define\";s:40:\"tinyint(3) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"100\";}', '1', '1', '1', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('10', '1', 'status', '状态', '', 'radio', 'a:3:{s:6:\"define\";s:40:\"tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:18:\"0:禁用\r\n1:启用\";s:5:\"value\";s:1:\"1\";}', '1', '1', '1', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('11', '1', 'inputtime', '创建时间', '', 'datetime', 'a:3:{s:6:\"define\";s:37:\"int(11) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '1', '0', '0', '1546574975', '1546574975', '200', '1');
INSERT INTO `yzn_model_field` VALUES ('12', '1', 'updatetime', '更新时间', '', 'datetime', 'a:3:{s:6:\"define\";s:37:\"int(11) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '0', '1', '0', '0', '1546574975', '1546574975', '200', '1');
INSERT INTO `yzn_model_field` VALUES ('13', '1', 'hits', '点击量', '', 'number', 'a:3:{s:6:\"define\";s:42:\"mediumint(8) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";}', '1', '1', '1', '0', '0', '1546574975', '1546574975', '200', '1');
INSERT INTO `yzn_model_field` VALUES ('14', '1', 'did', '附表文档id', '', 'hidden', '', '0', '0', '1', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('15', '1', 'content', '内容', '', 'Ueditor', 'a:3:{s:6:\"define\";s:13:\"text NOT NULL\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '0', '1', '0', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('95', '1', 'img', '封面图片', '', 'image', 'a:3:{s:6:\"define\";s:36:\"int(5) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '0', '0', '1556286210', '1556286228', '2', '1');
INSERT INTO `yzn_model_field` VALUES ('31', '3', 'id', '文档id', '', 'hidden', '', '1', '1', '1', '0', '0', '1549165800', '1549165800', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('32', '3', 'catid', '栏目id', '', 'hidden', '', '1', '1', '1', '0', '0', '1549165800', '1549165800', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('33', '3', 'title', '标题', '', 'text', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '1', '1', '1549165800', '1556294827', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('34', '3', 'flag', '属性', '', 'checkbox', 'a:3:{s:6:\"define\";s:31:\"varchar(32) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:76:\"1:置顶[1]\r\n2:头条[2]\r\n3:特荐[3]\r\n4:推荐[4]\r\n5:热点[5]\r\n6:幻灯[6]\";s:5:\"value\";s:0:\"\";}', '1', '1', '1', '0', '0', '1551846870', '1551846870', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('35', '3', 'keywords', 'SEO关键词', '多关键词之间用空格或者“,”隔开', 'text', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '0', '0', '1549165800', '1549165800', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('36', '3', 'description', 'SEO摘要', '如不填写，则自动截取附表中编辑器的200字符', 'textarea', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '0', '0', '1549165800', '1549165800', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('37', '3', 'tags', 'Tags标签', '多关键词之间用空格或者“,”隔开', 'text', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '0', '0', '1546574975', '1546574975', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('38', '3', 'uid', '用户id', '', 'number', 'a:3:{s:6:\"define\";s:21:\"mediumint(8) UNSIGNED\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '0', '1', '0', '0', '1549165800', '1549165800', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('39', '3', 'listorder', '排序', '', 'number', 'a:3:{s:6:\"define\";s:40:\"tinyint(3) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"100\";}', '1', '1', '1', '0', '0', '1549165800', '1549165800', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('40', '3', 'status', '状态', '', 'radio', 'a:3:{s:6:\"define\";s:40:\"tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:18:\"0:禁用\r\n1:启用\";s:5:\"value\";s:1:\"1\";}', '1', '1', '1', '0', '0', '1549165800', '1549165800', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('41', '3', 'inputtime', '创建时间', '', 'datetime', 'a:3:{s:6:\"define\";s:37:\"int(11) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '1', '0', '0', '1549165800', '1549165800', '200', '1');
INSERT INTO `yzn_model_field` VALUES ('42', '3', 'updatetime', '更新时间', '', 'datetime', 'a:3:{s:6:\"define\";s:37:\"int(11) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '0', '1', '0', '0', '1549165800', '1549165800', '200', '1');
INSERT INTO `yzn_model_field` VALUES ('43', '3', 'hits', '点击量', '', 'number', 'a:3:{s:6:\"define\";s:42:\"mediumint(8) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";}', '1', '1', '1', '0', '0', '1549165800', '1549165800', '200', '1');
INSERT INTO `yzn_model_field` VALUES ('44', '3', 'did', '附表文档id', '', 'hidden', '', '0', '0', '1', '0', '0', '1549165800', '1549165800', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('45', '3', 'content', '内容', '', 'Ueditor', 'a:3:{s:6:\"define\";s:13:\"text NOT NULL\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '0', '1', '0', '0', '0', '1549165800', '1549165800', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('61', '5', 'inputtime', '创建时间', '', 'datetime', 'a:3:{s:6:\"define\";s:37:\"int(11) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '1', '0', '0', '1550480944', '1550480944', '200', '1');
INSERT INTO `yzn_model_field` VALUES ('62', '5', 'status', '状态', '', 'radio', 'a:3:{s:6:\"define\";s:40:\"tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:18:\"0:禁用\r\n1:启用\";s:5:\"value\";s:1:\"1\";}', '1', '1', '1', '0', '0', '1550480944', '1550480944', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('64', '5', 'listorder', '排序', '', 'number', 'a:3:{s:6:\"define\";s:40:\"tinyint(3) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"100\";}', '1', '1', '1', '0', '0', '1550480944', '1550480944', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('65', '5', 'uid', '用户id', '', 'number', 'a:3:{s:6:\"define\";s:21:\"mediumint(8) UNSIGNED\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '0', '1', '0', '0', '1550480944', '1550480944', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('66', '5', 'phone', '您的电话', '', 'text', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '1', '1', '1550629851', '1550630223', '2', '1');
INSERT INTO `yzn_model_field` VALUES ('67', '5', 'email', '您的邮箱', '', 'text', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '1', '1', '1550629880', '1550630224', '3', '1');
INSERT INTO `yzn_model_field` VALUES ('68', '5', 'title', '您的姓名', '', 'text', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '1', '1', '1550480944', '1550630221', '1', '1');
INSERT INTO `yzn_model_field` VALUES ('69', '5', 'flag', '属性', '', 'checkbox', 'a:3:{s:6:\"define\";s:31:\"varchar(32) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:76:\"1:置顶[1]\r\n2:头条[2]\r\n3:特荐[3]\r\n4:推荐[4]\r\n5:热点[5]\r\n6:幻灯[6]\";s:5:\"value\";s:0:\"\";}', '1', '1', '1', '0', '0', '1551846870', '1551846870', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('70', '5', 'catid', '栏目id', '', 'hidden', '', '1', '1', '1', '0', '0', '1550480944', '1550480944', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('71', '5', 'id', '文档id', '', 'hidden', '', '1', '1', '1', '0', '0', '1550480944', '1550480944', '100', '1');
INSERT INTO `yzn_model_field` VALUES ('72', '5', 'updatetime', '更新时间', '', 'datetime', 'a:3:{s:6:\"define\";s:37:\"int(11) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '0', '1', '0', '0', '1550480944', '1550480944', '200', '1');
INSERT INTO `yzn_model_field` VALUES ('73', '5', 'hits', '点击量', '', 'number', 'a:3:{s:6:\"define\";s:42:\"mediumint(8) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";}', '1', '1', '1', '0', '0', '1550480944', '1550480944', '200', '1');
INSERT INTO `yzn_model_field` VALUES ('74', '5', 'content', '您的意见或建议', '', 'textarea', 'a:3:{s:6:\"define\";s:32:\"varchar(255) NOT NULL DEFAULT \'\'\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '1', '1', '1550629912', '1550630226', '4', '1');
INSERT INTO `yzn_model_field` VALUES ('75', '3', 'type', '类型', '', 'radio', 'a:4:{s:6:\"define\";s:40:\"tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:91:\"1:营销网站\r\n2:电商网站\r\n3:响应式网站\r\n4:手机网站\r\n5:外贸网站\r\n6:其他\";s:10:\"filtertype\";s:1:\"1\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '1', '1', '1552368369', '1556294825', '0', '1');
INSERT INTO `yzn_model_field` VALUES ('76', '3', 'trade', '行业', '', 'radio', 'a:4:{s:6:\"define\";s:40:\"tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:78:\"1:机械设备\r\n2:车辆物流\r\n3:地产建筑装修\r\n4:教育培训\r\n5:其他\";s:10:\"filtertype\";s:1:\"1\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '1', '1', '1552372387', '1556294825', '0', '1');
INSERT INTO `yzn_model_field` VALUES ('77', '3', 'price', '价格', '', 'radio', 'a:4:{s:6:\"define\";s:40:\"tinyint(2) UNSIGNED NOT NULL DEFAULT \'0\'\";s:7:\"options\";s:42:\"1:≤2500\r\n2:≤5000\r\n3:≤8000\r\n4:≥1万\";s:10:\"filtertype\";s:1:\"1\";s:5:\"value\";s:0:\"\";}', '1', '1', '0', '1', '1', '1552372433', '1556294827', '0', '1');

-- ----------------------------
-- Table structure for yzn_module
-- ----------------------------
DROP TABLE IF EXISTS `yzn_module`;
CREATE TABLE `yzn_module` (
  `module` varchar(15) NOT NULL COMMENT '模块',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `sign` varchar(255) NOT NULL DEFAULT '' COMMENT '签名',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内置模块',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可用',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '版本',
  `setting` mediumtext COMMENT '设置信息',
  `installtime` int(10) NOT NULL DEFAULT '0' COMMENT '安装时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`module`),
  KEY `sign` (`sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已安装模块列表';

-- ----------------------------
-- Records of yzn_module
-- ----------------------------
INSERT INTO `yzn_module` VALUES ('cms', 'cms模块', 'b19cc279ed484c13c96c2f7142e2f437', '0', '1', '1.0.0', '', '1554724306', '1554724306', '0');
INSERT INTO `yzn_module` VALUES ('links', '友情链接', '960c30f9b119fa6c39a4a31867441c82', '0', '1', '1.0.0', null, '1554790931', '1554790931', '0');

-- ----------------------------
-- Table structure for yzn_page
-- ----------------------------
DROP TABLE IF EXISTS `yzn_page`;
CREATE TABLE `yzn_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(160) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `content` text COMMENT '内容',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页内容表';

-- ----------------------------
-- Records of yzn_page
-- ----------------------------
INSERT INTO `yzn_page` VALUES ('2', '关于我们1', '', '', '<p>&nbsp; &nbsp; xxx网络科技股份有限公司是一家集策略咨询、创意创新、视觉设计、技术研发、内容制造、营销推广为一体的综合型数字化创新服务企业，其利用公司持续积累的核心技术和互联网思维，提供以互联网、移动互联网为核心的网络技术服务和互动整合营销服务，为传统企业实现“互联网+”升级提供整套解决方案。公司定位于中大型企业为核心客户群，可充分满足这一群体相比中小企业更为丰富、高端、多元的互联网数字综合需求。</p><p><br/></p><p>&nbsp; &nbsp; xxx网络科技股份有限公司作为一家互联网数字服务综合商，其主营业务包括移动互联网应用开发服务、数字互动整合营销服务、互联网网站建设综合服务和电子商务综合服务。</p><p><br/></p><p>&nbsp; &nbsp; xxx网络科技股份有限公司秉承实现全网价值营销的理念，通过实现互联网与移动互联网的精准数字营销和用户数据分析，日益深入到客户互联网技术建设及运维营销的方方面面，在帮助客户形成自身互联网运作体系的同时，有效对接BAT(百度，阿里，腾讯)等平台即百度搜索、阿里电商、腾讯微信，通过平台的推广来推进互联网综合服务，实现企业、用户、平台三者完美对接，并形成高效互动的枢纽，在帮助客户获取互联网高附加价值的同时获得自身的不断成长和壮大。</p>', '0', '0');
INSERT INTO `yzn_page` VALUES ('3', '企业文化', '', '', '<p>【愿景】</p><ul class=\" list-paddingleft-2\" style=\"list-style-type: disc;\"><li><p>不断倾听和满足用户需求，引导并超越用户需求，赢得用户尊敬</p></li><li><p>通过提升品牌形象，使员工具有高度企业荣誉感，赢得员工尊敬&nbsp;</p></li><li><p>推动互联网行业的健康发展，与合作伙伴共成长，赢得行业尊敬</p></li><li><p>注重企业责任，用心服务，关爱社会、回馈社会，赢得社会尊敬</p></li></ul><p><br/></p><p>【使命】</p><ul class=\" list-paddingleft-2\" style=\"list-style-type: disc;\"><li><p>使产品和服务像水和电融入人们的生活，为人们带来便捷和愉悦</p></li><li><p>关注不同地域、群体，并针对不同对象提供差异化的产品和服务</p></li><li><p>打造开放共赢平台，与合作伙伴共同营造健康的互联网生态环境</p></li></ul><p><br/></p><p>【管理理念】</p><ul class=\" list-paddingleft-2\" style=\"list-style-type: disc;\"><li><p>为员工提供良好的工作环境和激励机制&nbsp;</p></li><li><p>完善员工培养体系和职业发展通道，使员工与企业同步成长</p></li><li><p>充分尊重和信任员工，不断引导和鼓励，使其获得成就的喜悦</p></li></ul>', '0', '0');
INSERT INTO `yzn_page` VALUES ('18', '联系我们', '', '', '<p>手　机：158-88888888</p><p>传　真：0512-88888888</p><p>邮　编：215000</p><p>邮　箱：admin@admin.com</p><p>地　址：江苏省苏州市吴中区某某工业园一区</p><p><br/></p><p><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=116.404,39.915&zoom=10&width=530&height=340&markers=116.404,39.915\"/></p>', '0', '0');

-- ----------------------------
-- Table structure for yzn_product
-- ----------------------------
DROP TABLE IF EXISTS `yzn_product`;
CREATE TABLE `yzn_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `flag` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '属性',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Tags标签',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `hits` mediumint(8) unsigned DEFAULT '0' COMMENT '点击量',
  `inputtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `trade` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '行业',
  `price` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='产品模型模型表';

-- ----------------------------
-- Records of yzn_product
-- ----------------------------

-- ----------------------------
-- Table structure for yzn_product_data
-- ----------------------------
DROP TABLE IF EXISTS `yzn_product_data`;
CREATE TABLE `yzn_product_data` (
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='产品模型模型表';

-- ----------------------------
-- Records of yzn_product_data
-- ----------------------------

-- ----------------------------
-- Table structure for yzn_tags
-- ----------------------------
DROP TABLE IF EXISTS `yzn_tags`;
CREATE TABLE `yzn_tags` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tagID',
  `tag` char(20) NOT NULL DEFAULT '' COMMENT 'tag名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keyword` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo简介',
  `usetimes` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息总数',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`),
  KEY `usetimes` (`usetimes`,`listorder`),
  KEY `hits` (`hits`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='tags主表';

-- ----------------------------
-- Records of yzn_tags
-- ----------------------------
INSERT INTO `yzn_tags` VALUES ('1', '精密机器', '', '', '', '1', '0', '1553067267', '1553067267', '0');
INSERT INTO `yzn_tags` VALUES ('2', '专业培训', '', '', '', '1', '0', '1553067267', '1553067267', '0');
INSERT INTO `yzn_tags` VALUES ('3', '资格证书', '', '', '', '1', '0', '1553067267', '1553067267', '0');

-- ----------------------------
-- Table structure for yzn_tags_content
-- ----------------------------
DROP TABLE IF EXISTS `yzn_tags_content`;
CREATE TABLE `yzn_tags_content` (
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `contentid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  KEY `modelid` (`modelid`,`contentid`),
  KEY `tag` (`tag`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags数据表';

-- ----------------------------
-- Records of yzn_tags_content
-- ----------------------------
INSERT INTO `yzn_tags_content` VALUES ('精密机器', '3', '6', '5', '1553067267');
INSERT INTO `yzn_tags_content` VALUES ('专业培训', '3', '6', '5', '1553067267');
INSERT INTO `yzn_tags_content` VALUES ('资格证书', '3', '6', '5', '1553067267');

-- ----------------------------
-- Table structure for yzn_terms
-- ----------------------------
DROP TABLE IF EXISTS `yzn_terms`;
CREATE TABLE `yzn_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `setting` mediumtext COMMENT '相关配置信息',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of yzn_terms
-- ----------------------------
INSERT INTO `yzn_terms` VALUES ('1', '0', '链接分类一', 'links', null);
