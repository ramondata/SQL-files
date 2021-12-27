begin transaction

create table teste
(coluna1 int primary key,
coluna2 varchar(30),
coluna3 varchar(60))

select * from teste

savepoint A

insert into teste values (1,'Ramon','Notebook')

select * from teste

Rollback to A

select * from teste

insert into teste values (1,'Ramon','Cientista de dados')
insert into teste values (2,'Carol','Engenheira')
insert into teste values (3,'Chico','Melhor doguinho')
insert into teste values (4,'Juju','Doida')
insert into teste values (5,'Rayssa','Enfermeira instrumentista')

select * from teste

savepoint B

Commit


select 'Hello todos' as Ola, coluna2 as name, coluna1*10 id_10 from teste where coluna1 <> 1

