CREATE DATABASE  db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(255) NOT NULL,         
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,     
    nome VARCHAR(100) NOT NULL,            
    preco DECIMAL(10, 2) NOT NULL,         
    duracao INT NOT NULL,                  
    categoria_id INT,                      
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES 
('Programação', 'Cursos voltados para o desenvolvimento de software'),
('Design', 'Cursos relacionados ao design gráfico e UI/UX'),
('Marketing', 'Cursos de estratégias de marketing digital'),
('Negócios', 'Cursos para empreendedores e gestores'),
('Idiomas', 'Cursos para aprender novos idiomas');

INSERT INTO tb_cursos (nome, preco, duracao, categoria_id) 
VALUES 
('Curso de Java', 100000.00, 40, 1),  
('Curso de Photoshop', 450.00, 30, 2),
('Marketing Digital', 700.00, 50, 3), 
('Gestão de Negócios', 800.00, 60, 4), 
('Curso de Inglês', 300.00, 120, 5), 
('Curso de Python', 900.00, 45, 1), 
('Curso de Design Gráfico', 500.00, 35, 2), 
('Gestão de Projetos', 550.00, 40, 4);

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT tb_cursos.id, tb_cursos.nome, tb_cursos.preco, tb_cursos.duracao, tb_categorias.nome AS categoria FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

SELECT tb_cursos.id, tb_cursos.nome, tb_cursos.preco, tb_cursos.duracao, tb_categorias.nome AS categoria FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'Programação';
