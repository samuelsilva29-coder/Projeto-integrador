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

-- Tabela Turmas
-- Cada turma pertence a um curso e a um professor

CREATE TABLE turmas(
	-- Identificador único da turma
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    
    -- FK para curso (cada turma pertence a um curso)
    id_curso INT NOT NULL,
    
    -- FK para professor (responsável pela turma)
    id_professor INT NOT NULL,
    
    -- Ano da turma (ex: 2026)
    ano INT NOT NULL,
    
    -- Série (1º, 2º, 3º ano)
    serie INT NOT NULL,
    
    -- Chave estrangeira -> cursos (1 curso tem várias turmas)
    FOREIGN KEY (id_curso)
		REFERENCES cursos(id_curso)
        ON DELETE RESTRICT,
    -- RESTRICT impede apagar curso com turmas vinculadas
    
    -- Chave estrangeira -> professores (1 professor pode ter várias turmas)
    FOREIGN KEY (id_professor)
		REFERENCES professores(id_professor)
        ON DELETE RESTRICT
        -- Impede excluir professor se ele estiver vinculado a uma turma
);

-- Tabela: disciplinas
CREATE TABLE disciplinas(
	-- Identificador da disciplina
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Nome da disciplina
    nome VARCHAR(100) NOT NULL,
    
    -- Carga horária da disciplina
    carga_horaria INT NOT NULL
);

-- Tabela: curso_disciplinas 
-- Relacionamento N:N entre cursos e disciplinas

CREATE TABLE curso_disciplinas(
	-- FK para curso 
    id_curso INT NOT NULL,
    
    -- FK para disciplina
    id_disciplina INT NOT NULL,
    
    -- Chave primária composta (evita duplicidade)
    PRIMARY KEY (id_curso, id_disciplina),
    
    -- FK -> cursos
    FOREIGN KEY(id_curso)
		REFERENCES cursos(id_curso)
        ON DELETE CASCADE,
        -- CASCADE: Ao excluir curso, remove automaticamente relações
        
    -- FK -> disciplinas
    FOREIGN KEY(id_disciplina)
		REFERENCES disciplinas(id_disciplina)
        ON DELETE CASCADE
        -- CASCADE: Ao excluir disciplina, remove automaticamente relações
);

-- Tabela: notas 
-- Armazena notas dos alunos por disciplina

CREATE TABLE notas(
	-- Identificador da nota
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    
    -- FK para aluno 
    id_aluno INT NOT NULL,
    
    -- FK para disciplina
    id_disciplina INT NOT NULL,
    
    -- Nota (ex: 7.5)
    nota DECIMAL(5,2),
    
    -- FK -> alunos (1 aluno pode ter várias notas)
    FOREIGN KEY (id_aluno)
		REFERENCES alunos(id_aluno)
        ON DELETE CASCADE,
        -- Se o aluno for excluído, suas notas também serão

    -- FK -> disciplinas
    FOREIGN KEY (id_disciplina)
		REFERENCES disciplinas(id_disciplina)
        ON DELETE RESTRICT,
        -- Impede excluir disciplina com notas cadastradas
	
    -- Garante que o aluno tenha apenas uma nota por disciplina
    UNIQUE (id_aluno, id_disciplina)
);

-- ALTER TABLE (Adição da FK ALUNOS -> Turmas)

-- 1. Adiciona a coluna id_turma na tabela alunos 
-- Essa coluna irá armazenar a referência da turma do aluno
ALTER TABLE alunos 
ADD COLUMN id_turma INT;

-- 2. Torna a coluna obrigatória (NOT NULL)
-- Garante que todo aluno esteja vinculado a uma turma
ALTER TABLE alunos
MODIFY COLUMN id_turma INT NOT NULL;

-- 3. Cria chave estrangeira (relacionamento)
ALTER TABLE alunos 
ADD CONSTRAINT fk_aluno_turma
FOREIGN KEY (id_turma)
REFERENCES turmas(id_turma)
ON DELETE RESTRICT;

-- EXPLICAÇÃO 
-- A chave estrangeira garante que:
-- 1: Todo aluno deve estar vinculado a uma turma existente
-- 2: Não é possivel inserir um aluno com uma turma inexistente
-- 3: Não é possivel excluir uma turma que possua alunos vinculados (RESTRICT)

-- Apaga o Banco de Dados
-- DROP DATABASE IF EXISTS escola;