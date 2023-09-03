Create Database Loja;
USE Loja;

-- Tabela 1: Pessoas
CREATE TABLE Pessoas (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Idade INT,
    Cidade VARCHAR(50)
);

-- Tabela 2: Produtos
CREATE TABLE Produtos (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10, 2)
);

-- Tabela 3: Pedidos
CREATE TABLE Pedidos (
    NumeroPedido INT PRIMARY KEY,
    DataPedido DATE,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Pessoas(ID)
);


-- Adicionar uma coluna em uma tabela

ALTER TABLE Pessoas
ADD Email VARCHAR(100);


-- Inserindo dados na tabela Pessoas
INSERT INTO Pessoas (ID, Nome, Idade, Cidade, Email)
VALUES (1, 'João', 30, 'São Paulo', 'joao@example.com'),
       (2, 'Maria', 25, 'Rio de Janeiro', 'maria@example.com');

-- Inserindo dados na tabela Produtos
INSERT INTO Produtos (Codigo, Nome, Preco)
VALUES (101, 'Notebook', 1200.00),
       (102, 'Smartphone', 600.00);

-- Inserindo dados na tabela Pedidos
INSERT INTO Pedidos (NumeroPedido, DataPedido, ClienteID)
VALUES (1001, '2023-09-01', 1),
       (1002, '2023-09-02', 2);
       
-- Mostrar o conteúdo da tabela Pessoas
SELECT * FROM Pessoas;

-- Mostrar o conteúdo da tabela Produtos
SELECT * FROM Produtos;

-- Mostrar o conteúdo da tabela Pedidos
SELECT * FROM Pedidos;