--1. Comandos de INSERT--
--Tabela Fornecedores
INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, pessoa_contato, telefone, email)
VALUES ('Global Supplies', 'Rua A, 123', 'Brasil', 'Ana Silva', '11987654321', 'ana@globalsupplies.com');

INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, pessoa_contato, telefone, email)
VALUES ('TechParts Ltda', 'Av. B, 456', 'Brasil', 'Carlos Sousa', '21987654321', 'carlos@techparts.com');

INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, pessoa_contato, telefone, email)
VALUES ('ImportCo', 'Rua C, 789', 'EUA', 'John Doe', '31987654321', 'john@importco.com');

INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, pessoa_contato, telefone, email)
VALUES ('MetalWorks', 'Av. D, 101', 'China', 'Wei Zhang', '41987654321', 'wei@metalworks.com');

INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, pessoa_contato, telefone, email)
VALUES ('Green Supply', 'Rua E, 202', 'Alemanha', 'Helga Schmidt', '51987654321', 'helga@greensupply.com');

--Tabela Produtos
INSERT INTO Produtos (nome_produto, especificacoes_tecnicas, unidade_medida, preco_unitario, nivel_critico, quantidade_estoque, localizacao_estoque)
VALUES ('Parafuso', 'M10, Aço Inox', 'unidade', 0.50, 100, 200, 'Prateleira A');

INSERT INTO Produtos (nome_produto, especificacoes_tecnicas, unidade_medida, preco_unitario, nivel_critico, quantidade_estoque, localizacao_estoque)
VALUES ('Porca', 'M10, Aço Inox', 'unidade', 0.30, 50, 150, 'Prateleira B');

INSERT INTO Produtos (nome_produto, especificacoes_tecnicas, unidade_medida, preco_unitario, nivel_critico, quantidade_estoque, localizacao_estoque)
VALUES ('Chapa de Aço', '1x2m, 5mm', 'placa', 120.00, 10, 20, 'Área 1');

INSERT INTO Produtos (nome_produto, especificacoes_tecnicas, unidade_medida, preco_unitario, nivel_critico, quantidade_estoque, localizacao_estoque)
VALUES ('Fio de Cobre', '10m, 1.5mm', 'metro', 5.00, 30, 100, 'Prateleira C');

INSERT INTO Produtos (nome_produto, especificacoes_tecnicas, unidade_medida, preco_unitario, nivel_critico, quantidade_estoque, localizacao_estoque)
VALUES ('Tubo PVC', '1m, 50mm', 'unidade', 3.00, 20, 50, 'Prateleira D');

--Tabela Fornecedores_Produtos
INSERT INTO Fornecedores_Produtos (id_fornecedor, id_produto) VALUES (1, 1);
INSERT INTO Fornecedores_Produtos (id_fornecedor, id_produto) VALUES (2, 2);
INSERT INTO Fornecedores_Produtos (id_fornecedor, id_produto) VALUES (3, 3);
INSERT INTO Fornecedores_Produtos (id_fornecedor, id_produto) VALUES (4, 4);
INSERT INTO Fornecedores_Produtos (id_fornecedor, id_produto) VALUES (5, 5);

--Tabela PedidosCompra
INSERT INTO PedidosCompra (id_fornecedor, data_pedido, data_esperada_entrega, status_pedido)
VALUES (1, '2024-11-01', '2024-11-10', 'Em Processamento');

INSERT INTO PedidosCompra (id_fornecedor, data_pedido, data_esperada_entrega, status_pedido)
VALUES (2, '2024-11-02', '2024-11-11', 'Em Processamento');

INSERT INTO PedidosCompra (id_fornecedor, data_pedido, data_esperada_entrega, status_pedido)
VALUES (3, '2024-11-03', '2024-11-12', 'Em Processamento');

INSERT INTO PedidosCompra (id_fornecedor, data_pedido, data_esperada_entrega, status_pedido)
VALUES (4, '2024-11-04', '2024-11-13', 'Em Processamento');

INSERT INTO PedidosCompra (id_fornecedor, data_pedido, data_esperada_entrega, status_pedido)
VALUES (5, '2024-11-05', '2024-11-14', 'Em Processamento');

--Tabela ItensPedidoCompra
INSERT INTO ItensPedidoCompra (id_pedido, id_produto, quantidade_solicitada) VALUES (1, 1, 100);
INSERT INTO ItensPedidoCompra (id_pedido, id_produto, quantidade_solicitada) VALUES (2, 2, 200);
INSERT INTO ItensPedidoCompra (id_pedido, id_produto, quantidade_solicitada) VALUES (3, 3, 50);
INSERT INTO ItensPedidoCompra (id_pedido, id_produto, quantidade_solicitada) VALUES (4, 4, 70);
INSERT INTO ItensPedidoCompra (id_pedido, id_produto, quantidade_solicitada) VALUES (5, 5, 90);


--2. Comandos de UPDATE--
--Tabela Fornecedores
UPDATE Fornecedores SET telefone = '11912345678' WHERE id_fornecedor = 1;
UPDATE Fornecedores SET email = 'novoemail@globalsupplies.com' WHERE id_fornecedor = 1;

--Tabela Produtos
UPDATE Produtos SET quantidade_estoque = 250 WHERE id_produto = 1;
UPDATE Produtos SET preco_unitario = 0.45 WHERE id_produto = 1;

--Tabela PedidosCompra
UPDATE PedidosCompra SET status_pedido = 'Recebido' WHERE id_pedido = 1;
UPDATE PedidosCompra SET data_esperada_entrega = '2024-11-12' WHERE id_pedido = 2;


--3. Comandos de DELETE--
--Tabela Fornecedores
DELETE FROM Fornecedores WHERE id_fornecedor = 5;

--Tabela Produtos
DELETE FROM Produtos WHERE id_produto = 5;

--Tabela PedidosCompra
DELETE FROM PedidosCompra WHERE id_pedido = 5;

























