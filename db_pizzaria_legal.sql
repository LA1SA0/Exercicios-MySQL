CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255) NOT NULL,         
    descricao VARCHAR(300) NOT NULL             
);

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255) NOT NULL,         
    descricao VARCHAR(255) NOT NULL,            
    preco DECIMAL(10,2) NOT NULL,       
    tamanho VARCHAR(255) NOT NULL,       
    categoria_id INT,                    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas clássicas e populares.'),
('Especial', 'Pizzas com ingredientes selecionados e gourmet.'),
('Doce', 'Pizzas doces com sabores variados.'),
('Vegetariana', 'Pizzas sem carne, apenas com ingredientes naturais.'),
('Promoção', 'Pizzas em oferta especial.');

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, categoria_id) VALUES
('Mussarela', 'Queijo mussarela derretido com molho de tomate.', 42.90, 'Média', 1),
('Calabresa', 'Linguiça calabresa fatiada com cebola e orégano.', 45.00, 'Grande', 1),
('Marguerita', 'Molho de tomate, mussarela, manjericão e azeite.', 55.90, 'Grande', 2),
('Portuguesa', 'Presunto, ovos, cebola, azeitona e mussarela.', 50.00, 'Média', 2),
('Chocolate', 'Chocolate ao leite derretido com morangos.', 58.90, 'Grande', 3),
('Brigadeiro', 'Chocolate, granulado e leite condensado.', 49.99, 'Média', 3),
('Vegetariana', 'Tomate seco, rúcula, palmito e azeitonas.', 51.50, 'Grande', 4),
('Queijo Coalho', 'Queijo coalho grelhado com mel.', 47.00, 'Média', 2);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.id, tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.preco, tb_pizzas.tamanho, tb_categorias.nome AS categoria FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.id, tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.preco, tb_pizzas.tamanho, tb_categorias.nome AS categoria FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'Doce';

