CREATE DATABASE IF NOT EXISTS db_construindo_vidas;
USE db_construindo_vidas;


CREATE TABLE IF NOT EXISTS tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255) NOT NULL,         
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,     
    nome VARCHAR(100) NOT NULL,            
    preco DECIMAL(10, 2) NOT NULL,         
    estoque INT NOT NULL,                  
    categoria_id INT,                      
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES 
('Hidráulica', 'Produtos para instalações hidráulicas'),
('Elétrica', 'Produtos para instalações elétricas'),
('Ferragens', 'Ferragens e ferramentas em geral'),
('Madeira', 'Produtos derivados de madeira'),
('Tintas', 'Tintas e acessórios para pintura');

INSERT INTO tb_produtos (nome, preco, estoque, categoria_id) 
VALUES 
('Tubo PVC', 50.00, 100, 1),  
('Fio Elétrico', 120.00, 200, 2),
('Parafuso', 2.50, 500, 3), 
('Tábua de Madeira', 90.00, 50, 4), 
('Tinta Acrílica', 150.00, 75, 5), 
('Cimento', 35.00, 300, 1), 
('Chave Inglesa', 80.00, 150, 3), 
('Pincel para Pintura', 10.00, 200, 5);

SELECT * FROM tb_produtos WHERE preco > 100;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_produtos.estoque, tb_categorias.nome AS categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_produtos.estoque, tb_categorias.nome AS categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'Hidráulica';
