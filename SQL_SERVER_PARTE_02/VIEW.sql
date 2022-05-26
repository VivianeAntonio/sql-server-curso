-- EXEMPLO DA AULA DE SUB CONSULTA, BUSCA APENAS RESULTADOS QUE APARECEM DENTRO DA SUB CONSULTA
SELECT NOVA_CONSULTA.EMBALAGEM, NOVA_CONSULTA.MAX_PRE�O
FROM (SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAX_PRE�O FROM [TABELA DE PRODUTOS]GROUP BY EMBALAGEM)
AS NOVA_CONSULTA
WHERE NOVA_CONSULTA.MAX_PRE�O <= 5

-- AQUI A SUB CONSULTA VAI SE TRANSFORMAR EM UMA VIEW USANDO O ASSISTENTE DE CRIA��O DE VIEW
-- EXIBI��ES > BOT�O DIREITO > NOVA EXIBI��O > COLAR O C�DIGO ABAIXO
SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAX_PRE�O FROM [TABELA DE PRODUTOS]GROUP BY EMBALAGEM

-- USANDO A VIEW CRIADA
SELECT * FROM VW_EMBALAGENS

-- SUBSTITUINDO A SUB CONSULTA PELA VIEW CRIADA
SELECT NOVA_CONSULTA.EMBALAGEM, NOVA_CONSULTA.MAX_PRE�O
FROM VW_EMBALAGENS
AS NOVA_CONSULTA
WHERE NOVA_CONSULTA.MAX_PRE�O <= 5