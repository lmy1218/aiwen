create table tb_user
(
	id int auto_increment primary key,
	account_id varchar(100),
	name varchar(50),
	token char(36),
	create_time bigint,
	update_time bigint
);

