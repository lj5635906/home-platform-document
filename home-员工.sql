
/*===========================================================================*/
/* table:home_employee                    	员工信息表			   			 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee;
CREATE TABLE home_employee(
	employee_id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	staffName						varchar(50)								    COMMENT "姓名",
	mobile                			varchar(50) 		    					COMMENT "电话",
	email							varchar(50)									COMMENT "邮箱",
	head_image			 			varchar(255)     							COMMENT "头像",
	employee_password				varchar(128)								COMMENT "密码",
	marital_status		 			tinyint(1)       							COMMENT "婚姻状况 1-未婚,2-已婚",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
	PRIMARY KEY(employee_id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "员工信息表";


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
	work_state						tinyint(1)									COMMENT "工作状态(1-在职,2-离职)",
	entry_time						date										COMMENT "入职时间",
	dimission_time					date										COMMENT "离职时间",
	
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
	PRIMARY KEY(employee_id)
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
	work_state						tinyint(1)									COMMENT "工作状态(1-在职,2-离职)",
	entry_time						date										COMMENT "入职时间",
	dimission_time					date										COMMENT "离职时间",
	
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
	PRIMARY KEY(employee_id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "员工开分销商职位表";