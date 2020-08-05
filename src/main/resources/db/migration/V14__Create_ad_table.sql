create table tb_ad
(
    id int auto_increment primary key not null,
    title varchar(256) DEFAULT NULL,
    url varchar(512) DEFAULT NULL,
    image varchar(256) DEFAULT NULL,
    start_time bigint,
    end_time bigint,
    create_time bigint,
    modified_time bigint,
    status int,
    pos varchar(10) NOT NULL
);