--1. Comandos de INSERT--
--Tabela Passageiros
INSERT INTO Passageiros (nome, cpf, telefone, endereco, email)
VALUES ('Carlos Silva', '123.456.789-00', '11987654321', 'Rua A, 123', 'carlos@exemplo.com');

INSERT INTO Passageiros (nome, cpf, telefone, endereco, email)
VALUES ('Ana Oliveira', '234.567.890-11', '21987654321', 'Av. B, 456', 'ana@exemplo.com');

INSERT INTO Passageiros (nome, cpf, telefone, endereco, email)
VALUES ('João Souza', '345.678.901-22', '31987654321', 'Rua C, 789', 'joao@exemplo.com');

INSERT INTO Passageiros (nome, cpf, telefone, endereco, email)
VALUES ('Maria Fernandes', '456.789.012-33', '41987654321', 'Av. D, 101', 'maria@exemplo.com');

INSERT INTO Passageiros (nome, cpf, telefone, endereco, email)
VALUES ('Lucas Pereira', '567.890.123-44', '51987654321', 'Rua E, 202', 'lucas@exemplo.com');

--Tabela Aeroportos
INSERT INTO Aeroportos (codigo_aeroporto, nome, cidade, pais)
VALUES ('GRU', 'Aeroporto Internacional de São Paulo', 'Guarulhos', 'Brasil');

INSERT INTO Aeroportos (codigo_aeroporto, nome, cidade, pais)
VALUES ('GIG', 'Aeroporto Internacional do Rio de Janeiro', 'Rio de Janeiro', 'Brasil');

INSERT INTO Aeroportos (codigo_aeroporto, nome, cidade, pais)
VALUES ('JFK', 'John F. Kennedy International Airport', 'Nova York', 'EUA');

INSERT INTO Aeroportos (codigo_aeroporto, nome, cidade, pais)
VALUES ('LHR', 'London Heathrow Airport', 'Londres', 'Reino Unido');

INSERT INTO Aeroportos (codigo_aeroporto, nome, cidade, pais)
VALUES ('CDG', 'Charles de Gaulle Airport', 'Paris', 'França');

--Tabela Aeronaves
INSERT INTO Aeronaves (modelo, capacidade)
VALUES ('Boeing 737', 180);

INSERT INTO Aeronaves (modelo, capacidade)
VALUES ('Airbus A320', 150);

INSERT INTO Aeronaves (modelo, capacidade)
VALUES ('Boeing 787', 300);

INSERT INTO Aeronaves (modelo, capacidade)
VALUES ('Embraer E195', 120);

INSERT INTO Aeronaves (modelo, capacidade)
VALUES ('Airbus A380', 800);

--Tabela Voos
INSERT INTO Voos (origem, destino, horario_partida, horario_chegada, id_aeronave)
VALUES ('GRU', 'GIG', '2024-12-01 08:00:00', '2024-12-01 09:30:00', 1);

INSERT INTO Voos (origem, destino, horario_partida, horario_chegada, id_aeronave)
VALUES ('GIG', 'JFK', '2024-12-02 22:00:00', '2024-12-03 06:00:00', 2);

INSERT INTO Voos (origem, destino, horario_partida, horario_chegada, id_aeronave)
VALUES ('JFK', 'LHR', '2024-12-03 12:00:00', '2024-12-03 23:00:00', 3);

INSERT INTO Voos (origem, destino, horario_partida, horario_chegada, id_aeronave)
VALUES ('LHR', 'CDG', '2024-12-04 08:00:00', '2024-12-04 09:30:00', 4);

INSERT INTO Voos (origem, destino, horario_partida, horario_chegada, id_aeronave)
VALUES ('CDG', 'GRU', '2024-12-05 12:00:00', '2024-12-05 22:00:00', 5);

--Tabela Funcionarios
INSERT INTO Funcionarios (nome, funcao)
VALUES ('José Santos', 'Piloto');

INSERT INTO Funcionarios (nome, funcao)
VALUES ('Mariana Lima', 'Comissário');

INSERT INTO Funcionarios (nome, funcao)
VALUES ('Paulo Mendes', 'Equipe de Solo');

INSERT INTO Funcionarios (nome, funcao)
VALUES ('Fernanda Alves', 'Piloto');

INSERT INTO Funcionarios (nome, funcao)
VALUES ('Ricardo Gonçalves', 'Supervisor');

--Tabela Reservas
INSERT INTO Reservas (id_passageiro, id_voo, data_reserva, status_reserva)
VALUES (1, 1, '2024-11-30 14:00:00', 'Confirmada');

INSERT INTO Reservas (id_passageiro, id_voo, data_reserva, status_reserva)
VALUES (2, 2, '2024-11-30 15:00:00', 'Confirmada');

INSERT INTO Reservas (id_passageiro, id_voo, data_reserva, status_reserva)
VALUES (3, 3, '2024-11-30 16:00:00', 'Confirmada');

INSERT INTO Reservas (id_passageiro, id_voo, data_reserva, status_reserva)
VALUES (4, 4, '2024-11-30 17:00:00', 'Confirmada');

INSERT INTO Reservas (id_passageiro, id_voo, data_reserva, status_reserva)
VALUES (5, 5, '2024-11-30 18:00:00', 'Confirmada');


--2. Comandos de UPDATE--
--Tabela Passageiros
UPDATE Passageiros SET telefone = '11912345678' WHERE id_passageiro = 1;
UPDATE Passageiros SET email = 'novoemail@exemplo.com' WHERE id_passageiro = 2;

--Tabela Aeroportos
UPDATE Aeroportos SET cidade = 'São Paulo' WHERE codigo_aeroporto = 'GRU';
UPDATE Aeroportos SET nome = 'Aeroporto Galeão' WHERE codigo_aeroporto = 'GIG';

--Tabela Aeronaves
UPDATE Aeronaves SET capacidade = 190 WHERE id_aeronave = 1;
UPDATE Aeronaves SET modelo = 'Boeing 747' WHERE id_aeronave = 2;

--Tabela Voos
UPDATE Voos SET horario_partida = '2024-12-01 10:00:00' WHERE id_voo = 1;
UPDATE Voos SET horario_chegada = '2024-12-03 07:00:00' WHERE id_voo = 2;

--Tabela Funcionarios
UPDATE Funcionarios SET funcao = 'Supervisor' WHERE id_funcionario = 5;
UPDATE Funcionarios SET nome = 'Mariana Souza' WHERE id_funcionario = 2;

--Tabela Reservas
UPDATE Reservas SET status_reserva = 'Cancelada' WHERE id_reserva = 1;
UPDATE Reservas SET data_reserva = '2024-11-30 19:00:00' WHERE id_reserva = 2;


--3. Comandos de DELETE--
--Tabela Passageiros
DELETE FROM Passageiros WHERE id_passageiro = 5;

--Tabela Aeroportos
DELETE FROM Aeroportos WHERE codigo_aeroporto = 'CDG';

--Tabela Aeronaves
DELETE FROM Aeronaves WHERE id_aeronave = 5;

--Tabela Voos
DELETE FROM Voos WHERE id_voo = 5;

--Tabela Funcionarios
DELETE FROM Funcionarios WHERE id_funcionario = 5;

--Tabela Reservas
DELETE FROM Reservas WHERE id_reserva = 5;





















