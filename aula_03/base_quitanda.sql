-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_quitanda;
GO

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;
GO

-- Selecionar o Banco de dados db_quitanda
USE [db_quitanda]
GO

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
Id BIGINT IDENTITY PRIMARY KEY,
Descricao varchar(255) NOT NULL
);
GO

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (Descricao)
VALUES ('Frutas');

INSERT INTO tb_categorias (Descricao)
VALUES ('Verduras');

INSERT INTO tb_categorias (Descricao)
VALUES ('Legumes');

INSERT INTO tb_categorias (Descricao)
VALUES ('Temperos');

INSERT INTO tb_categorias (Descricao)
VALUES ('Ovos');

INSERT INTO tb_categorias (Descricao)
VALUES ('outros');

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;
GO

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
Id BIGINT IDENTITY PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Quantidade INT, 
DataValidade DATE NULL,
Preco DECIMAL(6, 2),
CategoriaId bigint, 
FOREIGN KEY (CategoriaId) REFERENCES tb_categorias(Id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Maçã', 1000, '2022-03-07', 1.99, 1);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Banana', 1300, '2022-03-08', 5.00, 1);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Batata doce', 2000, '2022-03-09', 10.00, 3);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Alface', 300, '2022-03-10', 7.00, 2);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Cebola', 1020, '2022-03-08', 5.00, 3);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES('Ovo Branco', 1000, '2022-03-07', 15.00, 5);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES('Agrião', 1500, '2022-03-06', 3.00, 2);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES('Cenoura', 1800, '2022-03-09', 3.50, 3);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Pimenta', 1100, '2022-03-15', 10.00, 4);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Alecrim', 130, '2022-03-10', 5.00, 4);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Manga', 200, '2022-03-07', 5.49, 1);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Laranja', 3000, '2022-03-13', 10.00, 1);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Couve', 100, '2022-03-12', 1.50, 2);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES('Tomate', 1105, '2022-03-15', 3.00, 3);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES('Rabanete', 1200, '2022-03-15', 13.00, 3);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, CategoriaId)
VALUES ('Grapefruit', 3000, '2022-03-13', 50.00, 1);

INSERT INTO tb_produtos (Nome, Quantidade, Preco)
VALUES('Sacola Cinza', 1118, 0.50);

INSERT INTO tb_produtos (Nome, Quantidade, Preco)
VALUES('Sacola Verde', 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;
