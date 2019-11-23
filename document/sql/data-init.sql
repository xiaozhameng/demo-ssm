-- 数据库创建
CREATE DATABASE `xiaozhameng` /*!40100 DEFAULT CHARACTER SET latin1 */

-- 数据表创建
CREATE TABLE `user_info` (
                           `ID` bigint(20) NOT NULL AUTO_INCREMENT,
                           `USER_ID` varchar(20) DEFAULT '' COMMENT '用户ID',
                           `USER_NAME` varchar(20) DEFAULT '' COMMENT '用户姓名',
                           `NICK_NAME` varchar(20) DEFAULT '' COMMENT '昵称',
                           `EMAIL` varchar(50) DEFAULT '' COMMENT '邮箱',
                           `SEX` varchar(9) DEFAULT '' COMMENT '性别',
                           `MOBILE` varchar(15) DEFAULT '' COMMENT '手机号',
                           PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30517351 DEFAULT CHARSET=utf8 COMMENT='用户表';


-- 创建mysql 用户
create user 'test'@'%' identified by '123456';
-- mysql 给用户授权
grant all privileges on xiaozhameng.* to 'test'@'%' identified by '123456';
