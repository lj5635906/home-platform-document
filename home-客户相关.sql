/*==============================================================*/
/* Table: home_customer					        客户表          */
/*==============================================================*/
DROP TABLE IF EXISTS home_customer;
CREATE TABLE home_customer(
	customer_id 					bigint(20)  	 AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	mobile               			varchar(50)     							COMMENT "电话",
	email				 			varchar(50)     							COMMENT "邮箱",
	customer_name				 	varchar(50)     							COMMENT "姓名",
	customer_password				varchar(128)     							COMMENT "用户登陆密码",
	head_image			 			varchar(255)     							COMMENT "头像",
	gender				 			tinyint(1)									COMMENT "性别性别(1-男、2-女)",
	birthday			 			date    									COMMENT "出生日期",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "客户表";

