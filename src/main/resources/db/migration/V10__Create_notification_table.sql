create table tb_notification
(
    id bigint auto_increment primary key,
    notifier bigint not null,
    receiver bigint not null,
    outerid bigint not null,
    type int not null,
    create_time bigint not null,
    status int default 0 not null
);