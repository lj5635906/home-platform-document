/*==============================================================*/
/* Table: home_developer        ������                   		*/
/*==============================================================*/
drop table if exists home_developer;
create table home_developer(
	developer_id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	developer_code		            varchar(30)									COMMENT "��˾����",
	developer_name	        		varchar(30)									COMMENT "��˾����",
	developer_alias	        		varchar(30)									COMMENT "��˾����",
	president_name        			varchar(30)                 				COMMENT "���˴���",
	charger_name          			varchar(30)                 				COMMENT "������",
	charger_mobile        			varchar(50)                 				COMMENT "��������ϵ�绰",

 	country_id			  			bigint(20)   								COMMENT "����Id",
	country 			  			varchar(50)   								COMMENT "����",
	province_id		  	    		bigint(20)     								COMMENT "ʡId",
	province 			  			varchar(50)   								COMMENT "ʡ",
	city_id			        		bigint(20)     								COMMENT "��Id",
	city 			  				varchar(50)   								COMMENT "��",
	district_id		        		bigint(20)     								COMMENT "��Id",
	district 			  			varchar(50)   								COMMENT "��",
	address              			varchar(128)                				COMMENT "��ϸ��ַ",
	register_address      			varchar(128)                				COMMENT "����ע����ϸ��ַ",
	
	create_building_limit			int(20)										COMMENT "�ÿ����̴���¥������",
	validate_type    				tinyint(1)             				        COMMENT "��Ч�ڱ�־(1-������Ч,2-��ʱ�䷶Χ����Ч)",
	validate_begin_date    			DATE										COMMENT "��Ч�ڿ�ʼʱ��",
	validate_end_date      			DATE										COMMENT "��Ч�ڽ���ʱ��",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
   primary key (developer_id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "������";

/*==============================================================*/
/* Table: home_developer_operation_area        ��������Ӫ����   */
/*==============================================================*/
drop table if exists home_developer_operation_area;
create table home_developer_operation_area(
	id 						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	developer_id		        	bigint(20)									COMMENT "������Id",
	parent_id			        	bigint(20)									COMMENT "��������Id",
	operation_area_name				varchar(50)									COMMENT "����",
	direct_buildings 				int(10)										COMMENT "������ֱ��¥����Ŀ",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "��������Ӫ����";

/*==============================================================*/
/* Table: home_developer_operation_account  ��������Ӫ��������˺�  */
/*==============================================================*/
drop table if exists home_developer_operation_account;
create table home_developer_operation_account(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	developer_id		        	bigint(20)									COMMENT "������Id",
	operation_area_id		        bigint(20)									COMMENT "��������Ӫ����Id",
	account			        		varchar(30)									COMMENT "�˺�����",
	password						varchar(128)								COMMENT "����",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "��������Ӫ��������˺�";


/*==============================================================*/
/* Table: home_developer_operation_account_login_log  ��������Ӫ��������˺ŵ�½��־  */
/*==============================================================*/
drop table if exists home_developer_operation_account_login_log;
create table home_developer_operation_account_login_log(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	developer_id		        	bigint(20)									COMMENT "������Id",
	operation_area_id		        bigint(20)									COMMENT "��������Ӫ����Id",
	account			        		varchar(30)									COMMENT "�˺�����",
	login_ip						varchar(30)									COMMENT "��½IP��ַ",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "��������Ӫ��������˺ŵ�½��־";


/*==============================================================*/
/* Table: home_building        		¥�̱�                      */
/*==============================================================*/
DROP TABLE IF EXISTS home_building;
CREATE TABLE home_building(
	building_id				        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����Id",

	developer_id					bigint(20)		    			            COMMENT "������Id",
	operation_area_id		        bigint(20)									COMMENT "��������Ӫ����Id",
	building_name					varchar(50)      				            COMMENT "¥������",
	management_company_name       	varchar(50)      				            COMMENT "����˾����",
	charger_name         			varchar(30)         						COMMENT "������",
	charger_mobile       			varchar(30)         						COMMENT "��������ϵ�绰",
	
 	country_id			  			bigint(20)   								COMMENT "����Id",
	country 			  			varchar(50)   								COMMENT "����",
	province_id		  	    		bigint(20)     								COMMENT "ʡId",
	province 			  			varchar(50)   								COMMENT "ʡ",
	city_id			        		bigint(20)     								COMMENT "��Id",
	city 			  				varchar(50)   								COMMENT "��",
	district_id		        		bigint(20)     								COMMENT "��Id",
	district 			  			varchar(50)   								COMMENT "��",
	address              			varchar(111)                				COMMENT "��ϸ��ַ",
	
	longitude						double										COMMENT "����",
	latitude						double										COMMENT "γ��",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "¥�̱�";


/*==============================================================*/
/* Table: home_building_position  ¥��ְλ  */
/*==============================================================*/
drop table if exists home_building_position;
create table home_building_position(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	developer_id		        	bigint(20)									COMMENT "������Id",
	operation_area_id		        bigint(20)									COMMENT "��������Ӫ����Id",
	building_id						bigint(20)		    			            COMMENT "¥��Id",
	parent_id			        	bigint(20)									COMMENT "����ְλId",
	position_name					varchar(128)								COMMENT "ְλ����",
	position_alias					varchar(128)								COMMENT "ְλ����",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "¥��ְλ";


/*==============================================================*/
/* Table: home_apply_cooperation  �������������  				*/
/*==============================================================*/
drop table if exists home_apply_cooperation;
create table home_apply_cooperation(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	developer_id		        	bigint(20)									COMMENT "������Id",
	operation_area_id		        bigint(20)									COMMENT "��������Ӫ����Id",
	building_id						bigint(20)		    			            COMMENT "¥��Id",
	distribution_id		        	bigint(20)									COMMENT "������Id",
	
	cooperation_status				tinyint(1)									COMMENT "״̬ 1-�ȴ����,2-���ͨ��,3-��˾ܾ�,4-�������,4-���º���",
 	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "�������������";

/*==============================================================*/
/* Table: home_apply_cooperation_record  ���������������˼�¼  */
/*==============================================================*/
drop table if exists home_apply_cooperation_record;
create table home_apply_cooperation_record(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	apply_cooperation_id		    bigint(20)									COMMENT "������Id",
	remark							varchar(128)								COMMENT "��ע",
 	
	employee_building_position_id	bigint(20)									COMMENT "������Ա Ա��¥�̸�λId",
	employee_id						bigint(20)		    			            COMMENT "������Ա Ա��Id",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "�������������";














