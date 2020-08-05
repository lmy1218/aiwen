create table tb_nav
(
    id int auto_increment primary key not null,
    title varchar(100),
    url varchar(256),
    priority int default 0,
    create_time bigint,
    modified_time bigint,
    status int
);