--filtrando as notas fiscais através de uma lista de notas que tem o imposto de valor 0,12.
select a.cpf, a.numero, a.imposto, a.data
from (select * from [NOTAS FISCAIS] where data between '2016-01-01' and '2017-01-01') as a
where year(data) = 2016 and imposto = 0.1

select * from [NOTAS FISCAIS] where data between '2016-01-01' and '2017-01-01'