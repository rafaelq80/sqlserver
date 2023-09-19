-- Cria o Banco de dados
CREATE DATABASE db_games_online;
GO

-- Seleciona o Banco de dados para uso
USE db_games_online;
GO

-- Cria a tabela Categorias
CREATE TABLE tb_categorias (
  Id BIGINT NOT NULL IdENTITY(1,1),
  Tipo VARCHAR(255) NOT NULL,
  PRIMARY KEY (Id)
  );

-- Insere dados na tabela Categorias
INSERT INTO tb_categorias (Tipo) VALUES ('E-Sports');
INSERT INTO tb_categorias (Tipo) VALUES ('A��o');
INSERT INTO tb_categorias (Tipo) VALUES ('Aventura');
INSERT INTO tb_categorias (Tipo) VALUES ('Estrat�gia');
INSERT INTO tb_categorias (Tipo) VALUES ('RPG');
INSERT INTO tb_categorias (Tipo) VALUES ('Simula��o');
INSERT INTO tb_categorias (Tipo) VALUES ('Outros');

-- Lista todas as Categorias
SELECT * FROM tb_categorias;

-- Cria a tabela Usu�rios
CREATE TABLE tb_Usuarios (
  Id BIGINT NOT NULL IdENTITY(1,1),
  Usuario VARCHAR(255) NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  Senha VARCHAR(255) NOT NULL,
  Foto VARCHAR(255),
  DataNascimento DATE NOT NULL,
  PRIMARY KEY (Id)
  );

-- Insere dados na tabela Usu�rios
INSERT INTO tb_Usuarios(Usuario, Nome, Senha, Foto, DataNascimento) 
VALUES ('admin@email.com.br', 'Administrador', '123a456*78', 'https://i.imgur.com/FETvs2O.jpg', '2001-11-22');

INSERT INTO tb_Usuarios(Usuario, Nome, Senha, Foto, DataNascimento) 
VALUES ('mariana@email.com.br', 'Mariana Maria da Silva', '123@456&78', 'https://i.imgur.com/mB3VM2N.jpg', '2001-11-22');

INSERT INTO tb_Usuarios(Usuario, Nome, Senha, Foto, DataNascimento) 
VALUES ('adriana@email.com.br', 'Adriana Kaylany de Souza', '123l456t78', 'https://i.imgur.com/5M2p5Wb.jpg', '2002-12-26');

INSERT INTO tb_Usuarios(Usuario, Nome, Senha, Foto, DataNascimento) 
VALUES ('quico@email.com.br', 'Frederico Santos', '123b456#78', 'https://i.imgur.com/Sk5SjWE.jpg', '2003-12-26');

INSERT INTO tb_Usuarios(Usuario, Nome, Senha, Foto, DataNascimento) 
VALUES ('florinda@email.com.br', 'Florinda Mezza', '123!456?78', 'https://i.imgur.com/NtyGneo.jpg', '2002-12-26');

INSERT INTO tb_Usuarios(Usuario, Nome, Senha, Foto, DataNascimento) 
VALUES ('evelise@email.com.br', 'Evelise Franco', '123f456v78', 'https://i.imgur.com/EcJG8kB.jpg', '2001-12-26');

INSERT INTO tb_Usuarios(Usuario, Nome, Senha, Foto, DataNascimento) 
VALUES ('julmiara@email.com.br', 'Julmiara Correa', '123@!456g78', 'https://i.imgur.com/T12NIp9.jpg', '2000-12-26');

-- Lista todos os Usu�rios
SELECT * FROM tb_Usuarios;

-- Cria a tabela Produtos
CREATE TABLE tb_produtos (
  Id BIGINT NOT NULL IdENTITY(1,1),
  Nome VARCHAR(255) NOT NULL,
  Descricao VARCHAR(500),
  Console VARCHAR(255) NOT NULL,
  Quantidade INT,
  Preco DECIMAL(19,2) NOT NULL,
  Foto VARCHAR(255),
  CategoriaId BIGINT,
  UsuarioId BIGINT,
  PRIMARY KEY (Id),
  FOREIGN KEY (UsuarioId) REFERENCES tb_Usuarios (Id),
  FOREIGN KEY (CategoriaId) REFERENCES tb_categorias (Id)
  );

-- Insere dados na tabela Produtos
INSERT INTO tb_produtos (Nome, Descricao, Console, Quantidade, Preco, Foto, CategoriaId, UsuarioId) 
VALUES ('Kena: BrIdge of Spirits', 'Kena: BrIdge of Spirits � o projeto de estreia da Ember Lab e impressiona ainda mais a cada replay do trailer. O estilo �nico de arte mistura elementos marcantes da Pixar e do Studio Ghibli, resultando em uma incr�vel anima��o.', 'PS5', 50, 500.00, 'https://i.imgur.com/YqasKzX.jpg', 3, 2);

INSERT INTO tb_produtos (Nome, Descricao, Console, Quantidade, Preco, Foto, CategoriaId, UsuarioId) 
VALUES ('Returnal', 'um shooter com uma pegada um pouco diferente do habitual. A vis�o da c�mera um pouco mais pr�xima da protagonista promete uma experi�ncia singular com narrativa assustadora', 'PS5', 10, 400.00, 'https://i.imgur.com/Xd9vF7t.jpg', 6, 3);

INSERT INTO tb_produtos (Nome, Descricao, Console, Quantidade, Preco, Foto, CategoriaId, UsuarioId) 
VALUES ('ResIdent Evil Village', 'Novo game da franquia de zumbis da Capcom e promete dar uma continua��o majestosa ao legado do survival horror. Mais uma vez estaremos no controle de Ethan Winters e devemos escapar com vIda de um misterioso vilarejo do interior europeu.', 'PS5', 20, 800.00, 'https://i.imgur.com/iQMTaVC.jpg', 3, 4);

INSERT INTO tb_produtos (Nome, Descricao, Console, Quantidade, Preco, Foto, CategoriaId, UsuarioId) 
VALUES ('God of War Ragnarok', 'God of War Ragnarok promete dar continuIdade � hist�ria de Kratos e Atreus. O Deus da Guerra se encaixou muito bem nos moldes da mitologia n�rdica e conquistou at� o GoTY em 2018 � em disputa acirrada contra Red Dead Redemption 2.', 'PS5', 100,  700.00, 'https://i.imgur.com/8qnAKwO.jpg', 3, 5);

INSERT INTO tb_produtos (Nome, Descricao, Console, Quantidade, Preco, Foto, CategoriaId) 
VALUES ('Halo Infinite', 'O jogo colocar� os jogadores de volta na sagrada armadura espartana de Master Chief, enquanto ele combate os BanIdos, uma nova amea�a � humanIdade, e promete mais liberdade do que qualquer jogo recente da s�rie, com n�veis enormes.', 'XBOX', 80, 1000.00, 'https://i.imgur.com/ZnDckc2.jpg', 3);

INSERT INTO tb_produtos (Nome, Descricao, Console, Quantidade, Preco, Foto) 
VALUES ('Flight Simulator', 'O Flight Simulator promete aos jogadores a liberdade de criar seus pr�prios planos de v�o e decolar em qualquer lugar do mundo, voando dia e noite em condi��es clim�ticas realistas.', 'XBOX', 15, 250.00, 'https://i.imgur.com/cYl5vhh.jpg');

-- Lista todos os Produtos
SELECT * FROM tb_produtos;