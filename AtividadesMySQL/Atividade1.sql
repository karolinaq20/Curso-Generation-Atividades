-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 
-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
-- Popule esta tabela com até 5 dados;Faça um select que retorne os funcionaries com o salário maior do que 2000.
-- Faça um select que retorne os funcionaries com o salário menor do que 2000.Ao término atualize um dado desta tabela através de uma query de atualização.
CREATE DATABASE db_RHempresa;
-- 5 atributos relevantes dos funcionaries
CREATE TABLE tb_funcionarios(
id_usuario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255) ,
sobrenome VARCHAR (255),
email VARCHAR (255),
data_inicio DATE,
salario FLOAT NULL,
PRIMARY KEY (id_usuario)
);
-- Popule esta tabela com até 5 dados
INSERT INTO tb_funcionarios(nome,sobrenome,email,data_inicio,salario)
VALUES
('Higor', 'Salazar', 'higor@email.com', '2021-03-20', 1100.0),
('Karolina', 'Gonçalves', 'karolina@email.com', '2021-04-16', 1100.0),
('José', 'Silva', 'josé@email.com', '2020-09-10', 2100.0),
('Marcela', 'Rodrigues', 'marcela@email.com', '2021-03-15', 1500.8),
('Maria', 'Alves', 'maria@email.com', '2020-06-18', 2800.3);
-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
SELECT nome,salario FROM tb_funcionarios WHERE salario > 2000;
-- Faça um select que retorne os funcionaries com o salário menor do que 2000
SELECT nome,salario FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario=1500.0 WHERE id_usuario = 1; -- atualize um dado desta tabela
UPDATE tb_funcionarios SET nome = 'Fábio' WHERE id_usuario = 1;
UPDATE tb_funcionarios SET email='fabio@email.com' WHERE id_usuario = 1;
SELECT * FROM tb_funcionarios