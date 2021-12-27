begin transaction
/* Banco de dados mercado_financeiro criado */

/* Entidade criada com base na planilha que gera os dados que serão inseridos aqui */
create table fato_market
(id serial int,
 setor varchar(10),
 ativo varchar(10),
 Preco_medio float,
 Qtd float,
 Valor_medio float,
 pregao float,
 posicao float,
 lucro float
 )
 
 /* Alteramos a tabela fazendo a inserção de mais um atributo necessário para validação com os dados */
 alter table fato_market add (variacao float not null)
 
 /* Criação de um índice para a tabela fato_market devido seu potencial de se tornar uma tabela BigData*/
 create index id_ind on
 fato_market(id)
 
 /* Entidade criada com o intuito de manter informações únicas para as ações da carteira vistas no projeto */
 create table dimensao_market
(setor varchar(10),
 ativo varchar(10) primary key,
 comentario varchar(60))
 
 /* Verificação de criação das tabelas */
 select * from fato_market
 
 select * from dimensao_market
 
 savepoint A
 
 /* Inserts as tabelas para verificar dtypes e aceitação dos dados */
 insert into fato_market values ('Financeiro','JPM')
 
 insert into dimensao_market values ('Financeiro','JPM','comment')
 
 savepoint B
 
 /* Alterando os dados de testes de ambas as tabelas */
 update fato_market
 set ativo = 'BAC'
 where ativo = 'JPM'
 
 update dimensao_market
 set ativo = 'BAC'
 where ativo = 'JPM'
 
 savepoint C
 
 /* Delete de dados de testes de ambas as tabelas */
 delete from fato_market
 where ativo = 'BAC'
 
 delete from dimensao_market
 where ativo = 'BAC'
 
 /* View criada para check dos ativos inseridos na tabela FATO  do banco de dados */
 create view ativo_check as
 select distinct 
 f.ativo as ativo, case when f.ativo = d.ativo then 'ok' else 'error' end as check
 from fato_market f
 inner join dimensao_market d
 on f.ativo = d.ativo
 
 /* Confirmação e encerramento da transaction com as tabelas criadas e testadas*/
 commit
 
 
 
 