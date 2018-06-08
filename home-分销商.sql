
/*==============================================================*/
/* Table: home_distribution            分销商                    */
/*==============================================================*/
drop table if exists home_distribution;
create table home_distribution(
	id 						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
 	code		            		varchar(30)									COMMENT "分销商公司代码",
	distribution_name        		varchar(30)									COMMENT "分销商公司名称",
	distribution_alias        		varchar(30)									COMMENT "分销商公司别名",
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
	address              			varchar(128)                 				COMMENT "详细地址",
	register_address      			varchar(128)                				COMMENT "工商注册详细地址",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "分销商";

/*==============================================================*/
/* Table: home_building_position  分销商职位  */
/*==============================================================*/
drop table if exists home_distribution_position;
create table home_distribution_position(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "主键id",
	
	distribution_id		        	bigint(20)									COMMENT "分销商Id",
	building_id						bigint(20)		    			            COMMENT "楼盘Id",
	parent_id			        	bigint(20)									COMMENT "父级职位Id",
	position_name					varchar(128)								COMMENT "职位名称",
	position_alias					varchar(128)								COMMENT "职位别名",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "更新时间",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "删除标志 1-未删，2-删除",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "楼盘职位";