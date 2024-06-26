CREATE DATABASE ServicoRH;

USE ServicoRH;

CREATE TABLE Colaboradores (
    id BIGINT AUTO_INCREMENT ,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    data_admissao DATE NOT NULL,
    PRIMARY KEY(id)
    
);

INSERT INTO Colaboradores (nome, idade, cargo, salario, data_admissao)
VALUES 
    ('Ana Silva', 30, 'Analista', 2500.00, '2021-05-10'),
    ('Carlos Luis', 25, 'Desenvolvedor', 1800.00, '2022-02-15'),
    ('Carla Cavanhol', 28, 'Designer', 2100.00, '2020-09-01'),
    ('Diego Ribeiro', 35, 'Gerente', 3200.00, '2019-03-25'),
    ('Elisa Ferreira', 40, 'Coordenadora', 1950.00, '2018-11-05');

SELECT * FROM Colaboradores WHERE salario > 2000;

SELECT * FROM Colaboradores WHERE salario < 2000;

UPDATE Colaboradores
SET cargo = "Engenheira"
WHERE nome = 'Elisa Ferreira';