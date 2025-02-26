CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE  tb_categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(500) NOT NULL,
descricao VARCHAR(500) NOT NULL
);

CREATE TABLE tb_produtos (
id INT AUTO_INCREMENT PRIMARY KEY,   
    nome VARCHAR(500) NOT NULL,         
    descricao VARCHAR(500) NOT NULL,             
    preco DECIMAL(10,2) NOT NULL,        
    estoque INT NOT NULL,                
    categoria_id INT,                    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios e produtos para tratamento de saúde.'),
('Higiene', 'Produtos de higiene pessoal e limpeza.'),
('Dermocosméticos', 'Produtos para cuidados com a pele e estética.'),
('Suplementos', 'Vitaminas e complementos nutricionais.'),
('Primeiros Socorros', 'Itens para emergências e curativos.');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
('Paracetamol 500mg', 'Analgésico para alívio de dores e febre.', 12.50, 50, 1),
('Shampoo Anticaspa', 'Shampoo para tratamento de caspa e coceira.', 25.90, 30, 2),
('Protetor Solar FPS 50', 'Protetor solar para rosto e corpo.', 60.00, 20, 3),
('Vitamina C 3g', 'Suplemento vitamínico para imunidade.', 70.00, 40, 4),
('Curativo Antisséptico', 'Kit de primeiros socorros com curativos.', 9.99, 100, 5),
('Dipirona Sódica 1g', 'Analgésico e antitérmico para dores.', 10.00, 80, 1),
('Creme Hidratante', 'Hidratante facial para pele seca.', 34.90, 25, 3),
('Ômega 3 1000mg', 'Suplemento alimentar rico em ômega 3.', 39.90, 15, 4),
('Escova de Dentes', 'Escova dental de cerdas macias.', 5.50, 90, 2),
('Gaze Estéril', 'Pacote com 10 unidades de gaze para curativos.', 11.50, 70, 5);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.id, tb_produtos.nome, tb_produtos.descricao, tb_produtos.preco, tb_produtos.estoque, tb_categorias.nome AS categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT p.id, p.nome, p.descricao, p.preco, p.estoque, c.nome AS categoria FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = 'Dermocosméticos';


