CREATE DATABASE db_quitanda;
-- Cria um banco de dados com nome db_quitanda

CREATE DATABASE db_escola_evelyn;

USE db_quitanda;
-- selecionar o banco de dados db_quitanda para o uso

USE db_escola_evelyn;

-- id = chave primaria => dado unico
-- colunas objetos não podem ter /*%+- ç(caracteres especiais) palavrasReservadas 
CREATE TABLE tb_produtos
( id BIGINT AUTO_INCREMENT,
nome VARCHAR(255)  NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL ,
PRIMARY KEY(id) );

-- inserir um novo registro
INSERT INTO tb_produtos 
(nome, quantidade, datavalidade, preco) VALUES
("banana", 1200, "2025-02-26",10.0);

-- retornar os dados da tabela - asterisco all(tudo) todas as colunas
SELECT * FROM tb_produtos;

-- inserir vários registros ao mesmo tempo
INSERT INTO tb_produtos
(nome, quantidade, datavalidade, preco) VALUES
("Abacate", 400, "2025-02-27", 15.0),
("Goiaba", 550, "2025-02-26", 10.0),
("Melancia",40, "2025-02-28", 25.0);


INSERT INTO tb_produtos
(nome, quantidade, datavalidade, preco) VALUES
("Abacate", 400, "2025-02-27", 15.0),
("Goiaba", 550, "2025-02-26", 10.0),
("Melancia",40, "2025-02-28", 25.0);

-- não funciona assim:
INSERT INTO tb_produtos
(quantidade, nome) VALUES
(50, "abacaxi");

-- precisamos passar o nome pois ele é not null
INSERT INTO tb_produtos
(quantidade) VALUES
(50);

-- formas diferentes de uso do SELECT
SELECT nome FROM tb_produtos;

-- retornar as colunas nome e preço
SELECT nome, preco FROM tb_produtos;

-- retorna o nome e o preço com ALIAS "apelido" para cada coluna ajuda a criar uma visualização mais simpática
SELECT nome AS "Nome do Produto", preco AS "Preço" FROM tb_produtos;

-- retornar apenas uma linha ou as linhas correspondentes a um critério
SELECT * FROM tb_produtos WHERE id = 6;

SELECT * FROM tb_produtos WHERE preco <= 10.0;
SELECT * FROM tb_produtos WHERE preco <= 6.0;

SELECT * FROM tb_produtos WHERE preco <> 10.0;

-- retornar as linhas que atendem os dois critérios o preço e diferente de 40 e quantidade igual a 40
SELECT * FROM tb_produtos WHERE preco <> 10.0 AND quantidade = 40;

SELECT * FROM tb_produtos WHERE preco <> 10.0 OR quantidade = 40;

-- retorna as linha onde a quantidade não é 40
SELECT * FROM tb_produtos WHERE NOT quantidade = 40;

-- ajuste na estrutura 
-- moddificar um campo existente
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

-- adicionar um campo
ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

-- atualiza a informação(dado)
UPDATE tb_produtos SET preco = 2.99;

-- setando configuração -> sem trava de segurança
SET SQL_SAFE_UPDATES = 0;

-- voltando a trava de segurança
SET SQL_SAFE_UPDATES = 1;

-- atualiza a informação(dado) onde o id for 1
UPDATE tb_produtos SET preco = 5.99 WHERE id = 1;


-- delete da tabela tb_produtos onde o id = 2
DELETE FROM tb_produtos WHERE id = 2;

-- requer tirar a trava de segurança pois deleta mais de uma linha caso tenha mais de um item banana
DELETE FROM tb_produtos WHERE nome ="banana";

-- requer tirar a trava de segurança pois deleta mais de uma linha 
-- caso tenha mais de um item com valor nome = goiaba ou abacaxi
DELETE FROM tb_produtos WHERE nome ="Goiaba" OR nome = "abacaxi";

-- apaga a estrutura da tabela tb_produtos
DROP TABLE tb_produtos;

-- apaga a estrutura do banco de dados tb_quitanda;
DROP DATABASE db_quitanda;




 

