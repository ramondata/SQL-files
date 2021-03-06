SELECT EMBALAGEM
      ,TAMANHO
FROM [TABELA DE PRODUTOS]

SELECT DISTINCT EMBALAGEM
      ,TAMANHO
FROM [TABELA DE PRODUTOS]

SELECT DISTINCT EMBALAGEM
      ,TAMANHO
FROM [TABELA DE PRODUTOS]
WHERE SABOR = 'LARANJA'

SELECT TOP 3 *
FROM [TABELA DE PRODUTOS]
WHERE SABOR = 'LARANJA'

SELECT DISTINCT TOP 3 EMBALAGEM
      ,TAMANHO
FROM [TABELA DE PRODUTOS]

SELECT *
FROM [TABELA DE PRODUTOS]
ORDER BY [PRE?O DE LISTA] DESC

SELECT *
FROM [TABELA DE PRODUTOS]
ORDER BY [NOME DO PRODUTO] ASC
--SE N?O COLOCAR ASC OU DESC NO ORDER BY, FUNCIONA COMO ASC
--LEMBRANDO QUE ASC ? DO MENOR PARA O MAIOR 
--LEMBRANDO QUE DESC ? DO MAIOR PARA O MENOR

SELECT *
FROM [TABELA DE PRODUTOS]
ORDER BY [NOME DO PRODUTO] DESC, TAMANHO ASC

SELECT ESTADO, SUM([LIMITE DE CREDITO])
FROM DBO.[TABELA DE CLIENTES]
GROUP BY ESTADO

SELECT ESTADO, SUM([LIMITE DE CREDITO]) AS SOMA, AVG([LIMITE DE CREDITO]) AS MEDIA
FROM DBO.[TABELA DE CLIENTES]
GROUP BY ESTADO

SELECT EMBALAGEM, MAX([PRE?O DE LISTA])
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM

SELECT EMBALAGEM, MIN([PRE?O DE LISTA])
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM

SELECT EMBALAGEM, COUNT(*)
FROM [TABELA DE PRODUTOS]
GROUP BY EMBALAGEM

SELECT EMBALAGEM, COUNT(*) AS CONTAGEM
FROM [TABELA DE PRODUTOS]
WHERE [NOME DO PRODUTO] LIKE '%CLEAN%'
GROUP BY EMBALAGEM

SELECT EMBALAGEM, COUNT(*) AS CONTAGEM
FROM [TABELA DE PRODUTOS]
WHERE [NOME DO PRODUTO] LIKE '%CLEAN%'
GROUP BY EMBALAGEM
HAVING COUNT(*) <3