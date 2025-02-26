USE db_escola;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,   
    nome VARCHAR(255) NOT NULL,         
    idade INT NOT NULL,                  
    turma VARCHAR(10) NOT NULL,          
    nota DECIMAL(4,2) NOT NULL           
);

INSERT INTO tb_estudantes (nome, idade, turma, nota) VALUES
('Ana Souza', 15, '3A', 8.5),
('Carlos Pereira', 16, '3B', 6.0),
('Mariana Lima', 14, '2A', 9.2),
('Rafael Mendes', 15, '3A', 5.8),
('Fernanda Costa', 17, '3C', 7.5),
('Lucas Oliveira', 14, '2B', 4.0),
('Beatriz Santos', 16, '3B', 8.0),
('João Ferreira', 15, '3C', 6.9);

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.8 WHERE id = 2;

SELECT * FROM tb_estudantes;

