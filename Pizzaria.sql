CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) not null,
    descricao varchar(255)
);


CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (nome, descricao) VALUES
('Tradicional', 'Pizzas clássicas com ingredientes tradicionais'),
('Especial', 'Pizzas com ingredientes especiais e combinações únicas'),
('Vegetariana', 'Pizzas sem ingredientes de origem animal'),
('Premium', 'Pizzas gourmet com ingredientes de alta qualidade'),
('Doce', 'Pizzas com coberturas doces e frutas');

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id) VALUES
('Margherita', 'Molho de tomate, mozzarella, manjericão fresco', 40.00, 1),
('Pepperoni', 'Molho de tomate, mozzarella, pepperoni', 45.00, 1),
('Frango com Catupiry', 'Frango desfiado, catupiry, milho', 50.00, 2),
('Quatro Queijos', 'Mozzarella, gorgonzola, parmesão, catupiry', 55.00, 2),
('Vegetariana', 'Molho de tomate, mozzarella, vegetais variados', 42.00, 3),
('Palmito', 'Palmito, mozzarella, tomate, orégano', 48.00, 3),
('Tartufo Nero', 'Molho de tomate, trufa negra, mozzarella, rúcula', 75.00, 4),
('Nutella com Morango', 'Nutella, morango, açúcar de confeiteiro', 60.00, 5);

SELECT * FROM tb_pizzas
WHERE preco > 45.00;

SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome, tb_pizzas.descricao, preco, categoria_id, tb_categoria.nome, tb_categoria.descricao
FROM tb_pizzas
INNER JOIN tb_categoria
ON tb_pizzas.categoria_id = tb_categoria.id;

SELECT tb_pizzas.nome, tb_pizzas.descricao, preco, categoria_id, tb_categoria.nome, tb_categoria.descricao
FROM tb_pizzas
INNER JOIN tb_categoria
ON tb_pizzas.categoria_id = tb_categoria.id
WHERE tb_categoria.nome = "Doce";
