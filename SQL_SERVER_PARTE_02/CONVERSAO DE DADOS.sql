-- SINTAXE:       CONVERT( type [ (length) ], expression [ , style ] )

SELECT CONVERT(varchar, GETDATE(), 101) -- mm/dd/yyyy (US standard)

SELECT CONVERT(varchar, GETDATE(), 113)  -- dd mon yyyy hh:mi:ss:mmm (Europe standard - 24 hour clock)

SELECT CONVERT(varchar,GETDATE(), 130)   -- dd mon yyyy hh:mi:ss:mmmAM/PM (�rabe standard)

SELECT CONVERT(decimal(10,5), 193.57) -- converte para decimal com 5 casas ap�s a v�rgula


SELECT 'O pre�o do produto ' + [NOME DO PRODUTO] + ' � R$ ' + CONVERT(varchar, [PRE�O DE LISTA])
FROM [TABELA DE PRODUTOS]
-- ao concatenar [NOME DO PRODUTO] que � do tipo varchar, foi necess�rio converter
--[PRE�O DE LISTA] que era smallmoney para varchar

-- EXERC�CIO: Queremos construir um SQL cujo resultado seja, para cada cliente: **
-- "O cliente Jo�o da Silva faturou 120000 no ano de 2016". Somente para o ano de 2016.

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CONVERT(VARCHAR, CONVERT(DECIMAL(15,2), SUM(INF.QUANTIDADE * INF.[PRE�O]))), ' no ano ',   
CONVERT(VARCHAR, YEAR(NF.DATA))) AS SENTENCA FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE CLIENTES] TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA) = 2016
GROUP BY TC.NOME, YEAR(DATA)