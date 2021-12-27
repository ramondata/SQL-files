--Praticando os recusrsos aprendidos até agora de DQL(Consultas em SQL)

select top 5 NOME, sum([quantidade]) as QTD_compras,
case 
when sum([quantidade]) > 828000 then 'faixa 2'
when sum([quantidade]) <= 828000 then 'faixa 1'
else 'outros'
end as categoria_compra
from [ITENS NOTAS FISCAIS]
inner join [NOTAS FISCAIS]
on [ITENS NOTAS FISCAIS].NUMERO = [NOTAS FISCAIS].NUMERO
inner join [TABELA DE CLIENTES]
on [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF
group by nome
having (case 
when sum([quantidade]) > 828000 then 'faixa 2'
when sum([quantidade]) <= 828000 then 'faixa 1'
else 'outros'
end) = 'faixa 2'
order by sum([quantidade]) desc