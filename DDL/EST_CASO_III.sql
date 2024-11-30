-- Criação do banco de dados
CREATE DATABASE TechSolution;
USE TechSolution;

-- Tabela de Clientes
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    cnpj VARCHAR(14) UNIQUE NOT NULL,
    razao_social VARCHAR(100) NOT NULL,
    ramo_atividade VARCHAR(50),
    data_cadastro DATE NOT NULL,
    pessoa_contato VARCHAR(100)
);

-- Tabela de Empregados
CREATE TABLE Empregados (
    matricula INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    data_admissao DATE NOT NULL,
    qualificacoes TEXT,
    endereco_id INT,
    FOREIGN KEY (endereco_id) REFERENCES Enderecos(id_endereco)
);

-- Tabela de Empresas
CREATE TABLE Empresas (
    cnpj VARCHAR(14) PRIMARY KEY,
    razao_social VARCHAR(100) NOT NULL,
    pessoa_contato VARCHAR(100),
    endereco_id INT,
    FOREIGN KEY (endereco_id) REFERENCES Enderecos(id_endereco)
);

-- Tabela de Fornecedores
CREATE TABLE Fornecedores (
    cnpj VARCHAR(14) PRIMARY KEY,
    razao_social VARCHAR(100) NOT NULL,
    pessoa_contato VARCHAR(100),
    endereco_id INT,
    FOREIGN KEY (endereco_id) REFERENCES Enderecos(id_endereco)
);

-- Tabela de Tipos de Endereço
CREATE TABLE TiposEndereco (
    id_tipo_endereco INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Tabela de Endereços
CREATE TABLE Enderecos (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(50),
    cep VARCHAR(10),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(2),
    id_tipo_endereco INT,
    FOREIGN KEY (id_tipo_endereco) REFERENCES TiposEndereco(id_tipo_endereco)
);

-- Tabela de Encomendas
CREATE TABLE Encomendas (
    id_encomenda INT AUTO_INCREMENT PRIMARY KEY,
    data_inclusao DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    valor_desconto DECIMAL(10, 2),
    valor_liquido DECIMAL(10, 2) NOT NULL,
    forma_pagamento VARCHAR(50),
    parcelas INT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Tabela de Produtos
CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cor VARCHAR(20),
    dimensoes VARCHAR(50),
    peso DECIMAL(10, 2),
    preco DECIMAL(10, 2) NOT NULL,
    tempo_fabricacao INT,
    desenho_produto TEXT,
    horas_mao_obra INT
);

-- Tabela de Tipos de Componente
CREATE TABLE TiposComponente (
    id_tipo_componente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Tabela de Componentes
CREATE TABLE Componentes (
    id_componente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade_estoque INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    unidade VARCHAR(20),
    id_tipo_componente INT,
    FOREIGN KEY (id_tipo_componente) REFERENCES TiposComponente(id_tipo_componente)
);

-- Tabela de Máquinas
CREATE TABLE Maquinas (
    id_maquina INT AUTO_INCREMENT PRIMARY KEY,
    tempo_vida INT NOT NULL,
    data_compra DATE NOT NULL,
    data_fim_garantia DATE NOT NULL
);

-- Tabela de Recursos Específicos (RE)
CREATE TABLE RecursosEspecificos (
    id_recurso INT AUTO_INCREMENT PRIMARY KEY,
    quantidade_necessaria INT NOT NULL,
    unidade VARCHAR(20),
    tempo_uso INT,
    horas_mao_obra INT
);

-- Tabela de Registro de Manutenção (RM)
CREATE TABLE RegistroManutencao (
    id_registro INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    descricao TEXT NOT NULL,
    id_maquina INT NOT NULL,
    FOREIGN KEY (id_maquina) REFERENCES Maquinas(id_maquina)
);

-- Tabela de Registro de Suprimentos (RS)
CREATE TABLE RegistroSuprimentos (
    id_suprimento INT AUTO_INCREMENT PRIMARY KEY,
    quantidade INT NOT NULL,
    data_necessidade DATE NOT NULL,
    id_componente INT NOT NULL,
    FOREIGN KEY (id_componente) REFERENCES Componentes(id_componente)
);

-- Tabela intermediária para Produtos e Componentes (N:M)
CREATE TABLE ProdutosComponentes (
    id_produto INT NOT NULL,
    id_componente INT NOT NULL,
    quantidade_necessaria INT NOT NULL,
    PRIMARY KEY (id_produto, id_componente),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    FOREIGN KEY (id_componente) REFERENCES Componentes(id_componente)
);

-- Tabela intermediária para Encomendas e Produtos (N:M)
CREATE TABLE EncomendasProdutos (
    id_encomenda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_encomenda, id_produto),
    FOREIGN KEY (id_encomenda) REFERENCES Encomendas(id_encomenda),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);
