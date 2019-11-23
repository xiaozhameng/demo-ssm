# demo-ssm
一个Spring+SpringMVC+Mybatis 搭建的基础框架

## 项目说明
这是一个简单的基于Spring+SpringMvc+Mybatis搭建的web项目

## 部署&启动
如果想在本地部署，启动，需要先搭建数据库，参考 document/sql/data-init.sql 文件中的建库建表语句，并同步修改demo-ssm/demo-ssm-web/src/main/resources/jdbc.properties文件中的数据配置

## 添加Tomcat配置
本地添加即可

## 访问
启动后，通过http://localhost:8080/userInfo/query/{userId} 即可成功访问

## 后记
其他功能可以依据以上ssm搭建的流程继续完成