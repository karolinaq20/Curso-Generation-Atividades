-- Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa. 
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- siga  exatamente esse passo a passo:
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela).
-- Popule esta tabela Categoria com até 5 dados.
-- Popule esta tabela Produto com até 8 dados.
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.
-- Faça um um select com Inner join entre  tabela categoria e produto.
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
-- Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa. 
CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (255),
faixa_etaria VARCHAR(255),
PRIMARY KEY (id_categoria)
);
-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela).
CREATE TABLE tb_produtos(
id_produtos INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255),
descricao VARCHAR (255),
marca VARCHAR(255),
preco DECIMAL (10,2),
id_categoria INT NOT NULL,
PRIMARY KEY(id_produtos),
FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id_categoria)
);
-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria(categoria,faixa_etaria)
VALUES
('Medicamentos','Adulto'),
('Medicamentos','Infantil'),
('Cosméticos','Adulto'),
('Cosméticos','Infantil'),
('Nutrição','Adulto'),
('Nutrição','Infatil');
-- Popule esta tabela Produto com até 8 dados.
INSERT INTO tb_produtos (nome,descricao,marca,preco,id_categoria)
VALUES
('Vitamina D Sany D 50.000UI',' 8 Comprimidos','Ache',80.02,1),
('Antialérgico Allegra Pediátrico','6mg Sanofi 150ml','Sonofi aventis',75.17,2),
('Manteiga de Cacau Laby Luxo','3,3g','Ever Care',3.00,3),
('Sabonete Líquido Actine Pele','400ml','Darrow Dermocosméticos',74.90,3),
('Batom Líquido Vult Matte','007 4g','Vult',23.99,3),
('Batom Vult','02 Cremoso','Vult',16.99,3),
('Suplemento Nutricional Glucerna','Pó Sabor Baunilha 400g','Abbott',80.49,6),
('Ampola Pantene Hidratação','Shot Potencializador 15ml','Pantene',3.00,5);
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produtos
WHERE preco > 50;
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produtos
WHERE preco BETWEEN 3 AND 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.
SELECT * FROM tb_produtos
WHERE nome LIKE 'B%';
-- Faça um um select com Inner join entre  tabela categoria e produto.
SELECT * FROM tb_produtos 
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_produtos.id_categoria;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
SELECT id_produtos,nome,descricao,marca,preco,categoria,faixa_etaria FROM tb_produtos
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_produtos.id_categoria
WHERE tb_categoria.categoria LIKE '%Cosméticos%';

SELECT * FROM tb_categoria;
SELECT * FROM tb_produtos;