/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos alunos deste registro dessa escola. 
*Crie uma tabela alunos/a/e e utilizando a habilidade de abstração e determine 5 atributos relevantes dos alunos/a/e para se trabalhar com o serviço dessa escola.
*Popule esta tabela com até 8 dados;
*Faça um select que retorne o/as alunos/a/e com a nota maior do que 7.
*Faça um select que retorne o/as alunos/a/e com a nota menor do que 7.
*Ao término atualize um dado desta tabela através de uma query de atualização.*/
CREATE DATABASE db_escola;
-- Crie uma tabela alunos/a/e 
CREATE TABLE tb_alunos (
id_alunos INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255),
sobrenome VARCHAR (255),
turma VARCHAR (255),
ensino VARCHAR (255),
nota FLOAT NULL,
PRIMARY KEY (id_alunos)
);
-- Popule esta tabela com até 8 dados;
INSERT INTO tb_alunos (nome,sobrenome,turma,ensino,nota)
VALUES
('Higor', 'Salazar', 'A', 'Fundamental', 5.5),
('Karolina', 'Gonçalves', 'B', 'Fundamental', 10),
('José', 'Silva', 'D', 'Fundamental', 6.6),
('Marcela', 'Rodrigues', 'F', 'Fundamental', 7.7),
('Maria', 'Alves', 'G', 'Médio', 4.8),
('Mariana', 'Sousa', 'A', 'Médio', 9.5),
('Larissa', 'Barbosa', 'E', 'Médio', 8.7),
('Geovanna', 'Batista', 'D', 'Médio', 7.3);
-- Faça um select que retorne o/as alunos/a/e com a nota maior do que 7.
SELECT nome,sobrenome,turma,nota FROM tb_alunos WHERE nota > 7;

-- Faça um select que retorne o/as alunos/a/e com a nota menor do que 7.
SELECT nome,sobrenome,turma,nota FROM tb_alunos WHERE nota < 7;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
UPDATE tb_alunos SET nota = 5 WHERE id_alunos = 5;
SELECT * FROM tb_alunos