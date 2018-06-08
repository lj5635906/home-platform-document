
/*===========================================================================*/
/* table:home_employee                    	Ա����Ϣ��			   			 */
/*===========================================================================*/
DROP TABLE IF EXISTS home_employee;
CREATE TABLE home_employee(
	employee_id 					bigint(20) 		  	AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	staffName						varchar(50)								    COMMENT "����",
	mobile                			varchar(50) 		    					COMMENT "�绰",
	email							varchar(50)									COMMENT "����",
	head_image			 			varchar(255)     							COMMENT "ͷ��",
	employee_password				varchar(128)								COMMENT "����",
	marital_status		 			tinyint(1)       							COMMENT "����״�� 1-δ��,2-�ѻ�",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
	PRIMARY KEY(employee_id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "Ա����Ϣ��";


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
	work_state						tinyint(1)									COMMENT "����״̬(1-��ְ,2-��ְ)",
	entry_time						date										COMMENT "��ְʱ��",
	dimission_time					date										COMMENT "��ְʱ��",
	
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
	PRIMARY KEY(employee_id)
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
	work_state						tinyint(1)									COMMENT "����״̬(1-��ְ,2-��ְ)",
	entry_time						date										COMMENT "��ְʱ��",
	dimission_time					date										COMMENT "��ְʱ��",
	
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
	PRIMARY KEY(employee_id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "Ա����������ְλ��";