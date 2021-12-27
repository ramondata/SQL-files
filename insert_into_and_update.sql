

insert into departamento (id,nome) values (100,'financeiro')

select * from departamento

insert into departamento values (200,'compras')

INSERT INTO EMPREGADO
VALUES (2, 'Neves', 'Lauro', 'Diretor de Compras',19500, '07/03/2009','23456789012',200);
INSERT INTO EMPREGADO
VALUES (3, 'Nogueira', 'Mário','Diretor de Vendas', 18000, '07/04/2010','34567890123',100);
INSERT INTO EMPREGADO
VALUES (4, 'Queiroz', 'Mark','Gerente de Compras',8000, '07/11/2010','12345432123',200);
INSERT INTO EMPREGADO
VALUES( 5, 'Rodrigues', 'Alberto', 'Vendedor',4000, '10/1/2008', '87965432123', 100);
INSERT INTO EMPREGADO
VALUES( 6, 'Ugarte', 'Marlene', 'Vendedor', 3500,'23/11/2009', '87654345678',100)

select * from empregado

update empregado
set salario = salario + 1000

UPDATE EMPREGADO
SET SALARIO = 3000
WHERE ID = 10 OR ID = 20