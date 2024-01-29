/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmpxwex
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmpxwex` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmpxwex`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-24 22:39:16',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-24 22:39:16',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-24 22:39:16',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-24 22:39:16',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-24 22:39:16',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-24 22:39:16',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (81,'2021-03-24 22:39:16',1,1,'提问1','回复1',1),(82,'2021-03-24 22:39:16',2,2,'提问2','回复2',2),(83,'2021-03-24 22:39:16',3,3,'提问3','回复3',3),(84,'2021-03-24 22:39:16',4,4,'提问4','回复4',4),(85,'2021-03-24 22:39:16',5,5,'提问5','回复5',5),(86,'2021-03-24 22:39:16',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmpxwex/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmpxwex/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmpxwex/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-03-24 22:39:16',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-24 22:39:16',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-24 22:39:16',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-24 22:39:16',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-24 22:39:16',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-24 22:39:16',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussyonghufenxiang` */

DROP TABLE IF EXISTS `discussyonghufenxiang`;

CREATE TABLE `discussyonghufenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='用户分享评论表';

/*Data for the table `discussyonghufenxiang` */

insert  into `discussyonghufenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-03-24 22:39:16',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-24 22:39:16',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-24 22:39:16',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-24 22:39:16',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-24 22:39:16',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-24 22:39:16',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fenxiangleixing` */

DROP TABLE IF EXISTS `fenxiangleixing`;

CREATE TABLE `fenxiangleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenxiangleixing` varchar(200) DEFAULT NULL COMMENT '分享类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='分享类型';

/*Data for the table `fenxiangleixing` */

insert  into `fenxiangleixing`(`id`,`addtime`,`fenxiangleixing`,`tupian`) values (51,'2021-03-24 22:39:16','分享类型1','http://localhost:8080/ssmpxwex/upload/fenxiangleixing_tupian1.jpg'),(52,'2021-03-24 22:39:16','分享类型2','http://localhost:8080/ssmpxwex/upload/fenxiangleixing_tupian2.jpg'),(53,'2021-03-24 22:39:16','分享类型3','http://localhost:8080/ssmpxwex/upload/fenxiangleixing_tupian3.jpg'),(54,'2021-03-24 22:39:16','分享类型4','http://localhost:8080/ssmpxwex/upload/fenxiangleixing_tupian4.jpg'),(55,'2021-03-24 22:39:16','分享类型5','http://localhost:8080/ssmpxwex/upload/fenxiangleixing_tupian5.jpg'),(56,'2021-03-24 22:39:16','分享类型6','http://localhost:8080/ssmpxwex/upload/fenxiangleixing_tupian6.jpg');

/*Table structure for table `maijia` */

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616597170102 DEFAULT CHARSET=utf8 COMMENT='卖家';

/*Data for the table `maijia` */

insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`nianling`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (31,'2021-03-24 22:39:16','卖家1','123456','卖家姓名1','年龄1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmpxwex/upload/maijia_zhaopian1.jpg',100),(32,'2021-03-24 22:39:16','卖家2','123456','卖家姓名2','年龄2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmpxwex/upload/maijia_zhaopian2.jpg',100),(33,'2021-03-24 22:39:16','卖家3','123456','卖家姓名3','年龄3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmpxwex/upload/maijia_zhaopian3.jpg',100),(34,'2021-03-24 22:39:16','卖家4','123456','卖家姓名4','年龄4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmpxwex/upload/maijia_zhaopian4.jpg',100),(35,'2021-03-24 22:39:16','卖家5','123456','卖家姓名5','年龄5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmpxwex/upload/maijia_zhaopian5.jpg',100),(36,'2021-03-24 22:39:16','卖家6','123456','卖家姓名6','年龄6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmpxwex/upload/maijia_zhaopian6.jpg',100),(1616597170101,'2021-03-24 22:46:10','22','22','22','22','男','11112222222','11@qq.com',NULL,0);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (131,'2021-03-24 22:39:16','标题1','简介1','http://localhost:8080/ssmpxwex/upload/news_picture1.jpg','内容1'),(132,'2021-03-24 22:39:16','标题2','简介2','http://localhost:8080/ssmpxwex/upload/news_picture2.jpg','内容2'),(133,'2021-03-24 22:39:16','标题3','简介3','http://localhost:8080/ssmpxwex/upload/news_picture3.jpg','内容3'),(134,'2021-03-24 22:39:16','标题4','简介4','http://localhost:8080/ssmpxwex/upload/news_picture4.jpg','内容4'),(135,'2021-03-24 22:39:16','标题5','简介5','http://localhost:8080/ssmpxwex/upload/news_picture5.jpg','内容5'),(136,'2021-03-24 22:39:16','标题6','简介6','http://localhost:8080/ssmpxwex/upload/news_picture6.jpg','内容6');

/*Table structure for table `nongchangzixun` */

DROP TABLE IF EXISTS `nongchangzixun`;

CREATE TABLE `nongchangzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='农场资讯';

/*Data for the table `nongchangzixun` */

insert  into `nongchangzixun`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fengmian`,`shipin`,`faburen`,`fabushijian`,`clicktime`,`clicknum`) values (11,'2021-03-24 22:39:16','标题1','简介1','内容1','http://localhost:8080/ssmpxwex/upload/nongchangzixun_fengmian1.jpg','','发布人1','2021-03-24','2021-03-24 22:39:16',1),(12,'2021-03-24 22:39:16','标题2','简介2','内容2','http://localhost:8080/ssmpxwex/upload/nongchangzixun_fengmian2.jpg','','发布人2','2021-03-24','2021-03-24 22:48:19',6),(13,'2021-03-24 22:39:16','标题3','简介3','内容3','http://localhost:8080/ssmpxwex/upload/nongchangzixun_fengmian3.jpg','','发布人3','2021-03-24','2021-03-24 22:39:16',3),(14,'2021-03-24 22:39:16','标题4','简介4','内容4','http://localhost:8080/ssmpxwex/upload/nongchangzixun_fengmian4.jpg','','发布人4','2021-03-24','2021-03-24 22:39:16',4),(15,'2021-03-24 22:39:16','标题5','简介5','内容5','http://localhost:8080/ssmpxwex/upload/nongchangzixun_fengmian5.jpg','','发布人5','2021-03-24','2021-03-24 22:48:07',6),(16,'2021-03-24 22:39:16','标题6','简介6','内容6','http://localhost:8080/ssmpxwex/upload/nongchangzixun_fengmian6.jpg','','发布人6','2021-03-24','2021-03-24 22:46:38',7);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616597218568 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`,`tupian`) values (71,'2021-03-24 22:39:16','商品类型1','http://localhost:8080/ssmpxwex/upload/shangpinleixing_tupian1.jpg'),(72,'2021-03-24 22:39:16','商品类型2','http://localhost:8080/ssmpxwex/upload/shangpinleixing_tupian2.jpg'),(73,'2021-03-24 22:39:16','商品类型3','http://localhost:8080/ssmpxwex/upload/shangpinleixing_tupian3.jpg'),(74,'2021-03-24 22:39:16','商品类型4','http://localhost:8080/ssmpxwex/upload/shangpinleixing_tupian4.jpg'),(75,'2021-03-24 22:39:16','商品类型5','http://localhost:8080/ssmpxwex/upload/shangpinleixing_tupian5.jpg'),(76,'2021-03-24 22:39:16','商品类型6','http://localhost:8080/ssmpxwex/upload/shangpinleixing_tupian6.jpg'),(1616597207843,'2021-03-24 22:46:47','数码',''),(1616597218567,'2021-03-24 22:46:57','电器','http://localhost:8080/ssmpxwex/upload/1616597216979.jpg');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616597237231 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`guige`,`tupian`,`shangpinjieshao`,`maijiazhanghao`,`maijiaxingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`,`userid`) values (61,'2021-03-24 22:39:16','商品名称1','商品类型1','规格1','http://localhost:8080/ssmpxwex/upload/shangpinxinxi_tupian1.jpg','商品介绍1','卖家账号1','卖家姓名1',1,1,'2021-03-24 22:39:16',1,99.9,1),(62,'2021-03-24 22:39:16','商品名称2','商品类型2','规格2','http://localhost:8080/ssmpxwex/upload/shangpinxinxi_tupian2.jpg','商品介绍2','卖家账号2','卖家姓名2',2,2,'2021-03-24 22:39:16',2,99.9,2),(63,'2021-03-24 22:39:16','商品名称3','商品类型3','规格3','http://localhost:8080/ssmpxwex/upload/shangpinxinxi_tupian3.jpg','商品介绍3','卖家账号3','卖家姓名3',3,3,'2021-03-24 22:39:16',3,99.9,3),(64,'2021-03-24 22:39:16','商品名称4','商品类型4','规格4','http://localhost:8080/ssmpxwex/upload/shangpinxinxi_tupian4.jpg','商品介绍4','卖家账号4','卖家姓名4',4,4,'2021-03-24 22:39:16',4,99.9,4),(65,'2021-03-24 22:39:16','商品名称5','商品类型5','规格5','http://localhost:8080/ssmpxwex/upload/shangpinxinxi_tupian5.jpg','商品介绍5','卖家账号5','卖家姓名5',5,5,'2021-03-24 22:39:16',5,99.9,5),(66,'2021-03-24 22:39:16','商品名称6','商品类型6','规格6','http://localhost:8080/ssmpxwex/upload/shangpinxinxi_tupian6.jpg','商品介绍6','卖家账号6','卖家姓名6',6,6,'2021-03-24 22:39:16',6,99.9,6),(1616597237230,'2021-03-24 22:47:16','东方闪电','电器','第三方','http://localhost:8080/ssmpxwex/upload/1616597232544.jpg','对方水电费删掉','22','22',0,0,'2021-03-24 22:47:35',1,15,1616597170101);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1616597170101,'22','maijia','卖家','xel5m3mhc0v4488avhtd3c1v1ki2kfy9','2021-03-24 22:46:20','2021-03-24 23:46:21'),(2,1616597176167,'11','yonghu','用户','5vyiay18bqs2icj6p6lug7ej94jga6ei','2021-03-24 22:47:31','2021-03-24 23:47:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-24 22:39:16');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616597176168 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (21,'2021-03-24 22:39:16','用户1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmpxwex/upload/yonghu_zhaopian1.jpg',100),(22,'2021-03-24 22:39:16','用户2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmpxwex/upload/yonghu_zhaopian2.jpg',100),(23,'2021-03-24 22:39:16','用户3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmpxwex/upload/yonghu_zhaopian3.jpg',100),(24,'2021-03-24 22:39:16','用户4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmpxwex/upload/yonghu_zhaopian4.jpg',100),(25,'2021-03-24 22:39:16','用户5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmpxwex/upload/yonghu_zhaopian5.jpg',100),(26,'2021-03-24 22:39:16','用户6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmpxwex/upload/yonghu_zhaopian6.jpg',100),(1616597176167,'2021-03-24 22:46:16','11','11','11知识点','22','男','11111111111','11@qq.com','http://localhost:8080/ssmpxwex/upload/1616597319985.jpg',0);

/*Table structure for table `yonghufenxiang` */

DROP TABLE IF EXISTS `yonghufenxiang`;

CREATE TABLE `yonghufenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenxiangbiaoti` varchar(200) NOT NULL COMMENT '分享标题',
  `fenxiangleixing` varchar(200) NOT NULL COMMENT '分享类型',
  `fenxiangneirong` longtext COMMENT '分享内容',
  `fenxiangtupian` varchar(200) DEFAULT NULL COMMENT '分享图片',
  `fenxiangriqi` date DEFAULT NULL COMMENT '分享日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='用户分享';

/*Data for the table `yonghufenxiang` */

insert  into `yonghufenxiang`(`id`,`addtime`,`fenxiangbiaoti`,`fenxiangleixing`,`fenxiangneirong`,`fenxiangtupian`,`fenxiangriqi`,`zhanghao`,`xingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`userid`) values (41,'2021-03-24 22:39:16','分享标题1','分享类型1','分享内容1','http://localhost:8080/ssmpxwex/upload/yonghufenxiang_fenxiangtupian1.jpg','2021-03-24','账号1','姓名1',1,1,'2021-03-24 22:39:16',1,1),(42,'2021-03-24 22:39:16','分享标题2','分享类型2','分享内容2','http://localhost:8080/ssmpxwex/upload/yonghufenxiang_fenxiangtupian2.jpg','2021-03-24','账号2','姓名2',2,2,'2021-03-24 22:39:16',2,2),(43,'2021-03-24 22:39:16','分享标题3','分享类型3','分享内容3','http://localhost:8080/ssmpxwex/upload/yonghufenxiang_fenxiangtupian3.jpg','2021-03-24','账号3','姓名3',3,3,'2021-03-24 22:39:16',3,3),(44,'2021-03-24 22:39:16','分享标题4','分享类型4','分享内容4','http://localhost:8080/ssmpxwex/upload/yonghufenxiang_fenxiangtupian4.jpg','2021-03-24','账号4','姓名4',4,4,'2021-03-24 22:39:16',4,4),(45,'2021-03-24 22:39:16','分享标题5','分享类型5','分享内容5','http://localhost:8080/ssmpxwex/upload/yonghufenxiang_fenxiangtupian5.jpg','2021-03-24','账号5','姓名5',5,5,'2021-03-24 22:39:16',5,5),(46,'2021-03-24 22:39:16','分享标题6','分享类型6','分享内容6','http://localhost:8080/ssmpxwex/upload/yonghufenxiang_fenxiangtupian6.jpg','2021-03-24','账号6','姓名6',6,6,'2021-03-24 22:39:16',6,6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
