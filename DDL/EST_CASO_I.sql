-- Criação do banco de dados
CREATE DATABASE SistemaCadeiaSuprimentos;
USE SistemaCadeiaSuprimentos;

-- Tabela de Fornecedores
CREATE TABLE Fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_empresa VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    pais_origem VARCHAR(50) NOT NULL,
    pessoa_contato VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    UNIQUE(nome_empresa)
);

-- Tabela de Produtos
CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    descricao TEXT,
    especificacoes_tecnicas TEXT,
    unidade_medida VARCHAR(20) NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    ponto_ressuprimento INT NOT NULL,
    quantidade_estoque INT DEFAULT 0,
    localizacao_estoque VARCHAR(100)
);

-- Tabela de Fornecedores_Produtos (relação N:M)
CREATE TABLE Fornecedores_Produtos (
    id_fornecedor INT,
    id_produto INT,
    PRIMARY KEY (id_fornecedor, id_produto),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

-- Tabela de Pedidos de Compra
CREATE TABLE PedidosCompra (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_fornecedor INT NOT NULL,
    data_pedido DATE NOT NULL,
    data_esperada_entrega DATE NOT NULL,
    status_pedido ENUM('Em Processamento', 'Enviado', 'Recebido', 'Cancelado') NOT NULL,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor)
);

-- Tabela de Itens do Pedido de Compra
CREATE TABLE ItensPedidoCompra (
    id_pedido INT,
    id_produto INT,
    quantidade_solicitada INT NOT NULL,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES PedidosCompra(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

-- Tabela de Recebimento de Materiais
CREATE TABLE RecebimentoMateriais (
    id_recebimento INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    data_recebimento DATE NOT NULL,
    condicao_material ENUM('Aceito', 'Rejeitado') NOT NULL,
    motivo_rejeicao TEXT,
    FOREIGN KEY (id_pedido) REFERENCES PedidosCompra(id_pedido)
);

-- Tabela de Filiais
CREATE TABLE Filiais (
    id_filial INT AUTO_INCREMENT PRIMARY KEY,
    nome_filial VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    capacidade_armazenamento INT NOT NULL
);

-- Tabela de Transferências de Produtos
CREATE TABLE TransferenciasProdutos (
    id_transferencia INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    id_filial INT NOT NULL,
    quantidade_transferida INT NOT NULL,
    data_transferencia DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    FOREIGN KEY (id_filial) REFERENCES Filiais(id_filial)
);

--ALTER TABLE - Adicionar coluna (ADD)
ALTER TABLE Fornecedores
ADD email VARCHAR(100);

--ALTER TABLE - Remover coluna (DROP)
ALTER TABLE Produtos
DROP COLUMN descricao;

--ALTER TABLE - Modificar tipo de coluna (MODIFY)
ALTER TABLE Fornecedores
MODIFY telefone VARCHAR(20);

--ALTER TABLE - Renomear coluna (CHANGE)
ALTER TABLE Produtos
CHANGE ponto_ressuprimento nivel_critico INT;

--DROP TABLE
DROP TABLE RecebimentoMateriais;















