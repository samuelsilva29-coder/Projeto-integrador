CREATE DATABASE catalogo_filmes;
USE catalogo_filmes;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome       VARCHAR(100) NOT NULL,
    email      VARCHAR(100) NOT NULL UNIQUE,
    senha      VARCHAR(255) NOT NULL
);

CREATE TABLE generos (
    id_genero    INT AUTO_INCREMENT PRIMARY KEY,
    nome_genero  VARCHAR(100) NOT NULL,
    descricao    VARCHAR(400) NOT NULL,
);

CREATE TABLE filmes (
    id_filme        INT AUTO_INCREMENT PRIMARY KEY,
    titulo          VARCHAR(200) NOT NULL,
    ano_lancamento  YEAR
);



