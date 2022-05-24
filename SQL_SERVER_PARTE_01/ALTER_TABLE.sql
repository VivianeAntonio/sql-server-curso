ALTER TABLE [TABELA DE CLIENTES]
ALTER COLUMN CPF
CHAR(11) NOT NULL;

ALTER TABLE [TABELA DE CLIENTES]
ADD CONSTRAINT PK_TABELA_DE_CLIENTES
PRIMARY KEY CLUSTERED (CPF)

USE [SUCOS_VENDAS]
GO

INSERT INTO [dbo].[TABELA DE CLIENTES]
           ([CPF]
           ,[NOME]
           ,[ENDERECO1]
           ,[ENDERECO2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE DE CREDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('25472015024'
           ,'João da Silva'
           ,'Rua Projetada'
           ,'Numero 23'
           ,'Lajeado'
           ,'Pato Branco'
           , 'PR'
           ,'05854000'
           ,'1994-02-23'
           ,28
           ,'M'
           ,20000.00
           ,3000.23
           ,1)

