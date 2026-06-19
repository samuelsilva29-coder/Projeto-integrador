-- INSERINDO OS DADOS DA TABELA USUÁRIOS

INSERT INTO usuarios (id_usuario, nome, email, senha) VALUES
(1, 'Samuel Santos', 'samuel7@gmail.com', '1010'),
(2, 'Arthur', 'arthur@gmail.com', '2020'),
(3, 'Davi', 'davi@gmail.com', '3030'),
(4, 'Luiz', 'luiz11@gmail.com', '4040'),
(5, 'Maria', 'maria1@gmail.com', '5050');

-- generos criados: Ficção científica, Ação, Infatil, Comédia e Terror
INSERT INTO filmes (titulo, ano_lancamento, avaliacao, ator_principal, id_genero)
VALUES
-- filmes com id_genero = 1
('Interstelar', 2014, 7.8, 'Matthew McConaughey',1),
('Guerra dos Mundos', 2005, 7.7, 'Tom Cruise', 1),

-- filmes com id_genero = 2

('John Wick', 2014, 8.4, 'Keanu Reeves', 2),
('Thor', 2011, 7.1, 'Chris Hemsworth', 2),

-- filmes com id_genero = 3
('Procurando Nemo', 2003, 7.1, 'Nemo', 3),
('Toy Story 1', 1995, 6.9, 'Xerife Woody', 3),

-- filmes com id_genero = 4
('Esposa de Mentirinha', 2011, 7.6, 'Adam Sandler', 4),
('O Mentiroso', 1997, 7.3, 'Jim Carrey', 4),

-- filmes com id_genero = 5
('A Freira', 2018, 6.5, 'Bonnie Aarons', 5),
('A Bruxa', 2015, 7.0, 'Anya Taylor-Joy', 5);

-- consultando os usuários criados
SELECT * FROM usuarios;

--consultando o usuário 1 
SELECT * FROM usuarios WHERE nome = 'Samuel Santos';
		
-- consultando os gêneros criados
SELECT * FROM generos;

-- consultando um gênero especifico
SELECT * FROM generos WHERE id_genero = 3;

-- consultando todos os filmes criados
SELECT * FROM filmes;

-- consultando um filme especifico
SELECT * FROM filmes WHERE titulo = 'Toy Story 1';

-- utilizando o UPDATE para atualizar o filme John wick
UPDATE filmes SET titulo = 'John Wick 2' WHERE ator_principal = 'Keanu Reeves';

-- Atualizando um usuário da tabela filmes
UPDATE usuários
SET nome = 'José' WHERE id_usuario = 4;

-- utilizando o DELETE para deletar um usuário
DELETE FROM usuarios
WHERE id_usuario = 2;