USE db_ecommerce;

CREATE TABLE tb_produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
categoria VARCHAR(50) NOT NULL,
preco DECIMAL (10,2),
estoque INT NOT NULL
);

INSERT INTO tb_produtos (nome, categoria, preco, estoque) VALUES
('Ração Premium', 'Alimentação', 89.90, 50),
('Brinquedo de Borracha', 'Brinquedos', 25.00, 30),
('Arranhador para Gatos', 'Acessórios', 120.00, 15),
('Shampoo para Pets', 'Higiene', 35.50, 40),
('Coleira Ajustável', 'Acessórios', 45.00, 25),
('Casinha Luxo para Cães', 'Acessórios', 750.00, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 800.00 WHERE id = 16;

SELECT * FROM tb_produtos;