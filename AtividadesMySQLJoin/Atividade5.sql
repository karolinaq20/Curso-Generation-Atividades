-- Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- Siga  exatamente esse passo a passo:
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).
-- Popule esta tabela Categoria com até 5 dados.
-- Popule esta tabela Produto com até 8 dados.
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
-- Faça um um select com Inner join entre  tabela categoria e produto.
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (255),
material VARCHAR (255),
filial VARCHAR (255),
PRIMARY KEY (id_categoria)
);
-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (categoria,material,filial)
VALUES
('Hidráulica','Metal','Campinas-SP'),
('Hidráulica','PVC','Campinas-SP'),
('Materiais de Construção','Vidro','São José dos Campos-SP'),
('Materiais de Construção','Alumínio','São José dos Campos-SP'),
('Ferragens','Inox','Itu-SP'),
('Ferragens','Aço zamac','Itu-SP');
-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).
CREATE TABLE tb_produto(
id_produto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255),
codigo BIGINT,
pronta_entrega BOOLEAN,
preco DECIMAL (10,2),
id_categoria INT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id_categoria)
);
-- Popule esta tabela Produto com até 8 dados.
INSERT INTO tb_produto (nome,codigo,pronta_entrega,preco,id_categoria)
VALUES
('Capa para sifão cromado',56677,TRUE,329.90,1),
('Joelho 90º soldável 3/4',22888,FALSE,1.39,2),
('Bloco de vidro 19x19cm',1355082,TRUE,28.90,3),
('Cola spray reposicionável 340g',1559087,TRUE,44.91,4),
('Escada de alumínio articulada 4x3 12 degraus',1482750,FALSE,449.90,4),
('Fechadura interna de inox Luma com roseta escovada Pado',1177893,TRUE,194.90,5),
('Puxador de inox polido Eco Tubular 40x12cm entrefuros 30cm Geris',1510290,FALSE,112.41,6),
('Parafuso atarraxante de inox 4,2x38mm para bucha 7mm Fixtil',900133,TRUE,20.90,6);
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto
WHERE preco > 50;
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto
WHERE preco BETWEEN 3 AND 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_produto
WHERE nome LIKE 'C%';
-- Faça um um select com Inner join entre  tabela categoria e produto.
SELECT * FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_produto.id_categoria;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
SELECT id_produto,nome,codigo,pronta_entrega,preco AS Preço FROM tb_produto
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_produto.id_categoria
WHERE tb_categoria.categoria LIKE '%Hidráulica%';

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;