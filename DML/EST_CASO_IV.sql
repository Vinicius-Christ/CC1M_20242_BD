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
