DROP TABLE IF EXISTS Compras; -- Apague a que depende de Clientes primeiro
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
