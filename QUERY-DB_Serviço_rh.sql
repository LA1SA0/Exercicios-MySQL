USE db_serviçorh;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_contratacao DATE NOT NULL,
    departamento VARCHAR(50) NOT NULL
);

INSERT INTO colaboradores (nome, cargo, salario, data_contratacao, departamento) VALUES
('Ana Souza', 'Analista de RH', 2500.00, '2023-06-10', 'Recursos Humanos'),
('Carlos Pereira', 'Desenvolvedor', 3500.00, '2022-03-15', 'TI'),
('Mariana Lima', 'Assistente Administrativo', 1800.00, '2024-01-20', 'Administração'),
('Rafael Mendes', 'Gerente de Projetos', 5000.00, '2021-09-05', 'Gestão'),
('Fernanda Costa', 'Recepcionista', 1600.00, '2023-11-12', 'Atendimento');

SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 3800.00 WHERE id = 2;
SELECT * FROM colaboradores;