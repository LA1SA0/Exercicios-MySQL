CREATE DATABASE cidade_dos_vegetais;
USE cidade_dos_vegetais;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255) NOT NULL,         
    tipo VARCHAR(255) 
);


CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,     
    nome VARCHAR(100) NOT NULL,            
    preco DECIMAL(10, 2) NOT NULL,         
    estoque INT NOT NULL,                  
    categoria_id INT,                      
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)  
);


INSERT INTO tb_categorias (nome, tipo) 
VALUES 
('Frutas', 'Fresco'),
('Verduras', 'Fresco'),
('Legumes', 'Fresco'),
('Raízes', 'Fresco'),
('Embalados', 'Embalado');

INSERT INTO tb_produtos (nome, preco, estoque, categoria_id) 
VALUES 
('Maçã', 5.99, 100, 1),  
('Alface', 3.50, 80, 2),
('Cenoura', 4.20, 50, 3), 
('Batata-doce', 6.00, 70, 4), 
('Tomate', 8.99, 120, 2), 
('Abacaxi', 10.50, 60, 1), 
('Pepino', 4.80, 90, 3), 
('Cebola', 5.40, 110, 3); 

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE preco > 10;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_produtos.estoque, tb_categorias.nome AS categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_produtos.estoque, tb_categorias.nome AS categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'Legumes';




