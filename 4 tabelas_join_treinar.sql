SELECT a.data, b.nome, sum(c.quantidade) as Quantidade, d.embalagem, d.sabor,
case
    when sum(c.quantidade) <= 50 then 'Volume baixo'
	when sum(c.quantidade) > 50 and sum(c.quantidade) <= 100 then 'Volume mediano'
	when sum(c.quantidade) >100 then 'Volume alto'
	else 'Cadastrar' end as Classificação_vendas
FROM [NOTAS FISCAIS] a
inner join [TABELA DE VENDEDORES] b
on a.MATRICULA = b.MATRICULA
inner join [ITENS NOTAS FISCAIS] c
on a.NUMERO = c.NUMERO
inner join [TABELA DE PRODUTOS] d
on c.[CODIGO DO PRODUTO] = d.[CODIGO DO PRODUTO]
group by a.data, b.nome,d.embalagem, d.sabor