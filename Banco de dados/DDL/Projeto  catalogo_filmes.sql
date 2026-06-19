-- ========================================================
-- CRIAÇÃO DO BANCO DE DADOS catalogo_filmes
-- ========================================================
CREATE DATABASE catalogo_filmes;
USE catalogo_filmes;

-- criação da tabela usuarios (tabela base)
CREATE TABLE usuarios (
    id_usuario      INT AUTO_INCREMENT PRIMARY KEY,
    nome            VARCHAR(100) NOT NULL,
    email           VARCHAR(100) NOT NULL UNIQUE,
    senha           VARCHAR(255) NOT NULL
);

-- criação da tabela generos (tabela dependente de usuarios)
CREATE TABLE generos (
    id_genero       INT AUTO_INCREMENT PRIMARY KEY,
    nome_genero     VARCHAR(100) NOT NULL,
    id_usuario      INT NOT NULL,

    -- relacionamento: todo gênero deve ser cadastrado por um usuario existente
    FOREIGN KEY id_usuario REFERENCES usuarios(id_usuario)
);

-- criação da tabela filmes (Tem dependência de usuarios e generos)
CREATE TABLE filmes (
    id_filme        INT AUTO_INCREMENT PRIMARY KEY,
    titulo          VARCHAR(200) NOT NULL,
    ano_lancamento  YEAR(4) NOT NULL,
    avaliacao       DECIMAL (2,1),
    ator_principal  VARCHAR(100) NULL,
    id_usuario      INT NOT NULL,
    id_genero       INT NOT NULL,

    --relacionamentos: todo filme filme tem dependencia de um usuario e genero
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_genero) REFERENCES generos(id_genero)
);



