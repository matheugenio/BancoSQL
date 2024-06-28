CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(100) not null,
	tipo varchar(50) not null
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nickname varchar(50) not null,
    nivel int not null,
    datacriacao date not null,
    raca varchar(50) not null,
    classeid BIGINT,
    FOREIGN KEY (classeid) references tb_classes(id)
    
);

INSERT INTO tb_classes (nome, tipo) VALUES 
('Guerreiro', 'Melee'),
('Mago', 'Ranged'),
('Arqueiro', 'Ranged'),
('Paladino', 'Melee'),
('Assassino', 'Stealth');

INSERT INTO tb_personagens (nickname, nivel, datacriacao, raca, classeid) VALUES 
('Thor', 10, '2024-01-01', 'Humano', 1),
('Merlin', 15, '2024-02-01', 'Elfo', 2),
('Legolas', 20, '2024-03-01', 'Elfo', 3),
('Arthur', 25, '2024-04-01', 'Humano', 4),
('Shadow', 30, '2024-05-01', 'Humano', 5),
('Ares', 5, '2024-06-01', 'Anão', 1),
('Gandalf', 12, '2024-07-01', 'Humano', 2),
('Robin', 18, '2024-08-01', 'Elfo', 3);

SELECT nickname, nivel, raca from tb_personagens WHERE nivel > 10;

SELECT nickname, nivel, raca from tb_personagens WHERE nivel BETWEEN 10 AND 20;

SELECT nickname, nivel, raca from tb_personagens WHERE nickname LIKE "%a%";

SELECT nickname, nivel, datacriacao, raca, classeid
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT nickname, nivel, datacriacao, raca, classeid, tb_classes.nome
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.nome= "Mago";







