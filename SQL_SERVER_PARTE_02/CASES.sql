SELECT [NOME DO PRODUTO],
	CASE 
		WHEN [PRE?O DE LISTA] >= 12 THEN 'PRODUTO CARO'
		WHEN [PRE?O DE LISTA] >= 7 AND [PRE?O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
		ELSE 'PRODUTO BARATO'
		END
FROM [TABELA DE PRODUTOS]


SELECT [NOME DO PRODUTO],
	CASE
		WHEN [PRE?O DE LISTA] >= 12 THEN 'PRODUTO CARO'
		WHEN [PRE?O DE LISTA] >= 7 AND [PRE?O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
		ELSE 'PRODUTO BARATO'
	END,
	AVG([PRE?O DE LISTA])
FROM [TABELA DE PRODUTOS] GROUP BY [NOME DO PRODUTO],
	CASE
		WHEN [PRE?O DE LISTA] >= 12 THEN 'PRODUTO CARO'
		WHEN [PRE?O DE LISTA] >= 7 AND [PRE?O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
		ELSE 'PRODUTO BARATO'
	END
	   	  

SELECT YEAR(DATA), COUNT(*) FROM [NOTAS FISCAIS] GROUP BY YEAR(DATA)

-- EXERCICIO: Veja o ano de nascimento dos clientes e classifique-os como: 
--nascidos antes de 1990 s?o adultos, nascidos entre 1990 e 1995 s?o jovens 
--e nascidos depois de 1995 s?o crian?as. Liste o nome do cliente e esta classifica??o.

SELECT [DATA DE NASCIMENTO],
	 CASE
		WHEN YEAR([DATA DE NASCIMENTO]) <  1990 THEN 'ADULTOS'
		WHEN YEAR([DATA DE NASCIMENTO]) >= 1990 AND YEAR([DATA DE NASCIMENTO]) <= 1995 THEN 'JOVENS'
		ELSE 'CRIAN?AS'
	END
FROM [TABELA DE CLIENTES]

-- SOLU??O DO PROFESSOR
select [NOME],
case 
    when year([DATA DE NASCIMENTO]) < 1990 then 'Adulto'
    when year([DATA DE NASCIMENTO]) between 1990 and 1995 then 'Jovem'
    else 'Crian?a' end as [Classifica??o Et?ria]
 from [TABELA DE CLIENTES]