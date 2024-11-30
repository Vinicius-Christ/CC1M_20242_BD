-- Criação do banco de dados
CREATE DATABASE AcademiaSaude;
USE AcademiaSaude;

-- Tabela de Alunos
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(15)
);

-- Tabela de Instrutores
CREATE TABLE Instrutores (
    id_instrutor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    especialidade VARCHAR(100),
    telefone VARCHAR(15)
);

-- Tabela de Modalidades
CREATE TABLE Modalidades (
    id_modalidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Tabela de Matrículas
CREATE TABLE Matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_modalidade INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_modalidade) REFERENCES Modalidades(id_modalidade)
);

-- Tabela de Planos de Treinamento
CREATE TABLE PlanosTreinamento (
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    data_criacao DATE NOT NULL,
    id_instrutor INT NOT NULL,
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_instrutor) REFERENCES Instrutores(id_instrutor),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);

-- Tabela de Aulas
CREATE TABLE Aulas (
    id_aula INT AUTO_INCREMENT PRIMARY KEY,
    data_horario DATETIME NOT NULL,
    capacidade INT NOT NULL,
    id_modalidade INT NOT NULL,
    id_instrutor INT NOT NULL,
    FOREIGN KEY (id_modalidade) REFERENCES Modalidades(id_modalidade),
    FOREIGN KEY (id_instrutor) REFERENCES Instrutores(id_instrutor)
);

-- Tabela de Participantes de Aulas
CREATE TABLE ParticipantesAulas (
    id_aula INT NOT NULL,
    id_aluno INT NOT NULL,
    PRIMARY KEY (id_aula, id_aluno),
    FOREIGN KEY (id_aula) REFERENCES Aulas(id_aula),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);

-- Tabela de Pagamentos
CREATE TABLE Pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    data_pagamento DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status ENUM('pago', 'pendente') NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);

--ALTER TABLE - Adicionar coluna (ADD)
ALTER TABLE Clientes
ADD telefone_contato VARCHAR(15);

--ALTER TABLE - Remover coluna (DROP)
ALTER TABLE Produtos
DROP COLUMN dimensoes;

--ALTER TABLE - Modificar tipo de coluna (MODIFY)
ALTER TABLE Clientes
MODIFY telefone_contato VARCHAR(20);

--ALTER TABLE - Renomear coluna (CHANGE)
ALTER TABLE Produtos
CHANGE tempo_fabricacao tempo_producao INT;

--DROP TABLE
DROP TABLE RegistroSuprimentos;











































