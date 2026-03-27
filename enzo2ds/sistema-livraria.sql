-- 1. Limpar as tabelas existentes
DROP TABLE IF EXISTS Compras;
DROP TABLE IF EXISTS Clientes;

CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(255) NOT NULL,
    emailCliente VARCHAR(255) NOT NULL
);


CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(255) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

INSERT INTO Clientes (ID, nomeCliente, emailCliente) VALUES 
(1, 'Carolina Maria de Jesus', 'carolina@exemplo.com'),
(2, 'Machado de Assis', 'machado@exemplo.com'),
(3, 'Clarice Lispector', 'clarice@exemplo.com');


INSERT INTO Compras (CompraID, ClienteID, NomeLivro) VALUES 
(101, 1, 'Quarto de Despejo'),
(102, 2, 'Dom Casmurro'),
(103, 3, 'A Hora da Estrela'),
(104, 1, 'Casa de Alvenaria');

SELECT * FROM Clientes;

