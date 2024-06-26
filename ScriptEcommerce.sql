
CREATE DATABASE ECommerce;

USE ECommerce;

CREATE TABLE Produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL,
    categoria VARCHAR(50),
    PRIMARY KEY(id)
);

INSERT INTO Produtos (nome, descricao, preco, quantidade, categoria)
VALUES 
    ('Notebook Predator', 'Notebook com 16GB RAM', 7500.00, 10, 'Eletrônicos'),
    ('AirFryer Mondial', 'AirFryer 8L', 1500.00, 5, 'Eletrodomésticos'),
    ('Fone de Ouvido', 'Fone de ouvido Bluetooth', 150.00, 20, 'Acessórios'),
	('Smartphone Xiaomi', 'Smartphone com 128GB', 1200.00, 15, 'Eletrônicos'),
	('Camiseta Puma', 'Camiseta Esportiva', 100.00, 30, 'Roupas'),
    ('Livro Java', 'Livro sobre Java', 80.00, 25, 'Livros'),
    ('Monitor Samsung', 'Monitor 24 polegadas', 700.00, 8, 'Eletrônicos'),
    ('Mouse Logitech', 'Mouse sem fio', 80.00, 50, 'Acessórios');

SELECT * FROM Produtos WHERE preco > 500;

SELECT * FROM Produtos WHERE preco < 500;

UPDATE Produtos
SET preco = 90.00
WHERE nome = 'Livro Java';