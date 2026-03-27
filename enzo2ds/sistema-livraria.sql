-- 1. Limpeza do ambiente
DROP TABLE IF EXISTS Compras;
DROP TABLE IF EXISTS Clientes;

-- 2. Estrutura de Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(255) NOT NULL,
    emailCliente VARCHAR(255) NOT NULL
);

-- 3. Estrutura de Compras com Chave Estrangeira
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(255) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- 4. População de dados
INSERT INTO Clientes (ID, nomeCliente, emailCliente) VALUES 
(1, 'Carolina Maria de Jesus', 'carolina@exemplo.com'),
(2, 'Machado de Assis', 'machado@exemplo.com'),
(3, 'Clarice Lispector', 'clarice@exemplo.com');

INSERT INTO Compras (CompraID, ClienteID, NomeLivro) VALUES 
(101, 1, 'Quarto de Despejo'),
(102, 2, 'Dom Casmurro'),
(103, 3, 'A Hora da Estrela'),
(104, 1, 'Casa de Alvenaria');

-- 5. Consulta Final com INNER JOIN (usando apelidos 'c' e 'p')
SELECT 
    c.nomeCliente, 
    p.NomeLivro
FROM 
    Clientes AS c
INNER JOIN 
    Compras AS p ON c.ID = p.ClienteID;
