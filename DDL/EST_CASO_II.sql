-- Criação do banco de dados
CREATE DATABASE FlyHighAirlines;
USE FlyHighAirlines;

-- Tabela de Passageiros
CREATE TABLE Passageiros (
    id_passageiro INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    endereco VARCHAR(255)
);

-- Tabela de Aeroportos
CREATE TABLE Aeroportos (
    codigo_aeroporto CHAR(3) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    pais VARCHAR(50) NOT NULL
);

-- Tabela de Aeronaves
CREATE TABLE Aeronaves (
    id_aeronave INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    capacidade INT NOT NULL,
    fabricante VARCHAR(50)
);

-- Tabela de Voos
CREATE TABLE Voos (
    id_voo INT AUTO_INCREMENT PRIMARY KEY,
    origem CHAR(3) NOT NULL,
    destino CHAR(3) NOT NULL,
    horario_partida DATETIME NOT NULL,
    horario_chegada DATETIME NOT NULL,
    id_aeronave INT NOT NULL,
    FOREIGN KEY (origem) REFERENCES Aeroportos(codigo_aeroporto),
    FOREIGN KEY (destino) REFERENCES Aeroportos(codigo_aeroporto),
    FOREIGN KEY (id_aeronave) REFERENCES Aeronaves(id_aeronave)
);

-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo ENUM('Piloto', 'Comissário', 'Equipe de Solo') NOT NULL
);

-- Tabela de Operações de Voo (N:M entre Voos e Funcionários)
CREATE TABLE OperacoesVoo (
    id_voo INT NOT NULL,
    id_funcionario INT NOT NULL,
    PRIMARY KEY (id_voo, id_funcionario),
    FOREIGN KEY (id_voo) REFERENCES Voos(id_voo),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);

-- Tabela de Reservas
CREATE TABLE Reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_passageiro INT NOT NULL,
    id_voo INT NOT NULL,
    data_reserva DATETIME NOT NULL,
    status_reserva ENUM('Confirmada', 'Cancelada') NOT NULL,
    FOREIGN KEY (id_passageiro) REFERENCES Passageiros(id_passageiro),
    FOREIGN KEY (id_voo) REFERENCES Voos(id_voo)
);

--ALTER TABLE - Adicionar coluna (ADD)
ALTER TABLE Passageiros
ADD email VARCHAR(100);

--ALTER TABLE - Remover coluna (DROP)
ALTER TABLE Aeronaves
DROP COLUMN fabricante;

--ALTER TABLE - Modificar tipo de coluna (MODIFY)
ALTER TABLE Passageiros
MODIFY telefone VARCHAR(20);

--ALTER TABLE - Renomear coluna (CHANGE)
ALTER TABLE Funcionarios
CHANGE cargo funcao ENUM('Piloto', 'Comissário', 'Equipe de Solo', 'Supervisor') NOT NULL;

--DROP TABLE
DROP TABLE OperacoesVoo;























