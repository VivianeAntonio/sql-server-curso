SELECT SYSDATETIME()

SELECT SYSDATETIMEOFFSET()

SELECT SYSUTCDATETIME()

SELECT CURRENT_TIMESTAMP

SELECT GETDATE()

SELECT GETUTCDATE()

SELECT DATENAME(YEAR, GETDATE())

SELECT DATENAME(MICROSECOND, GETDATE())

SELECT DATENAME(WEEKDAY, GETDATE())

SELECT DATENAME(MONTH, GETDATE())

SELECT DATEPART(MONTH, GETDATE())

SELECT DAY(GETDATE())

SELECT YEAR(GETDATE())

SELECT DATEFROMPARTS(1991, 9, 24)

SELECT DATENAME(MONTH,DATEFROMPARTS(1991, 9, 24))

SELECT DATETIME2FROMPARTS(2015, 06, 25, 07, 26, 35, 125, 6)

SELECT DATEDIFF(MONTH, DATEFROMPARTS(1991, 9, 24), GETDATE())

SELECT DATEADD(MONTH, 5, GETDATE())

SELECT ISDATE('2006-01-6')  --    1 = TRUE

SELECT ISDATE ('02-5-5')

SELECT ISDATE('1996-25-58')  --   0 = FALSE

SELECT * FROM [NOTAS FISCAIS]

SELECT [DATA], CONCAT(DATENAME(DAY, [DATA]), ' de ' , DATENAME(MONTH, [DATA]), ' de ' , DATENAME(YEAR, [DATA])) 
FROM [NOTAS FISCAIS]

-- EXERC?CIO: Crie uma consulta que mostre o nome e a idade dos clientes.

SELECT NOME, DATEDIFF(YEAR,[DATA DE NASCIMENTO], GETDATE()) AS IDADE
FROM [TABELA DE CLIENTES]

