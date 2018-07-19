/*===========================================================================*/
/* table:sys_admin                    	管理员			   			 */
/*===========================================================================*/
DROP TABLE IF EXISTS sys_admin;
CREATE TABLE sys_admin(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	admin_name						varchar(50)								    COMMENT "管理员姓名",
	mobile                			varchar(50) 		    					COMMENT "电话",
	email							varchar(50)									COMMENT "邮箱",
	head_image			 			varchar(255)     							COMMENT "头像",
	account							varchar(50)									COMMENT "登录账号",
	password						varchar(128)								COMMENT "密码",
	birthday						datetime									COMMENT "生日",
	state							int(1)										COMMENT "状态(0-未激活,1-正常,2-锁定,3-注销)",						
	last_login						datetime									COMMENT "上一次登录时间",
	login_count						int(1)			DEFAULT 0					COMMENT "登录次数",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "管理员";

/*===========================================================================*/
/* table:sys_admin_log                    	管理员登录日志			     */
/*===========================================================================*/
DROP TABLE IF EXISTS sys_admin_log;
CREATE TABLE sys_admin_log(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	admin_id						bigint(20)		    			            COMMENT "管理员Id",
	login_ip						varchar(125)								COMMENT "登录IP",
	login_type						tinyint(1)									COMMENT "登录类型(0-账号登录,1-短信登录)",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "管理员登录日志";

/*===========================================================================*/
/* table:sys_role                    	角色			     				 */
/*===========================================================================*/
DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
 	role_name						varchar(50)								    COMMENT "角色名",
	remark							varchar(50)									COMMENT "备注",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "角色";

/*===========================================================================*/
/* table:sys_admin_role                    	管理员角色关联				 */
/*===========================================================================*/
DROP TABLE IF EXISTS sys_admin_role;
CREATE TABLE sys_admin_role(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	admin_id						bigint(20)		    			            COMMENT "管理员Id",
	role_id							bigint(20)		    			            COMMENT "角色Id",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "管理员角色关联";

/*===========================================================================*/
/* table:sys_authorization                    	权限			     */
/*===========================================================================*/
DROP TABLE IF EXISTS sys_authorization;
CREATE TABLE sys_authorization(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	name							varchar(50)								    COMMENT "权限名称",
	parent_id						bigint(20)		    			            COMMENT "上级权限Id",
	alias							varchar(50)									COMMENT "别名",
	terminal_type					tinyint(1)									COMMENT "终端类型(0-PC端,1-Mobile端)",
	type							tinyint(1)									COMMENT "权限类型(0-page,1-element)",
	sort							int(10)										COMMENT "序号",			
	auth_icon						varchar(255)								COMMENT "图标",
	module 							varchar(50)  						 		COMMENT "所属模块",
	target 							varchar(50) 								COMMENT "跳转目标",
	url 							varchar(50) 								COMMENT "接口地址",
	level 							smallint(2) 								COMMENT "资源级别(1 一级/2 二级/3 三级)",
	remark							varchar(50)									COMMENT "备注",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "权限";

/*===========================================================================*/
/* table:sys_role_authorization                    	角色权限关联				 */
/*===========================================================================*/
DROP TABLE IF EXISTS sys_role_authorization;
CREATE TABLE sys_role_authorization(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	role_id							bigint(20)		    			            COMMENT "角色Id",
	authorization_id				bigint(20)		    			            COMMENT "权限Id",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "角色权限关联";