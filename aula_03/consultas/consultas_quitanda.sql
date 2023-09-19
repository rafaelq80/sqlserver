-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;
GO

-- Exibe todos os produtos ordenando por nome
SELECT * FROM tb_produtos ORDER BY Nome;

-- Exibe todos os produtos ordenando por nome em ordem decrescente
SELECT * FROM tb_produtos ORDER BY Nome DESC;

/*Operadores Lógicos*/ 

-- AND (E)
SELECT * FROM tb_produtos WHERE Preco > 5.00 AND CategoriaId = 2;

-- OR (OU)
SELECT * FROM tb_produtos WHERE Preco > 5.00 OR CategoriaId = 2;

-- NOT (NÃO)
SELECT * FROM tb_produtos WHERE NOT CategoriaId = 1;

/*Operadores In e Between*/ 

-- O preço deve ser 20, 30 ou 40 Reais
SELECT * FROM tb_produtos WHERE Preco IN (5.00, 10.00, 15.00);

-- O preço deve estar entre 20 e 40
SELECT * FROM tb_produtos WHERE Preco BETWEEN 5.00 AND 15.00;

-- O preço deve estar entre 20 e 40, em Ordem crecsente por nome do produto
SELECT * FROM tb_produtos WHERE Preco BETWEEN 5 AND 15 ORDER BY nome;

-- A Data de Validade deve estar entre 10 e 15 de Março de 2022,
-- em Ordem crecsente por Data de Validade e nome do produto
SELECT * FROM tb_produtos WHERE DataValidade BETWEEN '2022-03-10' AND '2022-03-15' ORDER BY DataValidade, Nome;

/*Operador Like*/ 

-- Localiza os produtos cujo nome contenha ra
SELECT * FROM tb_produtos WHERE Nome Like '%ra%';

-- Localiza os produtos cujo nome termine em ra
SELECT * FROM tb_produtos WHERE Nome Like '%ra';

-- Localiza os produtos cujo nome inicie com ra
SELECT * FROM tb_produtos WHERE Nome Like 'ra%';

/* Operadores Matemáticos */ 

-- Conte o total de produtos (Exceto os Nulos)
SELECT COUNT(*) FROM tb_produtos;

-- Conte o total de linhas da coluna categoria_id (null são ignorados)
SELECT COUNT(CategoriaId) FROM tb_produtos;

-- Calcule a soma dos preços
SELECT SUM(Preco) FROM tb_produtos;

-- Calcule a média de preço
SELECT AVG(Preco) AS Média FROM tb_produtos;

-- Exibir a Categoria_id e Calcular a média de preço, agrupando por Categoria_id
SELECT Categoriaid, AVG(Preco) AS media_preco FROM tb_produtos GROUP BY CategoriaId;

-- Mostrar o Maior Preço
SELECT max(Preco) AS Preco_Maximo FROM tb_produtos;

-- Mostrar o Menor Preço
SELECT min(Preco) AS Preco_Minimo FROM tb_produtos;

/* Operador Join*/ 

-- Inner Join
SELECT Nome, Preco, Quantidade, tb_categorias.Descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.Id = tb_produtos.CategoriaId;

-- Left Join
SELECT Nome, Preco, Quantidade, tb_categorias.Descricao
FROM tb_produtos LEFT JOIN tb_categorias 
ON tb_categorias.Id = tb_produtos.CategoriaId;

-- Right Join
SELECT Nome, Preco, Quantidade, tb_categorias.Descricao
FROM tb_produtos RIGHT JOIN tb_categorias 
ON tb_categorias.Id = tb_produtos.CategoriaId;

-- Inner Join com Group By
SELECT tb_categorias.Descricao AS descricao_da_categoria, AVG(Preco) Preço_Médio
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.Id = tb_produtos.CategoriaId
GROUP BY tb_categorias.Descricao;

-- Consultar a Collection do Banco de dados
SELECT DATABASEPROPERTYEX('db_quitanda', 'collation') SQLCOLLATION;