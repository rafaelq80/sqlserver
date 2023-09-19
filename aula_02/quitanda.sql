-- Criar o Banco de dados
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de dados
USE db_quitanda;

-- Criar a tabela de produtos
CREATE TABLE tb_produtos(
    Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
    DataValidade DATE,
	Preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

-- Inserir um registro na tabela
INSERT INTO tb_produtos(Nome, Quantidade, DataValidade, Preco) 
values ('Tomate', 100, '2023-12-15', 8.00);

-- Inserir vários registros na tabela
INSERT INTO tb_produtos(Nome, Quantidade, DataValidade, Preco) 
values ('Maçã', 20, '2023-12-15', 5.00),
('Laranja', 50, '2023-12-15', 10.00),
('Banana', 200, '2023-12-15', 12.00),
('Uva', 1200, '2023-12-15', 30.00),
('Pêra', 500, '2023-12-15', 2.99);

-- Selecionar todos os produtos
SELECT * FROM tb_produtos;

-- Selecionar todos os produtos e exibir apenas os nomes dos produtos
SELECT Nome FROM tb_produtos;

-- Selecionar todos os produtos e exibir apenas os nomes e os preços dos produtos
SELECT Nome, Preco FROM tb_produtos;

-- Selecionar o produto cujo Id seja igual a 1
SELECT * FROM tb_produtos WHERE Id = 1;

-- Selecionar todos os produtos cujo preço seja maior do que 5.00
SELECT * FROM tb_produtos WHERE Preco > 5.00;

-- Selecionar todos os produtos cujo preço seja maior do que 5.00 e 
-- a quantidade menor do que 100
SELECT * FROM tb_produtos WHERE Preco > 5.00 AND Quantidade < 100;

-- Alterar a estrutura da coluna Preço adicionando as casas decimais
ALTER TABLE tb_produtos ALTER COLUMN Preco DECIMAL(6,2);

-- Atualizar o valor do atributo Preco do produto cujo Id seja igual a 6
UPDATE tb_produtos SET Preco = 2.99 WHERE Id = 6;

-- Selecionar o produto cujo Id seja igual a 6
SELECT * FROM tb_produtos WHERE Id = 6;

-- Adicionar um novo atributo na tabela
ALTER TABLE tb_produtos ADD Descricao VARCHAR(255);

-- Atualizar o valor do atributo Descricao do produto cujo Id seja igual a 1
UPDATE tb_produtos SET Descricao = 'Tomate Italiano' WHERE Id = 1;

-- Remover a coluna Descricao
ALTER TABLE tb_produtos DROP COLUMN Descricao;

-- Deletar o produto cujo Id seja igual a 2
DELETE FROM tb_produtos WHERE Id = 2;

-- Selecionar o produto cujo Id seja igual a 2
SELECT * FROM tb_produtos WHERE Id = 2;

-- Deletar todos os produtos da tabela
DELETE FROM tb_produtos;