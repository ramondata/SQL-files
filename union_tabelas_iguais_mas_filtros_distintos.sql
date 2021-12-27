--notas fiscais com numero de 100 até 500
select *, 'tabela 1'
from [NOTAS FISCAIS]
where numero < 40000
union
select *, 'tabela 2'
from [NOTAS FISCAIS]
where numero >= 40000