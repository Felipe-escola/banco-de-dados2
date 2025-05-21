CREATE DATABASE IF NOT EXISTS Livraria;
USE Livraria;

CREATE TABLE Clientes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Compras (
    CompraID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    NomeLivro VARCHAR(100) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);
-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (nomeCliente, emailCliente) VALUES ('João Silva', 'joao.silva@email.com');
INSERT INTO Clientes (nomeCliente, emailCliente) VALUES ('Maria Oliveira', 'maria.oliveira@email.com');
INSERT INTO Clientes (nomeCliente, emailCliente) VALUES ('Carlos Santos', 'carlos.santos@email.com');

-- Inserindo dados na tabela Compras
INSERT INTO Compras (ClienteID, NomeLivro) VALUES (1, 'O Senhor dos Anéis');
INSERT INTO Compras (ClienteID, NomeLivro) VALUES (2, 'Harry Potter e a Pedra Filosofal');
INSERT INTO Compras (ClienteID, NomeLivro) VALUES (3, 'A Arte da Guerra');
SELECT * FROM Clientes;
