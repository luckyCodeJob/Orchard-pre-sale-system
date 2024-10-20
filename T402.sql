-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.38 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 t402 的数据库结构
DROP DATABASE IF EXISTS `t402`;
CREATE DATABASE IF NOT EXISTS `t402` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t402`;

-- 导出  表 t402.address 结构
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

-- 正在导出表  t402.address 的数据：~14 rows (大约)
DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(2, 2, '收货人2', '17703786902', '地址2', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(3, 1, '收货人3', '17703786903', '地址3', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(4, 1, '收货人4', '17703786904', '地址4', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(5, 2, '收货人5', '17703786905', '地址5', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(6, 1, '收货人6', '17703786906', '地址6', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(7, 3, '收货人7', '17703786907', '地址7', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(8, 3, '收货人8', '17703786908', '地址8', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(9, 3, '收货人9', '17703786909', '地址9', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(10, 3, '收货人10', '17703786910', '地址10', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(11, 2, '收货人11', '17703786911', '地址11', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(12, 1, '收货人12', '17703786912', '地址12', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(13, 1, '收货人13', '17703786913', '地址13', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(14, 1, '收货人14', '17703786914', '地址14', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42');

-- 导出  表 t402.config 结构
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

-- 正在导出表  t402.config 的数据：~3 rows (大约)
DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

-- 导出  表 t402.dictionary 结构
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

-- 正在导出表  t402.dictionary 的数据：~34 rows (大约)
DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-24 05:50:16'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-24 05:50:16'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-24 05:50:16'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-24 05:50:16'),
	(5, 'news_types', '水果类型', 1, '水果类型1', NULL, NULL, '2023-03-24 05:50:16'),
	(6, 'news_types', '水果类型', 2, '水果类型2', NULL, NULL, '2023-03-24 05:50:16'),
	(7, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-24 05:50:16'),
	(8, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-24 05:50:16'),
	(9, 'guoyuan_types', '果园类型', 1, '果园类型1', NULL, NULL, '2023-03-24 05:50:16'),
	(10, 'guoyuan_types', '果园类型', 2, '果园类型2', NULL, NULL, '2023-03-24 05:50:16'),
	(11, 'guoyuan_types', '果园类型', 3, '果园类型3', NULL, NULL, '2023-03-24 05:50:16'),
	(12, 'guoyuan_types', '果园类型', 4, '果园类型4', NULL, NULL, '2023-03-24 05:50:16'),
	(13, 'guoyuan_yuyue_yesno_types', '报名状态', 1, '待审核', NULL, NULL, '2023-03-24 05:50:16'),
	(14, 'guoyuan_yuyue_yesno_types', '报名状态', 2, '同意', NULL, NULL, '2023-03-24 05:50:16'),
	(15, 'guoyuan_yuyue_yesno_types', '报名状态', 3, '拒绝', NULL, NULL, '2023-03-24 05:50:16'),
	(16, 'guoshu_types', '果树类型', 1, '果树类型1', NULL, NULL, '2023-03-24 05:50:16'),
	(17, 'guoshu_types', '果树类型', 2, '果树类型2', NULL, NULL, '2023-03-24 05:50:16'),
	(18, 'guoshu_types', '果树类型', 3, '果树类型3', NULL, NULL, '2023-03-24 05:50:16'),
	(19, 'guoshu_types', '果树类型', 4, '果树类型4', NULL, NULL, '2023-03-24 05:50:16'),
	(20, 'guoshu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-24 05:50:16'),
	(21, 'guoshu_order_types', '订单类型', 101, '已认养', NULL, NULL, '2023-03-24 05:50:16'),
	(22, 'guoshu_order_types', '订单类型', 102, '已取消认养', NULL, NULL, '2023-03-24 05:50:16'),
	(23, 'guoshu_order_types', '订单类型', 103, '已同意认养', NULL, NULL, '2023-03-24 05:50:16'),
	(24, 'shuiguo_types', '水果类型', 1, '水果类型1', NULL, NULL, '2023-03-24 05:50:16'),
	(25, 'shuiguo_types', '水果类型', 2, '水果类型2', NULL, NULL, '2023-03-24 05:50:16'),
	(26, 'shuiguo_types', '水果类型', 3, '水果类型3', NULL, NULL, '2023-03-24 05:50:16'),
	(27, 'shuiguo_types', '水果类型', 4, '水果类型4', NULL, NULL, '2023-03-24 05:50:16'),
	(28, 'shuiguo_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-24 05:50:16'),
	(29, 'shuiguo_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-03-24 05:50:16'),
	(30, 'shuiguo_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-03-24 05:50:16'),
	(31, 'shuiguo_order_types', '订单类型', 103, '已发货', NULL, NULL, '2023-03-24 05:50:16'),
	(32, 'shuiguo_order_types', '订单类型', 104, '已收货', NULL, NULL, '2023-03-24 05:50:16'),
	(34, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-03-24 05:50:16'),
	(35, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-03-24 05:50:16');

-- 导出  表 t402.forum 结构
DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

-- 正在导出表  t402.forum 的数据：~15 rows (大约)
DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', 376, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(2, '帖子标题2', 2, NULL, '发布内容2', 263, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(3, '帖子标题3', 2, NULL, '发布内容3', 6, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(4, '帖子标题4', 2, NULL, '发布内容4', 423, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(5, '帖子标题5', 3, NULL, '发布内容5', 242, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(6, '帖子标题6', 1, NULL, '发布内容6', 341, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(7, '帖子标题7', 3, NULL, '发布内容7', 278, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(8, '帖子标题8', 3, NULL, '发布内容8', 417, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(9, '帖子标题9', 1, NULL, '发布内容9', 207, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(10, '帖子标题10', 1, NULL, '发布内容10', 309, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(11, '帖子标题11', 2, NULL, '发布内容11', 267, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(12, '帖子标题12', 3, NULL, '发布内容12', 455, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(13, '帖子标题13', 3, NULL, '发布内容13', 256, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(14, '帖子标题14', 3, NULL, '发布内容14', 155, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(15, '帖子', 1, NULL, '<p>体重</p>', NULL, 1, '2023-03-24 06:38:09', NULL, '2023-03-24 06:38:09'),
	(16, NULL, 1, NULL, '5556', 12, 2, '2024-09-26 06:18:07', NULL, '2024-09-26 06:18:07');

-- 导出  表 t402.gonggao 结构
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

-- 正在导出表  t402.gonggao 的数据：~14 rows (大约)
DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-03-24 05:50:42', '公告详情1', '2023-03-24 05:50:42'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-03-24 05:50:42', '公告详情2', '2023-03-24 05:50:42'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-03-24 05:50:42', '公告详情3', '2023-03-24 05:50:42'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-03-24 05:50:42', '公告详情4', '2023-03-24 05:50:42'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-03-24 05:50:42', '公告详情5', '2023-03-24 05:50:42'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-03-24 05:50:42', '公告详情6', '2023-03-24 05:50:42'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-03-24 05:50:42', '公告详情7', '2023-03-24 05:50:42'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-03-24 05:50:42', '公告详情8', '2023-03-24 05:50:42'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-03-24 05:50:42', '公告详情9', '2023-03-24 05:50:42'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-03-24 05:50:42', '公告详情10', '2023-03-24 05:50:42'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-03-24 05:50:42', '公告详情11', '2023-03-24 05:50:42'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 1, '2023-03-24 05:50:42', '公告详情12', '2023-03-24 05:50:42'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-03-24 05:50:42', '公告详情13', '2023-03-24 05:50:42'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-03-24 05:50:42', '公告详情14', '2023-03-24 05:50:42');

-- 导出  表 t402.guoshu 结构
DROP TABLE IF EXISTS `guoshu`;
CREATE TABLE IF NOT EXISTS `guoshu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guoyuan_id` int DEFAULT NULL COMMENT '商家',
  `guoshu_name` varchar(200) DEFAULT NULL COMMENT '果树名称  Search111 ',
  `guoshu_uuid_number` varchar(200) DEFAULT NULL COMMENT '果树编号',
  `guoshu_photo` varchar(200) DEFAULT NULL COMMENT '果树照片',
  `guoshu_address` varchar(200) DEFAULT NULL COMMENT '果树地点',
  `guoshu_new_money` decimal(10,2) DEFAULT NULL COMMENT '果树认养费用 ',
  `guoshu_types` int DEFAULT NULL COMMENT '果树类型 Search111',
  `guoshu_kucun_number` int DEFAULT NULL COMMENT '果树库存',
  `guoshu_content` longtext COMMENT '果树介绍 ',
  `guoshu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='果树';

-- 正在导出表  t402.guoshu 的数据：~14 rows (大约)
DELETE FROM `guoshu`;
INSERT INTO `guoshu` (`id`, `guoyuan_id`, `guoshu_name`, `guoshu_uuid_number`, `guoshu_photo`, `guoshu_address`, `guoshu_new_money`, `guoshu_types`, `guoshu_kucun_number`, `guoshu_content`, `guoshu_delete`, `insert_time`, `create_time`) VALUES
	(1, 1, '果树名称1', '1679637042494', 'upload/guoshu1.jpg', '果树地点1', 347.83, 4, 101, '果树介绍1', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(2, 2, '果树名称2', '1679637042458', 'upload/guoshu2.jpg', '果树地点2', 437.78, 2, 102, '果树介绍2', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(3, 3, '果树名称3', '1679637042500', 'upload/guoshu3.jpg', '果树地点3', 456.70, 2, 103, '果树介绍3', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(4, 4, '果树名称4', '1679637042489', 'upload/guoshu4.jpg', '果树地点4', 33.51, 2, 104, '果树介绍4', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(5, 5, '果树名称5', '1679637042434', 'upload/guoshu5.jpg', '果树地点5', 479.59, 1, 105, '果树介绍5', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(6, 6, '果树名称6', '1679637042485', 'upload/guoshu6.jpg', '果树地点6', 284.07, 3, 106, '果树介绍6', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(7, 7, '果树名称7', '1679637042490', 'upload/guoshu7.jpg', '果树地点7', 268.70, 2, 107, '果树介绍7', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(8, 8, '果树名称8', '1679637042463', 'upload/guoshu8.jpg', '果树地点8', 248.11, 2, 108, '果树介绍8', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(9, 9, '果树名称9', '1679637042514', 'upload/guoshu9.jpg', '果树地点9', 409.16, 4, 109, '果树介绍9', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(10, 10, '果树名称10', '1679637042490', 'upload/guoshu10.jpg', '果树地点10', 422.15, 2, 1010, '果树介绍10', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(11, 11, '果树名称11', '1679637042510', 'upload/guoshu11.jpg', '果树地点11', 264.21, 3, 1011, '果树介绍11', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(12, 12, '果树名称12', '1679637042506', 'upload/guoshu12.jpg', '果树地点12', 271.52, 1, 1012, '果树介绍12', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(13, 13, '果树名称13', '1679637042464', 'upload/guoshu13.jpg', '果树地点13', 232.15, 1, 1012, '果树介绍13', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(14, 14, '果树名称14', '1679637042504', 'upload/guoshu14.jpg', '果树地点14', 489.76, 4, 1014, '果树介绍14', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42');

-- 导出  表 t402.guoshu_collection 结构
DROP TABLE IF EXISTS `guoshu_collection`;
CREATE TABLE IF NOT EXISTS `guoshu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoshu_id` int DEFAULT NULL COMMENT '果树',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `guoshu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='果树收藏';

-- 正在导出表  t402.guoshu_collection 的数据：~14 rows (大约)
DELETE FROM `guoshu_collection`;
INSERT INTO `guoshu_collection` (`id`, `guoshu_id`, `yonghu_id`, `guoshu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(2, 2, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(3, 3, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(4, 4, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(5, 5, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(6, 6, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(7, 7, 1, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(8, 8, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(9, 9, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(10, 10, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(11, 11, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(12, 12, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(14, 14, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(15, 13, 1, 1, '2023-03-24 06:39:20', '2023-03-24 06:39:20');

-- 导出  表 t402.guoshu_order 结构
DROP TABLE IF EXISTS `guoshu_order`;
CREATE TABLE IF NOT EXISTS `guoshu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoshu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `guoshu_id` int DEFAULT NULL COMMENT '果树',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `guoshu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `guoshu_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='果树订单';

-- 正在导出表  t402.guoshu_order 的数据：~1 rows (大约)
DELETE FROM `guoshu_order`;
INSERT INTO `guoshu_order` (`id`, `guoshu_order_uuid_number`, `guoshu_id`, `yonghu_id`, `buy_number`, `guoshu_order_true_price`, `guoshu_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1679639969272', 13, 1, 1, 232.15, 103, '2023-03-24 06:39:29', '2023-03-24 06:39:29');

-- 导出  表 t402.guoyuan 结构
DROP TABLE IF EXISTS `guoyuan`;
CREATE TABLE IF NOT EXISTS `guoyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guoyuan_name` varchar(200) DEFAULT NULL COMMENT '果园名称 Search111 ',
  `guoyuan_photo` varchar(200) DEFAULT NULL COMMENT '果园照片',
  `guoyuan_types` int DEFAULT NULL COMMENT '果园类型 Search111',
  `guoyuan_address` varchar(200) DEFAULT NULL COMMENT '果园地点',
  `guoyuan_content` longtext COMMENT '果园介绍 ',
  `guoyuan_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='果园';

-- 正在导出表  t402.guoyuan 的数据：~14 rows (大约)
DELETE FROM `guoyuan`;
INSERT INTO `guoyuan` (`id`, `guoyuan_name`, `guoyuan_photo`, `guoyuan_types`, `guoyuan_address`, `guoyuan_content`, `guoyuan_delete`, `create_time`) VALUES
	(1, '果园名称1', 'upload/guoyuan1.jpg', 3, '果园地点1', '果园介绍1', 1, '2023-03-24 05:50:42'),
	(2, '果园名称2', 'upload/guoyuan2.jpg', 2, '果园地点2', '果园介绍2', 1, '2023-03-24 05:50:42'),
	(3, '果园名称3', 'upload/guoyuan3.jpg', 4, '果园地点3', '果园介绍3', 1, '2023-03-24 05:50:42'),
	(4, '果园名称4', 'upload/guoyuan4.jpg', 3, '果园地点4', '果园介绍4', 1, '2023-03-24 05:50:42'),
	(5, '果园名称5', 'upload/guoyuan5.jpg', 2, '果园地点5', '果园介绍5', 1, '2023-03-24 05:50:42'),
	(6, '果园名称6', 'upload/guoyuan6.jpg', 3, '果园地点6', '果园介绍6', 1, '2023-03-24 05:50:42'),
	(7, '果园名称7', 'upload/guoyuan7.jpg', 1, '果园地点7', '果园介绍7', 1, '2023-03-24 05:50:42'),
	(8, '果园名称8', 'upload/guoyuan8.jpg', 4, '果园地点8', '果园介绍8', 1, '2023-03-24 05:50:42'),
	(9, '果园名称9', 'upload/guoyuan9.jpg', 2, '果园地点9', '果园介绍9', 1, '2023-03-24 05:50:42'),
	(10, '果园名称10', 'upload/guoyuan10.jpg', 3, '果园地点10', '果园介绍10', 1, '2023-03-24 05:50:42'),
	(11, '果园名称11', 'upload/guoyuan11.jpg', 4, '果园地点11', '果园介绍11', 1, '2023-03-24 05:50:42'),
	(12, '果园名称12', 'upload/guoyuan12.jpg', 4, '果园地点12', '果园介绍12', 1, '2023-03-24 05:50:42'),
	(13, '果园名称13', 'upload/guoyuan13.jpg', 3, '果园地点13', '果园介绍13', 1, '2023-03-24 05:50:42'),
	(14, '果园名称14', 'upload/guoyuan14.jpg', 2, '果园地点14', '果园介绍14', 1, '2023-03-24 05:50:42');

-- 导出  表 t402.guoyuan_liuyan 结构
DROP TABLE IF EXISTS `guoyuan_liuyan`;
CREATE TABLE IF NOT EXISTS `guoyuan_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoyuan_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `guoyuan_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='果园留言';

-- 正在导出表  t402.guoyuan_liuyan 的数据：~15 rows (大约)
DELETE FROM `guoyuan_liuyan`;
INSERT INTO `guoyuan_liuyan` (`id`, `guoyuan_id`, `yonghu_id`, `guoyuan_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-03-24 05:50:42', '回复信息1', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(2, 2, 2, '留言内容2', '2023-03-24 05:50:42', '回复信息2', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(3, 3, 3, '留言内容3', '2023-03-24 05:50:42', '回复信息3', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(4, 4, 3, '留言内容4', '2023-03-24 05:50:42', '回复信息4', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(5, 5, 1, '留言内容5', '2023-03-24 05:50:42', '回复信息5', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(6, 6, 2, '留言内容6', '2023-03-24 05:50:42', '回复信息6', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(7, 7, 1, '留言内容7', '2023-03-24 05:50:42', '回复信息7', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(8, 8, 3, '留言内容8', '2023-03-24 05:50:42', '回复信息8', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(9, 9, 2, '留言内容9', '2023-03-24 05:50:42', '回复信息9', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(10, 10, 2, '留言内容10', '2023-03-24 05:50:42', '回复信息10', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(11, 11, 2, '留言内容11', '2023-03-24 05:50:42', '回复信息11', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(12, 12, 3, '留言内容12', '2023-03-24 05:50:42', '回复信息12', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(13, 13, 2, '留言内容13', '2023-03-24 05:50:42', '回复信息13', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(14, 14, 1, '留言内容14', '2023-03-24 05:50:42', '回复信息14', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(15, 8, 1, '呀呀呀呀', '2023-03-24 06:39:04', '呀', '2023-03-24 06:41:19', '2023-03-24 06:39:04');

-- 导出  表 t402.guoyuan_yuyue 结构
DROP TABLE IF EXISTS `guoyuan_yuyue`;
CREATE TABLE IF NOT EXISTS `guoyuan_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guoyuan_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `guoyuan_id` int DEFAULT NULL COMMENT '果园',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `guoyuan_yuyue_text` longtext COMMENT '报名理由',
  `guoyuan_yuyue_yesno_types` int DEFAULT NULL COMMENT '报名状态 Search111 ',
  `guoyuan_yuyue_yesno_text` longtext COMMENT '审核回复',
  `guoyuan_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `guoyuan_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='果园预约';

-- 正在导出表  t402.guoyuan_yuyue 的数据：~15 rows (大约)
DELETE FROM `guoyuan_yuyue`;
INSERT INTO `guoyuan_yuyue` (`id`, `guoyuan_yuyue_uuid_number`, `guoyuan_id`, `yonghu_id`, `guoyuan_yuyue_text`, `guoyuan_yuyue_yesno_types`, `guoyuan_yuyue_yesno_text`, `guoyuan_yuyue_shenhe_time`, `guoyuan_yuyue_time`, `insert_time`, `create_time`) VALUES
	(1, '1679637042497', 1, 3, '报名理由1', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(2, '1679637042500', 2, 1, '报名理由2', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(3, '1679637042505', 3, 1, '报名理由3', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(4, '1679637042532', 4, 1, '报名理由4', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(5, '1679637042458', 5, 1, '报名理由5', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(6, '1679637042517', 6, 3, '报名理由6', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(7, '1679637042460', 7, 2, '报名理由7', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(8, '1679637042474', 8, 3, '报名理由8', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(9, '1679637042493', 9, 1, '报名理由9', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(10, '1679637042496', 10, 2, '报名理由10', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(11, '1679637042528', 11, 2, '报名理由11', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(12, '1679637042519', 12, 2, '报名理由12', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(13, '1679637042445', 13, 3, '报名理由13', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(14, '1679637042507', 14, 1, '报名理由14', 1, NULL, NULL, '2023-03-24 05:50:42', '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(15, '1679639927995', 8, 1, '这里是果园游玩预约', 2, '同意', '2023-03-24 06:42:20', '2023-03-24 06:38:33', '2023-03-24 06:38:48', '2023-03-24 06:38:48'),
	(16, '1727331506459', 8, 1, '666', 1, NULL, NULL, '2024-09-26 06:18:22', '2024-09-26 06:18:26', '2024-09-26 06:18:26');

-- 导出  表 t402.news 结构
DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '水果名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '水果图片 ',
  `news_types` int NOT NULL COMMENT '水果类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '水果发布时间 ',
  `news_content` longtext COMMENT '水果详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='水果资讯';

-- 正在导出表  t402.news 的数据：~14 rows (大约)
DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '水果名称1', 'upload/news1.jpg', 1, '2023-03-24 05:50:42', '水果详情1', '2023-03-24 05:50:42'),
	(2, '水果名称2', 'upload/news2.jpg', 1, '2023-03-24 05:50:42', '水果详情2', '2023-03-24 05:50:42'),
	(3, '水果名称3', 'upload/news3.jpg', 1, '2023-03-24 05:50:42', '水果详情3', '2023-03-24 05:50:42'),
	(4, '水果名称4', 'upload/news4.jpg', 1, '2023-03-24 05:50:42', '水果详情4', '2023-03-24 05:50:42'),
	(5, '水果名称5', 'upload/news5.jpg', 2, '2023-03-24 05:50:42', '水果详情5', '2023-03-24 05:50:42'),
	(6, '水果名称6', 'upload/news6.jpg', 2, '2023-03-24 05:50:42', '水果详情6', '2023-03-24 05:50:42'),
	(7, '水果名称7', 'upload/news7.jpg', 1, '2023-03-24 05:50:42', '水果详情7', '2023-03-24 05:50:42'),
	(8, '水果名称8', 'upload/news8.jpg', 2, '2023-03-24 05:50:42', '水果详情8', '2023-03-24 05:50:42'),
	(9, '水果名称9', 'upload/news9.jpg', 1, '2023-03-24 05:50:42', '水果详情9', '2023-03-24 05:50:42'),
	(10, '水果名称10', 'upload/news10.jpg', 1, '2023-03-24 05:50:42', '水果详情10', '2023-03-24 05:50:42'),
	(11, '水果名称11', 'upload/news11.jpg', 2, '2023-03-24 05:50:42', '水果详情11', '2023-03-24 05:50:42'),
	(12, '水果名称12', 'upload/news12.jpg', 2, '2023-03-24 05:50:42', '水果详情12', '2023-03-24 05:50:42'),
	(13, '水果名称13', 'upload/news13.jpg', 1, '2023-03-24 05:50:42', '水果详情13', '2023-03-24 05:50:42'),
	(14, '水果名称14', 'upload/news14.jpg', 2, '2023-03-24 05:50:42', '水果详情14', '2023-03-24 05:50:42');

-- 导出  表 t402.shuiguo 结构
DROP TABLE IF EXISTS `shuiguo`;
CREATE TABLE IF NOT EXISTS `shuiguo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guoyuan_id` int DEFAULT NULL COMMENT '水果',
  `shuiguo_name` varchar(200) DEFAULT NULL COMMENT '水果名称  Search111 ',
  `shuiguo_uuid_number` varchar(200) DEFAULT NULL COMMENT '水果编号',
  `shuiguo_photo` varchar(200) DEFAULT NULL COMMENT '水果照片',
  `shuiguo_address` varchar(200) DEFAULT NULL COMMENT '水果地点',
  `shuiguo_new_money` decimal(10,2) DEFAULT NULL COMMENT '预售价 ',
  `shuiguo_types` int DEFAULT NULL COMMENT '水果类型 Search111',
  `shuiguo_kucun_number` int DEFAULT NULL COMMENT '水果库存',
  `shuiguo_content` longtext COMMENT '水果介绍 ',
  `shuiguo_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='水果预售';

-- 正在导出表  t402.shuiguo 的数据：~14 rows (大约)
DELETE FROM `shuiguo`;
INSERT INTO `shuiguo` (`id`, `guoyuan_id`, `shuiguo_name`, `shuiguo_uuid_number`, `shuiguo_photo`, `shuiguo_address`, `shuiguo_new_money`, `shuiguo_types`, `shuiguo_kucun_number`, `shuiguo_content`, `shuiguo_delete`, `insert_time`, `create_time`) VALUES
	(1, 1, '水果名称1', '1679637042506', 'upload/shuiguo1.jpg', '水果地点1', 322.75, 2, 101, '水果介绍1', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(2, 2, '水果名称2', '1679637042464', 'upload/shuiguo2.jpg', '水果地点2', 410.75, 2, 102, '水果介绍2', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(3, 3, '水果名称3', '1679637042494', 'upload/shuiguo3.jpg', '水果地点3', 193.50, 1, 103, '水果介绍3', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(4, 4, '水果名称4', '1679637042489', 'upload/shuiguo4.jpg', '水果地点4', 133.51, 4, 104, '水果介绍4', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(5, 5, '水果名称5', '1679637042541', 'upload/shuiguo5.jpg', '水果地点5', 42.09, 3, 105, '水果介绍5', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(6, 6, '水果名称6', '1679637042522', 'upload/shuiguo6.jpg', '水果地点6', 110.37, 1, 106, '水果介绍6', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(7, 7, '水果名称7', '1679637042451', 'upload/shuiguo7.jpg', '水果地点7', 295.07, 3, 107, '水果介绍7', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(8, 8, '水果名称8', '1679637042542', 'upload/shuiguo8.jpg', '水果地点8', 148.83, 2, 108, '水果介绍8', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(9, 9, '水果名称9', '1679637042447', 'upload/shuiguo9.jpg', '水果地点9', 232.52, 3, 109, '水果介绍9', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(10, 10, '水果名称10', '1679637042527', 'upload/shuiguo10.jpg', '水果地点10', 30.28, 2, 1010, '水果介绍10', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(11, 11, '水果名称11', '1679637042458', 'upload/shuiguo11.jpg', '水果地点11', 361.28, 3, 1011, '水果介绍11', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(12, 12, '水果名称12', '1679637042505', 'upload/shuiguo12.jpg', '水果地点12', 424.58, 4, 1012, '水果介绍12', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(13, 13, '水果名称13', '1679637042446', 'upload/shuiguo13.jpg', '水果地点13', 456.16, 3, 1013, '水果介绍13', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(14, 14, '水果名称14', '1679637042469', 'upload/shuiguo14.jpg', '水果地点14', 128.92, 2, 1011, '水果介绍14', 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42');

-- 导出  表 t402.shuiguo_collection 结构
DROP TABLE IF EXISTS `shuiguo_collection`;
CREATE TABLE IF NOT EXISTS `shuiguo_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuiguo_id` int DEFAULT NULL COMMENT '水果',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shuiguo_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='水果收藏';

-- 正在导出表  t402.shuiguo_collection 的数据：~14 rows (大约)
DELETE FROM `shuiguo_collection`;
INSERT INTO `shuiguo_collection` (`id`, `shuiguo_id`, `yonghu_id`, `shuiguo_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(2, 2, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(3, 3, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(4, 4, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(5, 5, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(6, 6, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(7, 7, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(8, 8, 1, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(9, 9, 1, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(10, 10, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(11, 11, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(12, 12, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(13, 13, 2, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(14, 14, 3, 1, '2023-03-24 05:50:42', '2023-03-24 05:50:42'),
	(15, 7, 1, 1, '2024-09-26 06:18:39', '2024-09-26 06:18:39');

-- 导出  表 t402.shuiguo_order 结构
DROP TABLE IF EXISTS `shuiguo_order`;
CREATE TABLE IF NOT EXISTS `shuiguo_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuiguo_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `shuiguo_id` int DEFAULT NULL COMMENT '水果',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `shuiguo_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `guoyuan_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `guoyuan_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shuiguo_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='水果预售订单';

-- 正在导出表  t402.shuiguo_order 的数据：~1 rows (大约)
DELETE FROM `shuiguo_order`;
INSERT INTO `shuiguo_order` (`id`, `shuiguo_order_uuid_number`, `address_id`, `shuiguo_id`, `yonghu_id`, `buy_number`, `shuiguo_order_true_price`, `guoyuan_order_courier_name`, `guoyuan_order_courier_number`, `shuiguo_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1679640006325', 1, 14, 1, 3, 386.76, NULL, NULL, 104, '2023-03-24 06:40:06', '2023-03-24 06:40:06');

-- 导出  表 t402.token 结构
DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

-- 正在导出表  t402.token 的数据：~2 rows (大约)
DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'ojtbcmudcn8mnjb7l2lfgyk7nbelwhv8', '2023-03-24 05:51:54', '2024-09-26 07:17:55'),
	(2, 1, 'admin', 'users', '管理员', '5pi2h4sm805ehk3ouzc75kr6goa5bcn8', '2023-03-24 05:54:10', '2024-09-26 07:16:16');

-- 导出  表 t402.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

-- 正在导出表  t402.users 的数据：~1 rows (大约)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-24 05:50:16');

-- 导出  表 t402.yonghu 结构
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

-- 正在导出表  t402.yonghu 的数据：~3 rows (大约)
DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `new_money`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, 372.11, '1@qq.com', '2023-03-24 05:50:42'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, 86.70, '2@qq.com', '2023-03-24 05:50:42'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, 253.83, '3@qq.com', '2023-03-24 05:50:42');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
