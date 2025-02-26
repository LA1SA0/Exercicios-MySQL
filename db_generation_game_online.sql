CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(500) NOT NULL,
descricao VARCHAR(500) 
);

CREATE TABLE tb_personagens (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
nivel INT NOT NULL,
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
classe_id INT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo e alta resistência.'),
('Mago', 'Domina feitiços poderosos e ataques mágicos.'),
('Arqueiro', 'Habilidoso com arco e flecha, ágil e preciso.'),
('Ladino', 'Mestre em furtividade e ataques rápidos.'),
('Paladino', 'Combina magia sagrada com habilidades defensivas.');

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Arthas', 25, 2500, 1800, 1), 
('Merlin', 30, 3000, 1200, 2),  
('Legolas', 22, 2200, 1500, 3), 
('Rogue', 18, 2000, 1000, 4),   
('Gabriel', 28, 2800, 1700, 5), 
('Cassandra', 20, 1900, 1600, 3), 
('Cedric', 27, 2700, 1900, 1),  
('Ciro', 21, 2300, 1400, 4);    

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_personagens.nivel, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_classes.nome AS classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.nome, tb_personagens.nivel, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_classes.nome AS classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.nome = 'Arqueiro';




