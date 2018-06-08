/*==============================================================*/
/* Table: home_developer        开发商                   		*/
/*==============================================================*/
drop table if exists home_developer;
create table home_developer(
	developer_id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	developer_code		            varchar(30)									COMMENT "公司代码",
	developer_name	        		varchar(30)									COMMENT "公司名称",
	developer_alias	        		varchar(30)									COMMENT "公司别名",
	president_name        			varchar(30)                 				COMMENT "法人代表",
	charger_name          			varchar(30)                 				COMMENT "负责人",
	charger_mobile        			varchar(50)                 				COMMENT "负责人联系电话",

 	country_id			  			bigint(20)   								COMMENT "国家Id",
	country 			  			varchar(50)   								COMMENT "国家",
	province_id		  	    		bigint(20)     								COMMENT "省Id",
	province 			  			varchar(50)   								COMMENT "省",
	city_id			        		bigint(20)     								COMMENT "市Id",
	city 			  				varchar(50)   								COMMENT "市",
	district_id		        		bigint(20)     								COMMENT "区Id",
	district 			  			varchar(50)   								COMMENT "区",
	address              			varchar(128)                				COMMENT "详细地址",
	register_address      			varchar(128)                				COMMENT "工商注册详细地址",
	
	create_building_limit			int(20)										COMMENT "该开发商创建楼盘上限",
	validate_type    				tinyint(1)             				        COMMENT "有效期标志(1-永久有效,2-在时间范围内有效)",
	validate_begin_date    			DATE										COMMENT "有效期开始时间",
	validate_end_date      			DATE										COMMENT "有效期结束时间",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
   primary key (developer_id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "开发商";

/*==============================================================*/
/* Table: home_developer_operation_area        开发商运营区域   */
/*==============================================================*/
drop table if exists home_developer_operation_area;
create table home_developer_operation_area(
	id 						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	developer_id		        	bigint(20)									COMMENT "开发商Id",
	parent_id			        	bigint(20)									COMMENT "父级区域Id",
	operation_area_name				varchar(50)									COMMENT "名称",
	direct_buildings 				int(10)										COMMENT "该区域直属楼盘数目",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "开发商运营区域";

/*==============================================================*/
/* Table: home_developer_operation_account  开发商运营区域管理账号  */
/*==============================================================*/
drop table if exists home_developer_operation_account;
create table home_developer_operation_account(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	developer_id		        	bigint(20)									COMMENT "开发商Id",
	operation_area_id		        bigint(20)									COMMENT "开发商运营区域Id",
	account			        		varchar(30)									COMMENT "账号名称",
	password						varchar(128)								COMMENT "密码",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "开发商运营区域管理账号";


/*==============================================================*/
/* Table: home_developer_operation_account_login_log  开发商运营区域管理账号登陆日志  */
/*==============================================================*/
drop table if exists home_developer_operation_account_login_log;
create table home_developer_operation_account_login_log(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	developer_id		        	bigint(20)									COMMENT "开发商Id",
	operation_area_id		        bigint(20)									COMMENT "开发商运营区域Id",
	account			        		varchar(30)									COMMENT "账号名称",
	login_ip						varchar(30)									COMMENT "登陆IP地址",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "开发商运营区域管理账号登陆日志";


/*==============================================================*/
/* Table: home_building        		楼盘表                      */
/*==============================================================*/
DROP TABLE IF EXISTS home_building;
CREATE TABLE home_building(
	building_id				        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键Id",

	developer_id					bigint(20)		    			            COMMENT "开发商Id",
	operation_area_id		        bigint(20)									COMMENT "开发商运营区域Id",
	building_name					varchar(50)      				            COMMENT "楼盘名称",
	management_company_name       	varchar(50)      				            COMMENT "管理公司名称",
	charger_name         			varchar(30)         						COMMENT "负责人",
	charger_mobile       			varchar(30)         						COMMENT "负责人联系电话",
	
 	country_id			  			bigint(20)   								COMMENT "国家Id",
	country 			  			varchar(50)   								COMMENT "国家",
	province_id		  	    		bigint(20)     								COMMENT "省Id",
	province 			  			varchar(50)   								COMMENT "省",
	city_id			        		bigint(20)     								COMMENT "市Id",
	city 			  				varchar(50)   								COMMENT "市",
	district_id		        		bigint(20)     								COMMENT "区Id",
	district 			  			varchar(50)   								COMMENT "区",
	address              			varchar(111)                				COMMENT "详细地址",
	
	longitude						double										COMMENT "经度",
	latitude						double										COMMENT "纬度",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "楼盘表";


/*==============================================================*/
/* Table: home_building_position  楼盘职位  */
/*==============================================================*/
drop table if exists home_building_position;
create table home_building_position(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	developer_id		        	bigint(20)									COMMENT "开发商Id",
	operation_area_id		        bigint(20)									COMMENT "开发商运营区域Id",
	building_id						bigint(20)		    			            COMMENT "楼盘Id",
	parent_id			        	bigint(20)									COMMENT "父级职位Id",
	position_name					varchar(128)								COMMENT "职位名称",
	position_alias					varchar(128)								COMMENT "职位别名",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "楼盘职位";


/*==============================================================*/
/* Table: home_apply_cooperation  分销商申请合作  				*/
/*==============================================================*/
drop table if exists home_apply_cooperation;
create table home_apply_cooperation(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	developer_id		        	bigint(20)									COMMENT "开发商Id",
	operation_area_id		        bigint(20)									COMMENT "开发商运营区域Id",
	building_id						bigint(20)		    			            COMMENT "楼盘Id",
	distribution_id		        	bigint(20)									COMMENT "分销商Id",
	
	cooperation_status				tinyint(1)									COMMENT "状态 1-等待审核,2-审核通过,3-审核拒绝,4-解除合作,4-重新合作",
 	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "分销商申请合作";

/*==============================================================*/
/* Table: home_apply_cooperation_record  分销商申请合作审核记录  */
/*==============================================================*/
drop table if exists home_apply_cooperation_record;
create table home_apply_cooperation_record(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	apply_cooperation_id		    bigint(20)									COMMENT "开发商Id",
	remark							varchar(128)								COMMENT "备注",
 	
	employee_building_position_id	bigint(20)									COMMENT "操作人员 员工楼盘岗位Id",
	employee_id						bigint(20)		    			            COMMENT "操作人员 员工Id",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "分销商申请合作";














