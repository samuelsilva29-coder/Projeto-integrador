--  1. INSERT (CRIANDO OS USUARIOS DA TABELA usuarios)
===================================================
INSERT INTO usuarios (id_usuario, nome, email, senha) VALUES
(1, 'Samuel Santos', 'samuel7@gmail.com', '1010'),
(2, 'Arthur', 'arthur@gmail.com', '2020'),
(3, 'Davi', 'davi@gmail.com', '3030'),
(4, 'Luiz', 'luiz11@gmail.com', '4040'),
(5, 'Maria', 'maria1@gmail.com', '5050');

-- CRIANDO OS GÊNEROS DA TABELA generos
-- =======================================================
INSERT INTO generos (id_genero, nome_genero, id_usuario) VALUES
(1, 'Ficção Científica', 1), -- Ficção Científica (id_genero = 1)
(2, 'Ação', 2), -- Ação (id_genero = 2)
(3, 'Infantil', 3), -- Infantil (id_genero = 3)
(4, 'Comédia', 4), -- Comédia (id_genero = 4)
(5, 'Terror', 5);  -- terror (id_genero = 5)

-- CRIANDO DOS FILMES DA TABELA filmes
-- =======================================================
INSERT INTO filmes (id_genero, titulo, ano_lancamento, avaliacao, ator_principal, id_usuario)
VALUES
-- filmes com id_genero = 1
(1,'Interstelar', 2014, 7.8, 'Matthew McConaughey', 1),
(1,'Guerra dos Mundos', 2005, 7.7, 'Tom Cruise', 2),

-- filmes com id_genero = 2
(2,'John Wick', 2014, 8.4, 'Keanu Reeves', 3),
(2,'Thor', 2011, 7.1, 'Chris Hemsworth', 3),

-- filmes com id_genero = 3
(3,'Procurando Nemo', 2003, 7.1, 'Nemo', 1),
(3,'Toy Story 1', 1995, 6.9, 'Xerife Woody', 4),

-- filmes com id_genero = 4
(4,'Esposa de Mentirinha', 2011, 7.6, 'Adam Sandler', 4),
(4,'O Mentiroso', 1997, 7.3, 'Jim Carrey', 5),

-- filmes com id_genero = 5
(5,'A Freira', 2018, 6.5, 'Bonnie Aarons', 2),
(5,'A Bruxa', 2015, 7.0, 'Anya Taylor-Joy', 5);

-- 2. SELECT 
-- ================================================================
-- consultando os usuarios criados
SELECT * FROM usuarios;

--consultando o 1º usuário  
SELECT * FROM usuarios WHERE id_usuario = 1;
		
-- consultando os gêneros criados
SELECT * FROM generos;

-- consultando o 3º genero
SELECT * FROM generos WHERE id_genero = 3;

-- consultando todos os filmes criados
SELECT * FROM filmes;

-- consultando o filme Toy Story 1
SELECT * FROM filmes WHERE titulo = 'Toy Story 1';

-- 3. UPDATE 
-- ================================================================
-- Alterando o filme Esposa de mentirinha para Zohan
UPDATE filmes SET titulo = 'Zohan: O Agente Bom de Corte' WHERE 'Esposa de Mentirinha';

-- Atualizando o nome do 4º usuario
UPDATE usuarios SET nome = 'José' WHERE id_usuario = 4;

-- atualizando o genero terror
UPDATE generos SET nome_genero = 'Suspense' WHERE id_genero = 5;

-- 4. DELETE
-- =============================================================
-- deletando o filme Guerra dos Mundos
DELETE FROM filmes 
WHERE id_filme= 2;

-- deletando o filme Interstelar
DELETE FROM filmes
WHERE id_filme = 1;

-- deletando o genero Ficção cientifica
DELETE FROM generos 
WHERE id_genero = 1;

