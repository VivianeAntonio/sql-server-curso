-- SINTAXE:       CONVERT( type [ (length) ], expression [ , style ] )

SELECT CONVERT(varchar, GETDATE(), 101) -- mm/dd/yyyy (US standard)

SELECT CONVERT(varchar, GETDATE(), 113)  -- dd mon yyyy hh:mi:ss:mmm (Europe standard - 24 hour clock)

SELECT CONVERT(varchar,GETDATE(), 130)   -- dd mon yyyy hh:mi:ss:mmmAM/PM (Árabe standard)

SELECT CONVERT(decimal(10,5), 193.57) -- converte para decimal com 5 casas após a vírgula


SELECT 'O preço do produto ' + [NOME DO PRODUTO] + ' é R$ ' + CONVERT(varchar, [PREÇO DE LISTA])
FROM [TABELA DE PRODUTOS]
-- ao concatenar [NOME DO PRODUTO] que é do tipo varchar, foi necessário converter
--[PREÇO DE LISTA] que era smallmoney para varchar

-- EXERCÍCIO: Queremos construir um SQL cujo resultado seja, para cada cliente: **
-- "O cliente João da Silva faturou 120000 no ano de 2016". Somente para o ano de 2016.

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CONVERT(VARCHAR, CONVERT(DECIMAL(15,2), SUM(INF.QUANTIDADE * INF.[PREÇO]))), ' no ano ',   
CONVERT(VARCHAR, YEAR(NF.DATA))) AS SENTENCA FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE CLIENTES] TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA) = 2016
GROUP BY TC.NOME, YEAR(DATA)