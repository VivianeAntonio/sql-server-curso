--CONSULTA SIMPLES
SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]

-- SUB CONSULTA, BUSCA APENAS RESULTADOS QUE APARECEM DENTRO DA SUB CONSULTA
SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]
WHERE BAIRRO IN (SELECT BAIRRO FROM [TABELA DE VENDEDORES])

--CONSULTA SIMPLES
SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

-- SUB CONSULTA, BUSCA APENAS RESULTADOS QUE APARECEM DENTRO DA SUB CONSULTA
SELECT NOVA_CONSULTA.EMBALAGEM, NOVA_CONSULTA.MAX_PRE�O
FROM (SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAX_PRE�O FROM [TABELA DE PRODUTOS]GROUP BY EMBALAGEM)
AS NOVA_CONSULTA
WHERE NOVA_CONSULTA.MAX_PRE�O <= 5

-- EXERCICIO Qual seria a consulta, usando sub-consulta, que seria equivalente a:

SELECT CPF, COUNT(*) FROM [NOTAS FISCAIS]
WHERE YEAR(DATA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000

-- RESPOSTA
SELECT X.CPF, X.CONTADOR FROM 
(SELECT CPF, COUNT(*) AS CONTADOR FROM [NOTAS FISCAIS]
WHERE YEAR(DATA) = 2016
GROUP BY CPF) X WHERE X.CONTADOR > 2000