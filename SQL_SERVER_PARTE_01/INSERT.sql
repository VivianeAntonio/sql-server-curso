INSERT INTO [TABELA DE PRODUTOS]
VALUES
('788975', 'Peda�os de Frutas - 1,5 Litros - Ma�a', 'PET', '1,5 Litros', 'Ma�a', 18.01)

DELETE FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '788975';

INSERT INTO [TABELA DE PRODUTOS]
VALUES
('788975', 'Peda�os de Frutas - 1,5 Litros - Ma�a', 'PET','Ma�a', '1,5 Litros', 18.01);

DELETE FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '788975';

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], EMBALAGEM, TAMANHO, [PRE�O DE LISTA], SABOR)
VALUES
('788975', 'Peda�os de Frutas - 1,5 Litros - Ma�a', 'PET', '1,5 Litros', 18.01, 'Ma�a')

INSERT INTO [TABELA DE PRODUTOS]
VALUES
('788976', 'Peda�os de Frutas - 1,5 Litros - Ma�a', 'PET', '', 'Ma�a',18.01)

DELETE FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '788976';