select year(data) as data_venda, nome as vendedor, count(nome) as vendas_na_data
from [TABELA DE VENDEDORES] as vend
inner join [NOTAS FISCAIS]
on vend.MATRICULA = [NOTAS FISCAIS].MATRICULA
group by year(data), nome
having year(data) = 2017
order by nome


select* from [TABELA DE VENDEDORES]

select *
from [TABELA DE VENDEDORES] as vend
inner join [NOTAS FISCAIS]
on vend.MATRICULA = [NOTAS FISCAIS].MATRICULA
where nome like '%pericles%'