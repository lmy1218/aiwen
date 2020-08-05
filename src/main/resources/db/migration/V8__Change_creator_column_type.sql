alter table tb_question modify creator_id bigint not null;
alter table `tb_comment` modify commentator_id bigint not null