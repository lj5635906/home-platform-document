
/*==============================================================*/
/* Table: home_distribution            ������                    */
/*==============================================================*/
drop table if exists home_distribution;
create table home_distribution(
	id 						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
 	code		            		varchar(30)									COMMENT "�����̹�˾����",
	distribution_name        		varchar(30)									COMMENT "�����̹�˾����",
	distribution_alias        		varchar(30)									COMMENT "�����̹�˾����",
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
	address              			varchar(128)                 				COMMENT "��ϸ��ַ",
	register_address      			varchar(128)                				COMMENT "����ע����ϸ��ַ",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "������";

/*==============================================================*/
/* Table: home_building_position  ������ְλ  */
/*==============================================================*/
drop table if exists home_distribution_position;
create table home_distribution_position(
	id						        bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	distribution_id		        	bigint(20)									COMMENT "������Id",
	building_id						bigint(20)		    			            COMMENT "¥��Id",
	parent_id			        	bigint(20)									COMMENT "����ְλId",
	position_name					varchar(128)								COMMENT "ְλ����",
	position_alias					varchar(128)								COMMENT "ְλ����",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
   primary key (id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "¥��ְλ";