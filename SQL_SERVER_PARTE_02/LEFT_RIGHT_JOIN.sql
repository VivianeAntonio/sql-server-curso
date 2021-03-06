SELECT * FROM [TABELA DE CLIENTES]
SELECT * FROM [NOTAS FISCAIS]

SELECT * FROM [TABELA DE CLIENTES] INNER JOIN [NOTAS FISCAIS]
ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF

-- INNER JOIN TRAZENDO TODOS OS CLIENTES COM NOMES VINCULADOS A NOTAS FISCAIS. OBS:
-- CLIENTES QUE N?O FIZERAM COMPRAS AINDA N?O SER?O EXIBIDOS
SELECT [TABELA DE CLIENTES].NOME, COUNT(*)
FROM [TABELA DE CLIENTES] INNER JOIN [NOTAS FISCAIS]
ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF
GROUP BY [TABELA DE CLIENTES].NOME

-- LEFT JOIN TRAZENDO O NOME DE TODOS OS CLIENTES, AT? OS QUE N?O FIZERAM COMPRAS
SELECT [TABELA DE CLIENTES].NOME, COUNT(*)
FROM [TABELA DE CLIENTES] LEFT JOIN [NOTAS FISCAIS]
ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF
GROUP BY [TABELA DE CLIENTES].NOME


-- ESTA CONSULTA LEFT JOIN INCLUI TAMB?M O CPF DOS CLIENTES QUE N?O FIZERAM COMPRAS
SELECT [TABELA DE CLIENTES].NOME, [TABELA DE CLIENTES].CPF, COUNT(*)
FROM [TABELA DE CLIENTES] LEFT JOIN [NOTAS FISCAIS]
ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF
GROUP BY [TABELA DE CLIENTES].NOME, [TABELA DE CLIENTES].CPF

-- IDENTIFICADO O CPF A SEGUIR CONFIRMAMOS NA TABELA NOTAS FISCAIS QUE ELE REALMENTE N?O FEZ COMPRAS
SELECT * FROM [NOTAS FISCAIS] WHERE CPF = '95939180787'


