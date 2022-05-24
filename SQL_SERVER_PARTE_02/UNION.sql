SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO FROM [TABELA DE CLIENTES]

SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO FROM [TABELA DE VENDEDORES]

-- USANDO UNION (N�O MOSTRA LINHAS REPETIDAS)
SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO FROM [TABELA DE CLIENTES]
UNION
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO FROM [TABELA DE VENDEDORES]

-- USANDO UNION ALL(MOSTRA LINHAS REPETIDAS)
SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO FROM [TABELA DE VENDEDORES]

-- ERRO DE TIPOS N�O CORRESPONDENTES (DATA � DO TIPO DATE E NOME � DO TIPO VARCHAR)
SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO, [TABELA DE CLIENTES].[DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].NOME FROM [TABELA DE VENDEDORES]

-- SOLU��O PARA O ERRO ANTERIOR
SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO, [TABELA DE CLIENTES].NOME FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].NOME FROM [TABELA DE VENDEDORES]

SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO, [TABELA DE CLIENTES].NOME, 'CLIENTE' FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].NOME, 'VENDEDOR' FROM [TABELA DE VENDEDORES]

