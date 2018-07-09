
/*===========================================================================*/
/* table:home_employee                    	员工信息表			   			 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee;
CREATE TABLE home_employee(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	employee_name					varchar(50)								    COMMENT "姓名",
	mobile                			varchar(50) 		    					COMMENT "电话",
	email							varchar(50)									COMMENT "邮箱",
	head_image			 			varchar(255)     							COMMENT "头像",
	employee_password				varchar(128)								COMMENT "密码",
	marital_status		 			tinyint(1)       							COMMENT "婚姻状况 0-未婚,1-已婚",
	certification_status			tinyint(1)       							COMMENT "实名认证状态 0-未认证,1-已认证",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "员工信息表";


/*===========================================================================*/
/* table:home_employee_card                    	员工证件信息表	 	   		 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee_card;
CREATE TABLE home_employee_card(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	employee_id						bigint(20)		    			            COMMENT "员工Id",
	card_number 					varchar(50) 	DEFAULT NULL 				COMMENT "证件号码",
    card_address					varchar(200) 	DEFAULT NULL 				COMMENT "证件地址",
	card_name						varchar(50) 	DEFAULT NULL 				COMMENT "姓名",
	gender			 				tinyint(1) 		DEFAULT NULL 				COMMENT "性别(0-男、1-女)",
	birthday						datetime 		DEFAULT NULL 				COMMENT "出生日期",
	card_image						varchar(255)	DEFAULT NULL				COMMENT "证件头像",
	card_front_image				varchar(255) 	 							COMMENT "身份证正面照",
	card_back_image		 			varchar(255) 	  							COMMENT "身份证反面面照",
	card_face_image					varchar(255) 	  							COMMENT "手持身份证照",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "员工证件信息表";


/*===========================================================================*/
/* table:home_employee_source             员工来源信息表			   		 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee_source;
CREATE TABLE home_employee_source(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	developer_id		        	bigint(20)									COMMENT "开发商Id",
	operation_area_id		        bigint(20)									COMMENT "开发商运营区域Id",
	building_id						bigint(20)		    			            COMMENT "楼盘Id",
	
	distribution_id		        	bigint(20)									COMMENT "分销商Id",

	employee_id						bigint(20)		    			            COMMENT "员工Id",

	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "员工来源信息表";


/*===========================================================================*/
/* table:home_employee_building_position    员工开发商楼盘职位表		  	 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee_building_position;
CREATE TABLE home_employee_building_position(
	id 								bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	developer_id		        	bigint(20)									COMMENT "开发商Id",
	operation_area_id		        bigint(20)									COMMENT "开发商运营区域Id",
	building_id						bigint(20)		    			            COMMENT "楼盘Id",
	building_position_id			bigint(20)		    			            COMMENT "楼盘职位Id",
	
	employee_id						bigint(20)		    			            COMMENT "员工Id",
	work_state						tinyint(1)									COMMENT "工作状态(0-在职,1-离职)",
	entry_time						date										COMMENT "入职时间",
	dimission_time					date										COMMENT "离职时间",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "员工开发商楼盘职位表";


/*===========================================================================*/
/* table:home_employee_distribution_position    员工开分销商职位表		  	 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee_distribution_position;
CREATE TABLE home_employee_distribution_position(
	id 								bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	distribution_id		        	bigint(20)									COMMENT "分销商Id",
	distribution_position_id		bigint(20)		    			            COMMENT "分销商职位Id",
	
	employee_id						bigint(20)		    			            COMMENT "员工Id",
	work_state						tinyint(1)									COMMENT "工作状态(0-在职,1-离职)",
	entry_time						date										COMMENT "入职时间",
	dimission_time					date										COMMENT "离职时间",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "删除标志 0-未删，1-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "员工开分销商职位表";