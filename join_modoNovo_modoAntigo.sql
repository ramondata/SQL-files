select *
from [NOTAS FISCAIS], [TABELA DE VENDEDORES]
where [NOTAS FISCAIS].MATRICULA = [TABELA DE VENDEDORES].MATRICULA


select b.NOME as nome_b, a.MATRICULA as mat_a
from [NOTAS FISCAIS] a
inner join [TABELA DE VENDEDORES] b
on a.MATRICULA = b.MATRICULA

--faturamento da empresa
select year(b.data) as Ano, sum(quantidade) as quantidade_ano, avg(preço) as media_preços, fatura_ano = sum(a.quantidade * a.preço)
from [ITENS NOTAS FISCAIS] a
inner join [NOTAS FISCAIS] b
on a.NUMERO = b.NUMERO
group by year(b.data)
order by year(b.data) desc