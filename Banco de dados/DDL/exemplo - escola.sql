-- Criação do banco de dados 
CREATE DATABASE escola;
-- Selecionar o BD para uso 
USE escola;

-- Criar tabela aluno
-- Armazena os dados dos estudantes 

CREATE TABLE alunos(
	-- Identificador único (PK)
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    
    -- nome completo do aluno (obrigatório - NOT NULL)
    nome VARCHAR(100) NOT NULL,
    
    -- Data de nascimento
    data_nascimento DATE NOT NULL,
    
    -- CPF do aluno  (restrição de unicidade - UNIQUE)
    cpf VARCHAR(14) UNIQUE, 
    
    -- Email do aluno
    email VARCHAR(100) NOT NULL,
    
    -- Telefone de contato
    telefone VARCHAR(20),
    
    -- Data em que o aluno foi matriculado
    data_matricula  DATE NOT NULL
);

-- Tabela professores
-- Armazena os dados dos professores

CREATE TABLE professores(
	-- Identificador único professor
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Nome do professor (obrigatório - NOT NULL)
    nome VARCHAR(100) NOT NULL,
    
    -- area de especializaçao 
    especialidade VARCHAR(100) NOT NULL,
    
    -- Email do professor
    email VARCHAR(100) NOT NULL UNIQUE,
    
    -- telefone de contato
    telefone VARCHAR(20)
);

-- Tabela de cursos
-- Representa cursos oferecidos pela escola

CREATE TABLE cursos(
	-- Identificador único do curso
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Nome do curso (obrigatório - NOT NULL)
    nome VARCHAR(100) NOT NULL,
    
    -- carga horária total do curso em horas
    carga_horaria INT NOT NULL
);