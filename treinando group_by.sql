select NOME, avg([IMPOSTO])
from dbo.[NOTAS FISCAIS]
inner join dbo.[TABELA DE CLIENTES]
on [NOTAS FISCAIS].CPF = [TABELA DE CLIENTES].CPF
where NOME like '%ra%'
group by NOME
