--Listar todos os alunos matriculados em uma modalidade específica:
SELECT a.nome AS aluno, m.nome AS modalidade
FROM Matriculas mat
JOIN Alunos a ON mat.id_aluno = a.id_aluno
JOIN Modalidades m ON mat.id_modalidade = m.id_modalidade
WHERE m.nome = 'Musculação';

--Verificar planos de treino e instrutores:
SELECT a.nome AS aluno, p.descricao AS plano, i.nome AS instrutor
FROM PlanosTreinamento p
JOIN Alunos a ON p.id_aluno = a.id_aluno
JOIN Instrutores i ON p.id_instrutor = i.id_instrutor;

--Controlar lotação de uma aula:
SELECT a.data_horario, COUNT(pa.id_aluno) AS total_participantes, a.capacidade
FROM Aulas a
LEFT JOIN ParticipantesAulas pa ON a.id_aula = pa.id_aula
WHERE a.id_aula = 1
GROUP BY a.id_aula;

--Acompanhar status de pagamentos:
SELECT a.nome AS aluno, p.data_pagamento, p.valor, p.status
FROM Pagamentos p
JOIN Alunos a ON p.id_aluno = a.id_aluno;

--1. Comandos de INSERT por tabela--
--Tabela Alunos
INSERT INTO Alunos (nome, cpf, data_nascimento, endereco, telefone) 
VALUES ('João Silva', '12345678901', '1990-05-15', 'Rua A, 123', '11987654321');

INSERT INTO Alunos (nome, cpf, data_nascimento, endereco, telefone) 
VALUES ('Ana Oliveira', '23456789012', '1995-07-20', 'Rua B, 456', '21987654321');

INSERT INTO Alunos (nome, cpf, data_nascimento, endereco, telefone) 
VALUES ('Carlos Souza', '34567890123', '1988-12-10', 'Rua C, 789', '31987654321');

INSERT INTO Alunos (nome, cpf, data_nascimento, endereco, telefone) 
VALUES ('Mariana Lima', '45678901234', '1992-03-25', 'Av. D, 101', '41987654321');

INSERT INTO Alunos (nome, cpf, data_nascimento, endereco, telefone) 
VALUES ('Fernanda Melo', '56789012345', '1998-11-05', 'Av. E, 202', '51987654321');

--Tabela Instrutores
INSERT INTO Instrutores (nome, cpf, especialidade, telefone) 
VALUES ('José Santos', '12312312311', 'Musculação', '11999999999');

INSERT INTO Instrutores (nome, cpf, especialidade, telefone) 
VALUES ('Mariana Souza', '23423423422', 'Pilates', '21999999999');

INSERT INTO Instrutores (nome, cpf, especialidade, telefone) 
VALUES ('Carlos Oliveira', '34534534533', 'Crossfit', '31999999999');

INSERT INTO Instrutores (nome, cpf, especialidade, telefone) 
VALUES ('Fernanda Lima', '45645645644', 'Yoga', '41999999999');

INSERT INTO Instrutores (nome, cpf, especialidade, telefone) 
VALUES ('Ana Pereira', '56756756755', 'Funcional', '51999999999');

--Tabela Modalidades
INSERT INTO Modalidades (nome, descricao) 
VALUES ('Musculação', 'Treinamento de força com pesos.');

INSERT INTO Modalidades (nome, descricao) 
VALUES ('Pilates', 'Exercícios para fortalecimento e flexibilidade.');

INSERT INTO Modalidades (nome, descricao) 
VALUES ('Yoga', 'Prática de posturas e meditação.');

INSERT INTO Modalidades (nome, descricao) 
VALUES ('Crossfit', 'Treinos intensos com movimentos funcionais.');

INSERT INTO Modalidades (nome, descricao) 
VALUES ('Funcional', 'Exercícios para movimentos do dia a dia.');

--Tabela Matrículas
INSERT INTO Matriculas (id_aluno, id_modalidade, data_inicio, data_fim) 
VALUES (1, 1, '2024-01-01', NULL);

INSERT INTO Matriculas (id_aluno, id_modalidade, data_inicio, data_fim) 
VALUES (2, 2, '2024-01-02', NULL);

INSERT INTO Matriculas (id_aluno, id_modalidade, data_inicio, data_fim) 
VALUES (3, 3, '2024-01-03', '2024-06-30');

INSERT INTO Matriculas (id_aluno, id_modalidade, data_inicio, data_fim) 
VALUES (4, 4, '2024-01-04', NULL);

INSERT INTO Matriculas (id_aluno, id_modalidade, data_inicio, data_fim) 
VALUES (5, 5, '2024-01-05', NULL);

--Tabela PlanosTreinamento
INSERT INTO PlanosTreinamento (descricao, data_criacao, id_instrutor, id_aluno) 
VALUES ('Plano personalizado para hipertrofia.', '2024-01-01', 1, 1);

INSERT INTO PlanosTreinamento (descricao, data_criacao, id_instrutor, id_aluno) 
VALUES ('Plano para fortalecimento e flexibilidade.', '2024-01-02', 2, 2);

INSERT INTO PlanosTreinamento (descricao, data_criacao, id_instrutor, id_aluno) 
VALUES ('Plano de treino funcional para emagrecimento.', '2024-01-03', 3, 3);

INSERT INTO PlanosTreinamento (descricao, data_criacao, id_instrutor, id_aluno) 
VALUES ('Plano para relaxamento e redução de estresse.', '2024-01-04', 4, 4);

INSERT INTO PlanosTreinamento (descricao, data_criacao, id_instrutor, id_aluno) 
VALUES ('Plano para alta intensidade e resistência.', '2024-01-05', 5, 5);

--Tabela Pagamentos
INSERT INTO Pagamentos (id_aluno, data_pagamento, valor, status) 
VALUES (1, '2024-01-05', 200.00, 'pago');

INSERT INTO Pagamentos (id_aluno, data_pagamento, valor, status) 
VALUES (2, '2024-01-06', 250.00, 'pago');

INSERT INTO Pagamentos (id_aluno, data_pagamento, valor, status) 
VALUES (3, '2024-01-07', 300.00, 'pendente');

INSERT INTO Pagamentos (id_aluno, data_pagamento, valor, status) 
VALUES (4, '2024-01-08', 150.00, 'pago');

INSERT INTO Pagamentos (id_aluno, data_pagamento, valor, status) 
VALUES (5, '2024-01-09', 100.00, 'pendente');


--2. Comandos de UPDATE--
--Tabela Alunos
UPDATE Alunos SET telefone = '11988888888' WHERE id_aluno = 1;
UPDATE Alunos SET endereco = 'Rua Nova, 999' WHERE id_aluno = 2;

--Tabela Instrutores
UPDATE Instrutores SET telefone = '11977777777' WHERE id_instrutor = 1;
UPDATE Instrutores SET especialidade = 'HIIT' WHERE id_instrutor = 2;

--Tabela Modalidades
UPDATE Modalidades SET descricao = 'Treinos de força com foco na saúde.' WHERE id_modalidade = 1;
UPDATE Modalidades SET nome = 'Pilates Avançado' WHERE id_modalidade = 2;


--3. Comandos de DELETE--
--Tabela Alunos
DELETE FROM Alunos WHERE id_aluno = 5;

--Tabela Instrutores
DELETE FROM Instrutores WHERE id_instrutor = 5;

--Tabela Modalidades
DELETE FROM Modalidades WHERE id_modalidade = 5;
