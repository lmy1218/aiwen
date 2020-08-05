create table tb_question
		(
		id int auto_increment primary key,
		title varchar(50),
		description text,
		create_time bigint,
		update_time bigint,
		creator_id int,
		comment_count int default 0,
		view_count int default 0,
		like_count int default 0,
		tag varchar(256)
		)