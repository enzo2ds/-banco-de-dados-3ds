-- 1. Limpeza inicial (conforme exercício 3)
DROP TABLE IF EXISTS Aluno;
DROP TABLE IF EXISTS Professor;
DROP TABLE IF EXISTS Escola;

-- 2. Criação das tabelas (Necessário para o INSERT funcionar)
CREATE TABLE Aluno (id_aluno INT, nome TEXT, idade INT);
CREATE TABLE Professor (id_professor INT, nome TEXT, cpf TEXT);
CREATE TABLE Escola (id_escola INT, nome_escola TEXT, telefone TEXT);

-- 3. Inserindo dados na tabela Aluno (Exercício 4)
INSERT INTO Aluno (id_aluno, nome, idade)
VALUES
(1, 'Ana Costa', 18),
(2, 'João Silva', 20),
(3, 'Maria Oliveira', 19),
(4, 'Carlos Souza', 21),
(5, 'Beatriz Santos', 22);

-- 4. Inserindo dados na tabela Professor (Exercício 5)
INSERT INTO Professor (id_professor, nome, cpf)
VALUES
(1, 'Ricardo Santos', '12345678901'),
(2, 'Fernanda Lima', '23456789012'),
(3, 'Marcos Souza', '34567890123');

-- 5. Inserindo dados na tabela Escola (Exercício 6)
INSERT INTO Escola (id_escola, nome_escola, telefone)
VALUES
(1, 'Escola Primeiros Passos', '11988887777'),
(2, 'Colégio Horizonte', '11977776666'),
(3, 'Instituto Aprender', '11966665555');

-- 6. Consultando os dados (Exercício 7)
SELECT * FROM Aluno;
