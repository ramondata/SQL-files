begin transaction

create sequence repositorio
start with 1
increment by 1

create index repositorio
on repositorio(id)

create table repositorio
(id int primary key,
nome varchar(30),
idade int,
relato varchar(60))
 
select * from repositorio

insert into repositorio values (3,'Chico',2,'Legal é estar com a familia')

delete from repositorio
where id is null

alter table repositorio add dia int

alter table repositorio drop column palavra

update repositorio
set dia = 08
where id = 3

savepoint A

rollback

commit