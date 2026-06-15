-- Cadastro dos cursos oferecidos pela escola
INSERT INTO cursos
(nome, carga_horaria)
VALUES
('Técnico em Informática', 1200),
('Técnico em Agricultura', 1200);

-- Cadastro dos professores e suas respectivas especialidades
INSERT INTO professores
(nome, especialidade, email, telefone)
VALUES
('Idomeneu', 'Física Aplicada', 'idomeneu@mail.com', '(63) 99999-1111'),
('Danilo', 'Zoologia', 'danilo@mail.com', '(63) 99999-2222'),
('Mateus', 'Programação', 'mateus@mail.com', '(63) 99999-3333'),
('Joel', 'Matemática Aplicada', 'joel@mail.com', '(63) 99999-4444'),
('Bruna', 'Química', 'bruna@mail.com', '(63) 99999-5555'),
('Aline Torquato', 'Agricultura', 'aline@mail.com', '(63) 99999-6666'),
('Elenir Campelo', 'Educação Física', 'campelo@mail.com', '(63) 99999-7777');

-- Cadastro das disciplinas disponíveis na escola
INSERT INTO disciplinas
(nome, carga_horaria)
VALUES
('Banco de Dados', 80),
('Biologia', 120),
('Matemática', 60),
('Química', 60),
('Física', 60),
('Culturas Não Graníferas', 80),
('Educação Física', 60);

-- Associação entre cursos e disciplinas
-- Representa o relacionamento N:N
INSERT INTO curso_disciplinas
(id_curso, id_disciplina)
VALUES

-- Curso: Técnico em Informática
(1, 1), -- Banco de Dados
(1, 2), -- Biologia
(1, 3), -- Matemática
(1, 4), -- Química
(1, 5), -- Física
(1, 7), -- Educação Física

-- Curso: Técnico em Agricultura
(2, 2), -- Biologia
(2, 3), -- Matemática
(2, 4), -- Química
(2, 5), -- Física
(2, 6), -- Culturas Não Graníferas
(2, 7); -- Educação Física

-- Criação de uma turma do curso Técnico em Informática
-- Professor responsável: Mateus (id_professor = 3)
INSERT INTO turmas
(id_curso, id_professor, ano, serie)
VALUES
(1, 3, 2026, 2);

-- Cadastro de um aluno vinculado à turma criada anteriormente
INSERT INTO alunos
(nome, data_nascimento, cpf, email, telefone, data_matricula, id_turma)
VALUES
(
    'Mateus Rodrigues',
    '2002-11-09',
    '111.111.111-11',
    'mateus.rodrigues@mail.com',
    '(63) 99999-2222',
    '2025-10-16',
    1
);

-- Lançamento da nota do aluno na disciplina Banco de Dados
INSERT INTO notas
(id_aluno, id_disciplina, nota)
VALUES
(1, 1, 10.00);