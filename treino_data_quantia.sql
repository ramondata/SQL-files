SELECT   day(a.data) as dia, month(a.data) as mes, year(a.data) as ano, sum(b.quantidade) as quantidade 
FROM     dbo.[NOTAS FISCAIS]  a INNER JOIN
                  dbo.[ITENS NOTAS FISCAIS] b ON a.NUMERO = b.NUMERO
group by day(a.data), month(a.data), year(data)

