
/*===========================================================================*/
/* table:home_employee                    	Ա����Ϣ��			   			 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee;
CREATE TABLE home_employee(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	employee_name					varchar(50)								    COMMENT "����",
	mobile                			varchar(50) 		    					COMMENT "�绰",
	email							varchar(50)									COMMENT "����",
	head_image			 			varchar(255)     							COMMENT "ͷ��",
	employee_password				varchar(128)								COMMENT "����",
	marital_status		 			tinyint(1)       							COMMENT "����״�� 0-δ��,1-�ѻ�",
	certification_status			tinyint(1)       							COMMENT "ʵ����֤״̬ 0-δ��֤,1-����֤",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "ɾ����־ 0-δɾ��1-ɾ��",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "Ա����Ϣ��";


/*===========================================================================*/
/* table:home_employee_card                    	Ա��֤����Ϣ��	 	   		 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee_card;
CREATE TABLE home_employee_card(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	employee_id						bigint(20)		    			            COMMENT "Ա��Id",
	card_number 					varchar(50) 	DEFAULT NULL 				COMMENT "֤������",
    card_address					varchar(200) 	DEFAULT NULL 				COMMENT "֤����ַ",
	card_name						varchar(50) 	DEFAULT NULL 				COMMENT "����",
	gender			 				tinyint(1) 		DEFAULT NULL 				COMMENT "�Ա�(0-�С�1-Ů)",
	birthday						datetime 		DEFAULT NULL 				COMMENT "��������",
	card_image						varchar(255)	DEFAULT NULL				COMMENT "֤��ͷ��",
	card_front_image				varchar(255) 	 							COMMENT "���֤������",
	card_back_image		 			varchar(255) 	  							COMMENT "���֤��������",
	card_face_image					varchar(255) 	  							COMMENT "�ֳ����֤��",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "ɾ����־ 0-δɾ��1-ɾ��",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "Ա��֤����Ϣ��";


/*===========================================================================*/
/* table:home_employee_source             Ա����Դ��Ϣ��			   		 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee_source;
CREATE TABLE home_employee_source(
	id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	developer_id		        	bigint(20)									COMMENT "������Id",
	operation_area_id		        bigint(20)									COMMENT "��������Ӫ����Id",
	building_id						bigint(20)		    			            COMMENT "¥��Id",
	
	distribution_id		        	bigint(20)									COMMENT "������Id",

	employee_id						bigint(20)		    			            COMMENT "Ա��Id",

	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "ɾ����־ 0-δɾ��1-ɾ��",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "Ա����Դ��Ϣ��";


/*===========================================================================*/
/* table:home_employee_building_position    Ա��������¥��ְλ��		  	 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee_building_position;
CREATE TABLE home_employee_building_position(
	id 								bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	developer_id		        	bigint(20)									COMMENT "������Id",
	operation_area_id		        bigint(20)									COMMENT "��������Ӫ����Id",
	building_id						bigint(20)		    			            COMMENT "¥��Id",
	building_position_id			bigint(20)		    			            COMMENT "¥��ְλId",
	
	employee_id						bigint(20)		    			            COMMENT "Ա��Id",
	work_state						tinyint(1)									COMMENT "����״̬(0-��ְ,1-��ְ)",
	entry_time						date										COMMENT "��ְʱ��",
	dimission_time					date										COMMENT "��ְʱ��",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "ɾ����־ 0-δɾ��1-ɾ��",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "Ա��������¥��ְλ��";


/*===========================================================================*/
/* table:home_employee_distribution_position    Ա����������ְλ��		  	 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee_distribution_position;
CREATE TABLE home_employee_distribution_position(
	id 								bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	distribution_id		        	bigint(20)									COMMENT "������Id",
	distribution_position_id		bigint(20)		    			            COMMENT "������ְλId",
	
	employee_id						bigint(20)		    			            COMMENT "Ա��Id",
	work_state						tinyint(1)									COMMENT "����״̬(0-��ְ,1-��ְ)",
	entry_time						date										COMMENT "��ְʱ��",
	dimission_time					date										COMMENT "��ְʱ��",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "0"            COMMENT "ɾ����־ 0-δɾ��1-ɾ��",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "Ա����������ְλ��";