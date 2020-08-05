create table tb_comment
(
    id bigint auto_increment primary key,
    parent_id bigint not null,
    type int not null,
    commentator_id int not null,
    create_time bigint not null,
    modified_time bigint not null,
    like_count bigint default 0
);