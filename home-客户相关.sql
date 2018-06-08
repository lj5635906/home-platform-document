/*==============================================================*/
/* Table: home_customer					        �ͻ���          */
/*==============================================================*/
DROP TABLE IF EXISTS home_customer;
CREATE TABLE home_customer(
	customer_id 					bigint(20)  	 AUTO_INCREMENT	NOT NULL COMMENT "����id",
	
	mobile               			varchar(50)     							COMMENT "�绰",
	email				 			varchar(50)     							COMMENT "����",
	customer_name				 	varchar(50)     							COMMENT "����",
	customer_password				varchar(128)     							COMMENT "�û���½����",
	head_image			 			varchar(255)     							COMMENT "ͷ��",
	gender				 			tinyint(1)									COMMENT "�Ա��Ա�(1-�С�2-Ů)",
	birthday			 			date    									COMMENT "��������",
	
	create_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "����ʱ��",
	update_time  					datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����ʱ��",
	delete_flag					  	tinyint(1)  NOT NULL DEFAULT "1"            COMMENT "ɾ����־ 1-δɾ��2-ɾ��",
	PRIMARY KEY(id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT "�ͻ���";

