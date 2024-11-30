--Listar todos os clientes que compraram um determinado produto:
SELECT c.nome AS cliente, p.nome AS produto
FROM Vendas v
JOIN ItensVenda iv ON v.id_venda = iv.id_venda
JOIN Produtos p ON iv.id_produto = p.id_produto
JOIN Clientes c ON v.id_cliente = c.id_cliente
WHERE p.nome = 'Notebook';

--Verificar o estoque e fornecedores de um produto específico:
SELECT p.nome AS produto, p.quantidade_estoque, f.nome AS fornecedor
FROM Produtos p
JOIN Fornecedores f ON p.id_fornecedor = f.id_fornecedor
WHERE p.nome = 'Celular';

--Acompanhar o status de pagamento de cada venda:
SELECT v.id_venda, c.nome AS cliente, p.data_pagamento, p.valor, p.status
FROM Pagamentos p
JOIN Vendas v ON p.id_venda = v.id_venda
JOIN Clientes c ON v.id_cliente = c.id_cliente;

-- Gerar relatório de vendas por período e cliente:
SELECT c.nome AS cliente, COUNT(v.id_venda) AS total_vendas, SUM(v.valor_total) AS valor_total
FROM Vendas v
JOIN Clientes c ON v.id_cliente = c.id_cliente
WHERE v.data_venda BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY c.id_cliente;

--1. Comandos de INSERT por tabela--
--Tabela Fornecedores
INSERT INTO Fornecedores (nome, cnpj, endereco, telefone) 
VALUES ('Fornecedor A', '12345678000100', 'Rua X, 123', '11987654321');

INSERT INTO Fornecedores (nome, cnpj, endereco, telefone) 
VALUES ('Fornecedor B', '23456789000199', 'Rua Y, 456', '21987654322');

INSERT INTO Fornecedores (nome, cnpj, endereco, telefone) 
VALUES ('Fornecedor C', '34567890100188', 'Rua Z, 789', '31987654323');

INSERT INTO Fornecedores (nome, cnpj, endereco, telefone) 
VALUES ('Fornecedor D', '45678901200177', 'Av. W, 101', '41987654324');

INSERT INTO Fornecedores (nome, cnpj, endereco, telefone) 
VALUES ('Fornecedor E', '56789012300166', 'Av. V, 202', '51987654325');

--Tabela Clientes
INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, telefone, fidelidade) 
VALUES ('João Oliveira', '12345678901', '1990-05-15', 'Rua A, 123', '11987654321', TRUE);

INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, telefone, fidelidade) 
VALUES ('Maria Costa', '23456789012', '1985-07-20', 'Rua B, 456', '21987654322', FALSE);

INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, telefone, fidelidade) 
VALUES ('Carlos Silva', '34567890123', '1992-02-10', 'Rua C, 789', '31987654323', TRUE);

INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, telefone, fidelidade) 
VALUES ('Fernanda Lima', '45678901234', '1988-12-15', 'Av. D, 101', '41987654324', FALSE);

INSERT INTO Clientes (nome, cpf, data_nascimento, endereco, telefone, fidelidade) 
VALUES ('Roberto Souza', '56789012345', '1997-04-25', 'Av. E, 202', '51987654325', TRUE);

--Tabela Produtos
INSERT INTO Produtos (nome, categoria, preco, id_fornecedor) 
VALUES ('Produto X', 'Categoria A', 99.90, 1);

INSERT INTO Produtos (nome, categoria, preco, id_fornecedor) 
VALUES ('Produto Y', 'Categoria B', 149.90, 2);

INSERT INTO Produtos (nome, categoria, preco, id_fornecedor) 
VALUES ('Produto Z', 'Categoria A', 199.90, 3);

INSERT INTO Produtos (nome, categoria, preco, id_fornecedor) 
VALUES ('Produto W', 'Categoria C', 249.90, 4);

INSERT INTO Produtos (nome, categoria, preco, id_fornecedor) 
VALUES ('Produto V', 'Categoria B', 299.90, 5);

--Tabela Vendas
INSERT INTO Vendas (id_cliente, data_venda, valor_total) 
VALUES (1, '2024-01-01', 499.50);

INSERT INTO Vendas (id_cliente, data_venda, valor_total) 
VALUES (2, '2024-01-02', 299.90);

INSERT INTO Vendas (id_cliente, data_venda, valor_total) 
VALUES (3, '2024-01-03', 449.80);

INSERT INTO Vendas (id_cliente, data_venda, valor_total) 
VALUES (4, '2024-01-04', 299.90);

INSERT INTO Vendas (id_cliente, data_venda, valor_total) 
VALUES (5, '2024-01-05', 599.70);

--Tabela ItensVenda
INSERT INTO ItensVenda (id_venda, id_produto, quantidade, preco_unitario) 
VALUES (1, 1, 3, 99.90);

INSERT INTO ItensVenda (id_venda, id_produto, quantidade, preco_unitario) 
VALUES (2, 2, 2, 149.90);

INSERT INTO ItensVenda (id_venda, id_produto, quantidade, preco_unitario) 
VALUES (3, 3, 2, 199.90);

INSERT INTO ItensVenda (id_venda, id_produto, quantidade, preco_unitario) 
VALUES (4, 4, 1, 249.90);

INSERT INTO ItensVenda (id_venda, id_produto, quantidade, preco_unitario) 
VALUES (5, 5, 2, 299.90);

--Tabela Pagamentos
INSERT INTO Pagamentos (id_venda, data_transacao, valor, status) 
VALUES (1, '2024-01-02', 499.50, 'pago');

INSERT INTO Pagamentos (id_venda, data_transacao, valor, status) 
VALUES (2, '2024-01-03', 299.90, 'pendente');

INSERT INTO Pagamentos (id_venda, data_transacao, valor, status) 
VALUES (3, '2024-01-04', 449.80, 'pago');

INSERT INTO Pagamentos (id_venda, data_transacao, valor, status) 
VALUES (4, '2024-01-05', 299.90, 'pendente');

INSERT INTO Pagamentos (id_venda, data_transacao, valor, status) 
VALUES (5, '2024-01-06', 599.70, 'pago');


--2. Comandos de UPDATE--
--Tabela Clientes
UPDATE Clientes SET telefone = '11999999999' WHERE id_cliente = 1;
UPDATE Clientes SET endereco = 'Rua F, 303' WHERE id_cliente = 3;

--Tabela Fornecedores
UPDATE Fornecedores SET telefone = '11999999999' WHERE id_fornecedor = 2;
UPDATE Fornecedores SET endereco = 'Rua M, 555' WHERE id_fornecedor = 4;

--Tabela Produtos
UPDATE Produtos SET preco = 119.90 WHERE id_produto = 1;
UPDATE Produtos SET categoria = 'Categoria D' WHERE id_produto = 4;

--Tabela Vendas
UPDATE Vendas SET valor_total = 599.00 WHERE id_venda = 1;
UPDATE Vendas SET valor_total = 249.90 WHERE id_venda = 4;

--Tabela Pagamentos
UPDATE Pagamentos SET status = 'pago' WHERE id_pagamento = 2;
UPDATE Pagamentos SET valor = 450.00 WHERE id_pagamento = 3;


--3. Comandos de DELETE--
--Tabela Clientes
DELETE FROM Clientes WHERE id_cliente = 5;

--Tabela Fornecedores
DELETE FROM Fornecedores WHERE id_fornecedor = 5;

--Tabela Produtos
DELETE FROM Produtos WHERE id_produto = 5;

--Tabela Vendas
DELETE FROM Vendas WHERE id_venda = 5;

--Tabela Pagamentos
DELETE FROM Pagamentos WHERE id_pagamento = 4;
