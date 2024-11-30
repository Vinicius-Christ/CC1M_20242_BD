--1. Comandos de INSERT por tabela--
--Tabela TiposEndereco
INSERT INTO TiposEndereco (nome) VALUES ('Residencial');
INSERT INTO TiposEndereco (nome) VALUES ('Comercial');
INSERT INTO TiposEndereco (nome) VALUES ('Industrial');
INSERT INTO TiposEndereco (nome) VALUES ('Rural');
INSERT INTO TiposEndereco (nome) VALUES ('Outros');

--Tabela Enderecos
INSERT INTO Enderecos (logradouro, numero, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES ('Rua A', '123', 'Apartamento 1', '12345-678', 'Centro', 'São Paulo', 'SP', 1);

INSERT INTO Enderecos (logradouro, numero, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES ('Av. B', '456', 'Sala 202', '98765-432', 'Bela Vista', 'Rio de Janeiro', 'RJ', 2);

INSERT INTO Enderecos (logradouro, numero, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES ('Rua C', '789', NULL, '87654-321', 'Jardim das Flores', 'Curitiba', 'PR', 3);

INSERT INTO Enderecos (logradouro, numero, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES ('Av. D', '101', NULL, '54321-987', 'Centro', 'Porto Alegre', 'RS', 4);

INSERT INTO Enderecos (logradouro, numero, complemento, cep, bairro, cidade, estado, id_tipo_endereco)
VALUES ('Rua E', '202', 'Bloco B', '65432-198', 'Zona Sul', 'Brasília', 'DF', 5);

--Tabela Clientes
INSERT INTO Clientes (cnpj, razao_social, ramo_atividade, data_cadastro, pessoa_contato, telefone_contato)
VALUES ('12345678000100', 'Cliente A', 'Comércio', '2024-01-01', 'João Silva', '11987654321');

INSERT INTO Clientes (cnpj, razao_social, ramo_atividade, data_cadastro, pessoa_contato, telefone_contato)
VALUES ('23456789000111', 'Cliente B', 'Serviços', '2024-01-02', 'Ana Oliveira', '21987654321');

INSERT INTO Clientes (cnpj, razao_social, ramo_atividade, data_cadastro, pessoa_contato, telefone_contato)
VALUES ('34567890000122', 'Cliente C', 'Indústria', '2024-01-03', 'Carlos Pereira', '31987654321');

INSERT INTO Clientes (cnpj, razao_social, ramo_atividade, data_cadastro, pessoa_contato, telefone_contato)
VALUES ('45678900000133', 'Cliente D', 'Agricultura', '2024-01-04', 'Fernanda Souza', '41987654321');

INSERT INTO Clientes (cnpj, razao_social, ramo_atividade, data_cadastro, pessoa_contato, telefone_contato)
VALUES ('56789000000144', 'Cliente E', 'Tecnologia', '2024-01-05', 'Lucas Santos', '51987654321');

--Tabela Empregados
INSERT INTO Empregados (nome, cargo, salario, data_admissao, qualificacoes, endereco_id)
VALUES ('José Silva', 'Analista', 4000.00, '2024-01-01', 'Certificado ABC', 1);

INSERT INTO Empregados (nome, cargo, salario, data_admissao, qualificacoes, endereco_id)
VALUES ('Mariana Oliveira', 'Gerente', 6000.00, '2024-01-02', 'MBA em Gestão', 2);

INSERT INTO Empregados (nome, cargo, salario, data_admissao, qualificacoes, endereco_id)
VALUES ('Carlos Souza', 'Técnico', 3000.00, '2024-01-03', 'Curso Técnico XYZ', 3);

INSERT INTO Empregados (nome, cargo, salario, data_admissao, qualificacoes, endereco_id)
VALUES ('Ana Lima', 'Assistente', 2500.00, '2024-01-04', 'Excel Avançado', 4);

INSERT INTO Empregados (nome, cargo, salario, data_admissao, qualificacoes, endereco_id)
VALUES ('Fernanda Melo', 'Supervisor', 5000.00, '2024-01-05', 'Liderança', 5);

--Tabela Produtos
INSERT INTO Produtos (nome, cor, peso, preco, tempo_producao, desenho_produto, horas_mao_obra)
VALUES ('Produto A', 'Azul', 1.5, 100.00, 2, 'Desenho A', 5);

INSERT INTO Produtos (nome, cor, peso, preco, tempo_producao, desenho_produto, horas_mao_obra)
VALUES ('Produto B', 'Verde', 2.0, 150.00, 3, 'Desenho B', 6);

INSERT INTO Produtos (nome, cor, peso, preco, tempo_producao, desenho_produto, horas_mao_obra)
VALUES ('Produto C', 'Vermelho', 0.5, 80.00, 1, 'Desenho C', 4);

INSERT INTO Produtos (nome, cor, peso, preco, tempo_producao, desenho_produto, horas_mao_obra)
VALUES ('Produto D', 'Amarelo', 3.0, 200.00, 4, 'Desenho D', 8);

INSERT INTO Produtos (nome, cor, peso, preco, tempo_producao, desenho_produto, horas_mao_obra)
VALUES ('Produto E', 'Preto', 2.5, 180.00, 5, 'Desenho E', 7);


--2. Comandos de UPDATE por tabela--
--Tabela Clientes
UPDATE Clientes SET pessoa_contato = 'João Oliveira' WHERE id_cliente = 1;
UPDATE Clientes SET telefone_contato = '11999999999' WHERE id_cliente = 2;

--Tabela Empregados
UPDATE Empregados SET salario = 4500.00 WHERE matricula = 1;
UPDATE Empregados SET cargo = 'Coordenador' WHERE matricula = 3;

--Tabela Produtos
UPDATE Produtos SET preco = 120.00 WHERE id_produto = 1;
UPDATE Produtos SET horas_mao_obra = 6 WHERE id_produto = 2;


--3. Comandos de DELETE por tabela--
--Tabela Clientes
DELETE FROM Clientes WHERE id_cliente = 5;

--Tabela Empregados
DELETE FROM Empregados WHERE matricula = 5;

--Tabela Produtos
DELETE FROM Produtos WHERE id_produto = 5;






















