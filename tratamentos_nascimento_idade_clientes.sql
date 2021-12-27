--Tratamentos dos dados de nascimento e idade dos clientes--
select NOME as cliente, [DATA DE NASCIMENTO] as nascimento, IDADE as idade_anterior, datediff(YEAR,[DATA DE NASCIMENTO], getdate()) as idade_atual,
case 
    when IDADE <= 5 then 'criança'
	when  IDADE between 5 and 10 then 'criança n2'
	when  IDADE between 11 and 19 then 'adolescente'
	else 'adulto' end as fase_anterior,
case 
    when datediff(YEAR,[DATA DE NASCIMENTO], getdate()) <= 5 then 'criança'
	when  datediff(YEAR,[DATA DE NASCIMENTO], getdate()) between 5 and 10 then 'criança n2'
	when  datediff(YEAR,[DATA DE NASCIMENTO], getdate()) between 11 and 19 then 'adolescente'
	else 'adulto' end as fase_atual,

len(case 
    when IDADE <= 5 then 'criança'
	when  IDADE between 5 and 10 then 'criança n2'
	when  IDADE between 11 and 19 then 'adolescente'
	else 'adulto' end) as caracteres_anteriores,
len(case 
    when datediff(YEAR,[DATA DE NASCIMENTO], getdate()) <= 5 then 'criança'
	when  datediff(YEAR,[DATA DE NASCIMENTO], getdate()) between 5 and 10 then 'criança n2'
	when  datediff(YEAR,[DATA DE NASCIMENTO], getdate()) between 11 and 19 then 'adolescente'
	else 'adulto' end) as caracteres_atuais,
case
        when (len(
		      case 
		         when IDADE <= 5 then 'criança'
	             when  IDADE between 5 and 10 then 'criança n2'
	             when  IDADE between 11 and 19 then 'adolescente'
	             else 'adulto' end)) <> 
              (len(case 
                 when datediff(YEAR,[DATA DE NASCIMENTO], getdate()) <= 5 then 'criança'
	             when  datediff(YEAR,[DATA DE NASCIMENTO], getdate()) between 5 and 10 then 'criança n2'
	             when  datediff(YEAR,[DATA DE NASCIMENTO], getdate()) between 11 and 19 then 'adolescente'
	             else 'adulto' end))
	     then 'Mudou de fase'
		 else 'Mesma fase' end as status

from [TABELA DE CLIENTES]
order by status desc