CREATE DATABASE catalogo_filmes;
USE catalogo_filmes;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome       VARCHAR(100) NOT NULL,
    email      VARCHAR(100) NOT NULL UNIQUE,
    senha      VARCHAR(255) NOT NULL
);

CREATE TABLE filmes (
    id_filme        INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario      INT NOT NULL,
    titulo          VARCHAR(200) NOT NULL,
    ano_lancamento  YEAR NOT NULL,       
    avaliacao       DECIMAL(2,1),                  
    ator_principal  VARCHAR(100),                  

    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario)
        ON DELETE RESTRICT
);

CREATE TABLE generos (
    id_genero    INT AUTO_INCREMENT PRIMARY KEY,
    nome_genero  VARCHAR(100) NOT NULL,
    descricao    VARCHAR(400) NOT NULL,
    id_usuario   INT NOT NULL,
    id_filme     INT NOT NULL,

    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario)    
        ON DELETE RESTRICT,

    FOREIGN KEY (id_filme)
        REFERENCES filmes(id_filme)
        ON DELETE RESTRICT
);