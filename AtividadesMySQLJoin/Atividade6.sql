-- Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
-- O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
-- siga  exatamente esse passo a passo:
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
-- Popule esta tabela Categoria com até 5 dados.
-- Popule esta tabela Produto com até 8 dados.
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
-- Faça um select  utilizando LIKE buscando os Produtos com a letra J.
-- Faça um um select com Inner join entre  tabela categoria e produto.
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (255),
formato VARCHAR(255),
PRIMARY KEY (id_categoria)
);
-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (categoria,formato)
VALUES
('Tecnologia','Presencial'),
('Tecnologia','EAD'),
('Idiomas','Presencial'),
('Idiomas','EAD'),
('Beleza e Estética','Presencial'),
('Beleza e Estética','EAD');
-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
CREATE TABLE tb_produto(
id_produto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255),
duracao VARCHAR(255),
avaliacao VARCHAR(255), 
preco DECIMAL (10,2),
id_categoria INT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id_categoria)
);
-- Popule esta tabela Produto com até 8 dados.
INSERT INTO tb_produto (nome,duracao,avaliacao,preco,id_categoria)
VALUES
('Java Completo Programação Orientada a Objetos','50h 5m','4,8',22.90,2),
('Java para WEB Formação colmpleta','54h 36m','5,0',99.90,1),
('Java SE-JDBC','4h 38m','5,0',159.90,2),
('Inglês Completo','10h 49m','5,0',22.90,4),
('Japonês do Básico ao Intermediário','3h 43m','5,0',25.99,4),
('Espanhol para Iniciantes','3h 26m','4,8',27.90,4),
('Nutrição Estética','2h 59m','4,5',204.98,5),
('Tratamento da Celulite','1h 25m','5,0',299.97,6);
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto
WHERE preco > 50;
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto
WHERE preco BETWEEN 3 AND 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra J.
SELECT * FROM tb_produto
WHERE nome LIKE 'J%';
-- Faça um um select com Inner join entre  tabela categoria e produto.
SELECT * FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_produto.id_categoria;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
SELECT * FROM tb_produto
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_produto.id_categoria
WHERE tb_produto.nome LIKE '%Java%';

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;