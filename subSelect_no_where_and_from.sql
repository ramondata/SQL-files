select a.cpf, a.vendas, a.estado, a.id, a.idade
from (select cpf, estado, sum([volume de compra]) as vendas, id = sum(idade*500), idade  from [TABELA DE CLIENTES] group by cpf, estado, idade) as a
where estado in (select estado from [TABELA DE CLIENTES] where estado = 'rj' or estado = 'sp' group by estado)