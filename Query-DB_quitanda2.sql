CREATE DATABASE db_quitanda;

-- utilizar o database
USE db_quitanda;

-- criar a tabela
CREATE TABLE tb_produtos
( id BIGINT AUTO_INCREMENT,
nome VARCHAR(255)  NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL ,
PRIMARY KEY(id) );

-- inserir os produtos
INSERT INTO tb_produtos
(nome, quantidade, datavalidade, preco) VALUES
("banana", 1200, "2025-02-26",10.0),
("Abacate", 400, "2025-02-27", 15.0),
("Goiaba", 550, "2025-02-26", 10.0),
("Melancia",40, "2025-02-28", 25.0);

-- conferir os produtos na tabela
SELECT * FROM tb_produtos;

-- Ordenar o select em ordem alfabética
SELECT * FROM tb_produtos ORDER BY nome ASC;

-- Ordem alfabética inversa
SELECT * FROM tb_produtos ORDER BY nome DESC;

-- adicionando mais alguns produtos na tabela
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("pêra",500, "2023-12-15", 2.00);

-- conferindo os produtos
SELECT * FROM tb_produtos;

-- criando a nova tabela "Categorias"
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL
);

-- inserindo o primeiro valor na tabela
INSERT INTO tb_categorias(descricao) VALUES ("Frutas");

-- conferindo o valor na tabela
SELECT * FROM tb_categorias;

-- adicionando novos valores
INSERT INTO tb_categorias(descricao) VALUES ("Legumes");
INSERT INTO tb_categorias(descricao) VALUES ("Verduras");
INSERT INTO tb_categorias(descricao) VALUES ("Cereais");
INSERT INTO tb_categorias(descricao) VALUES ("Hortaliças");
INSERT INTO tb_categorias(descricao) VALUES ("Temperos");

SELECT * FROM tb_categorias ORDER BY descricao ASC;

-- pesquisa por campo de texto com o nome completo
SELECT * FROM tb_categorias WHERE descricao = "Cereais";

-- pesquisa por texto com pedaços de uma palavra => Abaixo, todo mundo que comece com "Cer"
SELECT * FROM tb_categorias WHERE descricao LIKE "Cer%";

-- pesquisa por texto com pedaços de uma palavra => Abaixo, todo mundo que termine com "s"
SELECT * FROM tb_categorias WHERE descricao LIKE "%s";

-- pesquisa por texto com pedaços de uma palavra => Abaixo, todo mundo que tenha "a" em qlquer local da palavra
SELECT * FROM tb_categorias WHERE descricao LIKE "%a%";